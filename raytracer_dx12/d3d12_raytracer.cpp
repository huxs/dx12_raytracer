#include "stdafx.h"
#include "d3d12_raytracer.h"
#include "d3d12_device.h"
#include "d3d12_util.cpp"


D3D12Raytracer::D3D12Raytracer(D3D12Device* device)
	: m_device(device)
{
	// Create raytracing device
	// Query for raytracing command list
	ThrowIfFailed(D3D12CreateRaytracingFallbackDevice(device->getDevice(), CreateRaytracingFallbackDeviceFlags::None, 0, IID_PPV_ARGS(&m_raytracingDevice)));
	m_raytracingDevice->QueryRaytracingCommandList(device->getCommandList(), IID_PPV_ARGS(&m_raytracingCommandList));

	// Global root signature
	// UAV (0) + SRV(0)
	{
		CD3DX12_DESCRIPTOR_RANGE UAVDescriptor;
		UAVDescriptor.Init(D3D12_DESCRIPTOR_RANGE_TYPE_UAV, 1, 0);
		CD3DX12_ROOT_PARAMETER rootParameters[2];
		rootParameters[0].InitAsDescriptorTable(1, &UAVDescriptor);
		rootParameters[1].InitAsShaderResourceView(0);
		CD3DX12_ROOT_SIGNATURE_DESC globalRootSignatureDesc(ARRAYSIZE(rootParameters), rootParameters);
		Microsoft::WRL::ComPtr<ID3DBlob> blob;
		Microsoft::WRL::ComPtr<ID3DBlob> error;
		ThrowIfFailed(m_raytracingDevice->D3D12SerializeRootSignature(&globalRootSignatureDesc, D3D_ROOT_SIGNATURE_VERSION_1, &blob, &error), error ? (wchar_t*)error->GetBufferPointer() : nullptr);
		ThrowIfFailed(m_raytracingDevice->CreateRootSignature(1, blob->GetBufferPointer(), blob->GetBufferSize(), IID_PPV_ARGS(&m_globalRootSignature)));
	}

	// Create descriptor heap
	D3D12_DESCRIPTOR_HEAP_DESC descriptorHeapDesc = {};
	descriptorHeapDesc.NumDescriptors = 10;
	descriptorHeapDesc.Type = D3D12_DESCRIPTOR_HEAP_TYPE_CBV_SRV_UAV;
	descriptorHeapDesc.Flags = D3D12_DESCRIPTOR_HEAP_FLAG_SHADER_VISIBLE;
	descriptorHeapDesc.NodeMask = 0;
	m_descriptorHeap.init(device, descriptorHeapDesc);

	// Create the output resource. The dimensions and format should match the swap-chain.
	D3D12_RESOURCE_DESC uav_desc = CD3DX12_RESOURCE_DESC::Tex2D(device->getBackbufferFormat(), device->getWidth(), device->getHeight(), 1, 1, 1, 0, D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS);
	D3D12_HEAP_PROPERTIES default_heap_properties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_DEFAULT);
	ThrowIfFailed(device->getDevice()->CreateCommittedResource(&default_heap_properties, D3D12_HEAP_FLAG_NONE, &uav_desc, D3D12_RESOURCE_STATE_UNORDERED_ACCESS, nullptr, IID_PPV_ARGS(&m_raytracingOutput)));
	NAME_D3D12_OBJECT(m_raytracingOutput);

	// Get GPU descriptor
	D3D12_CPU_DESCRIPTOR_HANDLE uavCpuDescriptor;
	int uavDescriptorHeapIndex = m_descriptorHeap.allocateCPU(&uavCpuDescriptor);
	D3D12_UNORDERED_ACCESS_VIEW_DESC UAVDesc = {};
	UAVDesc.ViewDimension = D3D12_UAV_DIMENSION_TEXTURE2D;
	device->getDevice()->CreateUnorderedAccessView(m_raytracingOutput.Get(), nullptr, &UAVDesc, uavCpuDescriptor);
	m_raytracingOutputResourceUAVGpuDescriptor = m_descriptorHeap.allocateGPU(uavDescriptorHeapIndex);

	create_pipeline();
	create_acceleration_structure();
	create_shader_table();
}

D3D12Raytracer::~D3D12Raytracer()
{
}

static const wchar_t* MyHitGroup = L"MyHitGroup";
static const wchar_t* c_raygenShaderName = L"raygen";
static const wchar_t* c_closestHitShaderName = L"rayhit";
static const wchar_t* c_missShaderName = L"raymiss";

void D3D12Raytracer::create_pipeline()
{
	// Load dxil
	D3D12_SHADER_BYTECODE shader_bytecode = {};
	File file = ReadEntireFile("Raytracing.hlsl.dxil");
	shader_bytecode.pShaderBytecode = file.pData;
	shader_bytecode.BytecodeLength = file.size;

	// Describe entry points
	CD3D12_STATE_OBJECT_DESC dxrPipeline{ D3D12_STATE_OBJECT_TYPE_RAYTRACING_PIPELINE };
	auto lib = dxrPipeline.CreateSubobject<CD3D12_DXIL_LIBRARY_SUBOBJECT>();
	lib->SetDXILLibrary(&shader_bytecode);
	lib->DefineExport(c_raygenShaderName);
	lib->DefineExport(c_closestHitShaderName);
	lib->DefineExport(c_missShaderName);

	// Create hit group
	auto hitGroup = dxrPipeline.CreateSubobject<CD3D12_HIT_GROUP_SUBOBJECT>();
	hitGroup->SetClosestHitShaderImport(c_closestHitShaderName);
	hitGroup->SetHitGroupExport(MyHitGroup);

	auto shaderConfig = dxrPipeline.CreateSubobject<CD3D12_RAYTRACING_SHADER_CONFIG_SUBOBJECT>();
	shaderConfig->Config(4, 8);

	auto shaderConfigAssociation = dxrPipeline.CreateSubobject<CD3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION_SUBOBJECT>();
	shaderConfigAssociation->SetSubobjectToAssociate(*shaderConfig);
	shaderConfigAssociation->AddExport(c_raygenShaderName);
	shaderConfigAssociation->AddExport(c_missShaderName);
	shaderConfigAssociation->AddExport(MyHitGroup);

	//

	auto globalRootSignature = dxrPipeline.CreateSubobject<CD3D12_ROOT_SIGNATURE_SUBOBJECT>();
	globalRootSignature->SetRootSignature(m_globalRootSignature.Get());

	auto pipelineConfig = dxrPipeline.CreateSubobject<CD3D12_RAYTRACING_PIPELINE_CONFIG_SUBOBJECT>();
	pipelineConfig->Config(2);

#if _DEBUG
	PrintStateObjectDesc(dxrPipeline);
#endif

	ThrowIfFailed(m_raytracingDevice->CreateStateObject(dxrPipeline, IID_PPV_ARGS(&m_stateObject)));
}


void D3D12Raytracer::create_acceleration_structure()
{
	m_device->getCommandList()->Reset(m_device->getCommandAllocator(), nullptr);

	// AllocateUploadBuffer
	{
		float arrVertices[] =
		{
			0,    -0.5f, 1,
			-0.5f,  0.5f, 1,
			0.5,	0.5,  1
		};

		D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_UPLOAD);
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(sizeof(arrVertices));
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&m_vertexBuffer)));
		NAME_D3D12_OBJECT(m_vertexBuffer);
		void* pData = nullptr;
		m_vertexBuffer->Map(0, nullptr, &pData);
		memcpy(pData, arrVertices, sizeof(arrVertices));
		m_vertexBuffer->Unmap(0, nullptr);
	}

	// AllocateUploadBuffer
	{
		uint16_t arrIndices[] = { 2, 1, 0 };
		D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_UPLOAD);
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(sizeof(arrIndices));
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&m_indexBuffer)));
		NAME_D3D12_OBJECT(m_vertexBuffer);
		void* pData = nullptr;
		m_vertexBuffer->Map(0, nullptr, &pData);
		memcpy(pData, arrIndices, sizeof(arrIndices));
		m_vertexBuffer->Unmap(0, nullptr);
	}

	D3D12_RAYTRACING_GEOMETRY_DESC geometryDesc = {};
	geometryDesc.Type = D3D12_RAYTRACING_GEOMETRY_TYPE_TRIANGLES;
	geometryDesc.Triangles.IndexBuffer = m_indexBuffer->GetGPUVirtualAddress();
	geometryDesc.Triangles.IndexCount = 3;
	geometryDesc.Triangles.IndexFormat = DXGI_FORMAT_R16_UINT;
	geometryDesc.Triangles.Transform = 0;
	geometryDesc.Triangles.VertexFormat = DXGI_FORMAT_R32G32B32_FLOAT;
	geometryDesc.Triangles.VertexCount = 3;
	geometryDesc.Triangles.VertexBuffer.StartAddress = m_vertexBuffer->GetGPUVirtualAddress();
	geometryDesc.Triangles.VertexBuffer.StrideInBytes = sizeof(float) * 3;

	// Get required sizes for an acceleration structure.
	D3D12_GET_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO_DESC prebuildInfoDesc{};
	prebuildInfoDesc.DescsLayout = D3D12_ELEMENTS_LAYOUT_ARRAY;
	prebuildInfoDesc.NumDescs = 1;

	D3D12_RESOURCE_STATES initialResourceState = m_raytracingDevice->GetAccelerationStructureResourceState();

	D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO topLevelPrebuildInfo{};
	prebuildInfoDesc.Type = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL;
	prebuildInfoDesc.pGeometryDescs = nullptr;
	m_raytracingDevice->GetRaytracingAccelerationStructurePrebuildInfo(&prebuildInfoDesc, &topLevelPrebuildInfo);
	ThrowIfFalse(topLevelPrebuildInfo.ResultDataMaxSizeInBytes > 0);

	D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_DEFAULT);

	{
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(topLevelPrebuildInfo.ResultDataMaxSizeInBytes, D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, initialResourceState, nullptr, IID_PPV_ARGS(&m_topLevelAccelerationStructure)));
	}

	D3D12_RAYTRACING_ACCELERATION_STRUCTURE_PREBUILD_INFO bottomLevelPrebuildInfo{};
	prebuildInfoDesc.Type = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL;
	prebuildInfoDesc.pGeometryDescs = &geometryDesc;
	m_raytracingDevice->GetRaytracingAccelerationStructurePrebuildInfo(&prebuildInfoDesc, &bottomLevelPrebuildInfo);
	ThrowIfFalse(bottomLevelPrebuildInfo.ResultDataMaxSizeInBytes > 0);

	{
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(bottomLevelPrebuildInfo.ResultDataMaxSizeInBytes, D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, initialResourceState, nullptr, IID_PPV_ARGS(&m_bottomLevelAccelerationStructure)));
	}

	Microsoft::WRL::ComPtr<ID3D12Resource> scratchResource;
	{
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(max(topLevelPrebuildInfo.ScratchDataSizeInBytes, bottomLevelPrebuildInfo.ScratchDataSizeInBytes), D3D12_RESOURCE_FLAG_ALLOW_UNORDERED_ACCESS);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_UNORDERED_ACCESS, nullptr, IID_PPV_ARGS(&scratchResource)));
	}

	D3D12_RAYTRACING_FALLBACK_INSTANCE_DESC instanceDesc = {};
	instanceDesc.Transform[0] = instanceDesc.Transform[5] = instanceDesc.Transform[10] = 1;
	instanceDesc.InstanceMask = 1;
	instanceDesc.AccelerationStructure = createWrappedPointer(m_bottomLevelAccelerationStructure.Get(), (UINT)(bottomLevelPrebuildInfo.ResultDataMaxSizeInBytes) / sizeof(UINT));

	Microsoft::WRL::ComPtr<ID3D12Resource> instanceDescs;

	// AllocateUploadBuffer
	{
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(sizeof(instanceDesc));
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&instanceDescs)));
		NAME_D3D12_OBJECT(m_vertexBuffer);
		void* pData = nullptr;
		m_vertexBuffer->Map(0, nullptr, &pData);
		memcpy(pData, &instanceDesc, sizeof(instanceDesc));
		m_vertexBuffer->Unmap(0, nullptr);
	}

	m_topLevelAccelerationStructurePointer = createWrappedPointer(m_topLevelAccelerationStructure.Get(), (UINT)(topLevelPrebuildInfo.ResultDataMaxSizeInBytes) / sizeof(UINT));

	// Bottom Level Acceleration Structure desc
	D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC bottomLevelBuildDesc{};
	{
		bottomLevelBuildDesc.DescsLayout = D3D12_ELEMENTS_LAYOUT_ARRAY;
		bottomLevelBuildDesc.Flags = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_BUILD_FLAG_PREFER_FAST_TRACE;
		bottomLevelBuildDesc.ScratchAccelerationStructureData = { scratchResource->GetGPUVirtualAddress(), scratchResource->GetDesc().Width };
		bottomLevelBuildDesc.Type = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_BOTTOM_LEVEL;
		bottomLevelBuildDesc.DestAccelerationStructureData = { m_bottomLevelAccelerationStructure->GetGPUVirtualAddress(), bottomLevelPrebuildInfo.ResultDataMaxSizeInBytes };
		bottomLevelBuildDesc.NumDescs = 1;
		bottomLevelBuildDesc.pGeometryDescs = &geometryDesc;
	}

	// Top Level Acceleration Structure desc
	D3D12_BUILD_RAYTRACING_ACCELERATION_STRUCTURE_DESC topLevelBuildDesc = bottomLevelBuildDesc;
	{
		topLevelBuildDesc.Type = D3D12_RAYTRACING_ACCELERATION_STRUCTURE_TYPE_TOP_LEVEL;
		topLevelBuildDesc.DestAccelerationStructureData = { m_topLevelAccelerationStructure->GetGPUVirtualAddress(), topLevelPrebuildInfo.ResultDataMaxSizeInBytes };
		topLevelBuildDesc.NumDescs = 1;
		topLevelBuildDesc.pGeometryDescs = nullptr;
		topLevelBuildDesc.InstanceDescs = instanceDescs->GetGPUVirtualAddress();
		topLevelBuildDesc.ScratchAccelerationStructureData = { scratchResource->GetGPUVirtualAddress(), scratchResource->GetDesc().Width };
	}

	// Set the descriptor heaps to be used during acceleration structure build for the Fallback Layer.
	ID3D12DescriptorHeap *pDescriptorHeaps[] = { m_descriptorHeap.m_descriptorHeap.Get() };
	m_raytracingCommandList->SetDescriptorHeaps(ARRAYSIZE(pDescriptorHeaps), pDescriptorHeaps);
	m_raytracingCommandList->BuildRaytracingAccelerationStructure(&bottomLevelBuildDesc);
	m_device->getCommandList()->ResourceBarrier(1, &CD3DX12_RESOURCE_BARRIER::UAV(m_bottomLevelAccelerationStructure.Get()));
	m_raytracingCommandList->BuildRaytracingAccelerationStructure(&topLevelBuildDesc);

	// Kick off AS construction
	m_device->executeCommandList();

	// Wait for GPU to finish as the locally created temporary GPU resources will get released once we go out of scope
	m_device->waitForGpu();
}


inline UINT Align(UINT size, UINT alignment)
{
	return (size + (alignment - 1)) & ~(alignment - 1);
}

void D3D12Raytracer::create_shader_table()
{
	void* rayGenShaderIdentifier = m_stateObject->GetShaderIdentifier(L"raygen");	
	void* rayMissShaderIdentifier = m_stateObject->GetShaderIdentifier(L"raymiss");
	void* rayHitGroupIdentifier = m_stateObject->GetShaderIdentifier(MyHitGroup);
	UINT shaderIdentifierSize = m_raytracingDevice->GetShaderIdentifierSize();

	// Ray gen table
	{
		D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_UPLOAD);
		UINT size = Align(shaderIdentifierSize, D3D12_RAYTRACING_SHADER_RECORD_BYTE_ALIGNMENT);
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(size);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&m_rayGenShaderTable)));
		uint8_t *pMappedData;
		m_rayGenShaderTable->Map(0, nullptr, reinterpret_cast<void**>(&pMappedData));
		memcpy(pMappedData, rayGenShaderIdentifier, shaderIdentifierSize);
		m_rayGenShaderTable->Unmap(0, nullptr);
	}

	// hit group table
	{
		D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_UPLOAD);
		UINT size = Align(shaderIdentifierSize, D3D12_RAYTRACING_SHADER_RECORD_BYTE_ALIGNMENT);
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(size);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&m_hitGroupShaderTable)));
		uint8_t *pMappedData;
		m_rayGenShaderTable->Map(0, nullptr, reinterpret_cast<void**>(&pMappedData));
		memcpy(pMappedData, rayHitGroupIdentifier, shaderIdentifierSize);
		m_rayGenShaderTable->Unmap(0, nullptr);
	}

	// Ray miss table
	{
		D3D12_HEAP_PROPERTIES uploadHeapProperties = CD3DX12_HEAP_PROPERTIES(D3D12_HEAP_TYPE_UPLOAD);
		UINT size = Align(shaderIdentifierSize, D3D12_RAYTRACING_SHADER_RECORD_BYTE_ALIGNMENT);
		D3D12_RESOURCE_DESC bufferDesc = CD3DX12_RESOURCE_DESC::Buffer(size);
		ThrowIfFailed(m_device->getDevice()->CreateCommittedResource(&uploadHeapProperties, D3D12_HEAP_FLAG_NONE, &bufferDesc, D3D12_RESOURCE_STATE_GENERIC_READ, nullptr, IID_PPV_ARGS(&m_missShaderTable)));
		uint8_t *pMappedData;
		m_rayGenShaderTable->Map(0, nullptr, reinterpret_cast<void**>(&pMappedData));
		memcpy(pMappedData, rayMissShaderIdentifier, shaderIdentifierSize);
		m_rayGenShaderTable->Unmap(0, nullptr);
	}
}

void D3D12Raytracer::doRaytracing()
{
	m_device->getCommandList()->SetComputeRootSignature(m_globalRootSignature.Get());

	m_raytracingCommandList->SetDescriptorHeaps(1, m_descriptorHeap.m_descriptorHeap.GetAddressOf());
	m_device->getCommandList()->SetComputeRootDescriptorTable(0, m_raytracingOutputResourceUAVGpuDescriptor);
	m_raytracingCommandList->SetTopLevelAccelerationStructure(1, m_topLevelAccelerationStructurePointer);

	D3D12_FALLBACK_DISPATCH_RAYS_DESC dispatchDesc{};
	dispatchDesc.Width = m_device->getWidth();
	dispatchDesc.Height = m_device->getHeight();
	dispatchDesc.RayGenerationShaderRecord.StartAddress = m_rayGenShaderTable->GetGPUVirtualAddress();
	dispatchDesc.RayGenerationShaderRecord.SizeInBytes = m_rayGenShaderTable->GetDesc().Width;
	dispatchDesc.HitGroupTable.StartAddress = m_hitGroupShaderTable->GetGPUVirtualAddress();
	dispatchDesc.HitGroupTable.SizeInBytes = m_hitGroupShaderTable->GetDesc().Width;
	dispatchDesc.HitGroupTable.StrideInBytes = dispatchDesc.HitGroupTable.SizeInBytes;
	dispatchDesc.MissShaderTable.StartAddress = m_missShaderTable->GetGPUVirtualAddress();
	dispatchDesc.MissShaderTable.SizeInBytes = m_missShaderTable->GetDesc().Width;
	dispatchDesc.MissShaderTable.StrideInBytes = dispatchDesc.MissShaderTable.SizeInBytes;

	m_raytracingCommandList->DispatchRays(m_stateObject.Get(), &dispatchDesc);
}

// Copy raytracing output to the rendertarget.
void D3D12Raytracer::copyRaytracingOutputToBackbuffer()
{
	auto commandList = m_device->getCommandList();
	auto renderTarget = m_device->getRenderTarget();

	D3D12_RESOURCE_BARRIER preCopyBarriers[2];
	preCopyBarriers[0] = CD3DX12_RESOURCE_BARRIER::Transition(renderTarget, D3D12_RESOURCE_STATE_RENDER_TARGET, D3D12_RESOURCE_STATE_COPY_DEST);
	preCopyBarriers[1] = CD3DX12_RESOURCE_BARRIER::Transition(m_raytracingOutput.Get(), D3D12_RESOURCE_STATE_UNORDERED_ACCESS, D3D12_RESOURCE_STATE_COPY_SOURCE);
	commandList->ResourceBarrier(ARRAYSIZE(preCopyBarriers), preCopyBarriers);

	commandList->CopyResource(renderTarget, m_raytracingOutput.Get());

	D3D12_RESOURCE_BARRIER postCopyBarriers[2];
	postCopyBarriers[0] = CD3DX12_RESOURCE_BARRIER::Transition(renderTarget, D3D12_RESOURCE_STATE_COPY_DEST, D3D12_RESOURCE_STATE_PRESENT);
	postCopyBarriers[1] = CD3DX12_RESOURCE_BARRIER::Transition(m_raytracingOutput.Get(), D3D12_RESOURCE_STATE_COPY_SOURCE, D3D12_RESOURCE_STATE_UNORDERED_ACCESS);

	commandList->ResourceBarrier(ARRAYSIZE(postCopyBarriers), postCopyBarriers);
}


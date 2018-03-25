#include "stdafx.h"
#include "d3d12_raytracer.h"
#include "d3d12_device.h"



D3D12Raytracer::D3D12Raytracer(D3D12Device* device)
{
	ThrowIfFailed(D3D12CreateRaytracingFallbackDevice(device->getDevice(), CreateRaytracingFallbackDeviceFlags::None, 0, IID_PPV_ARGS(&m_raytracingDevice)));
	m_raytracingDevice->QueryRaytracingCommandList(device->getCommandList(), IID_PPV_ARGS(&m_raytracingCommandList));

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
		ThrowIfFailed(device->getDevice()->CreateRootSignature(1, blob->GetBufferPointer(), blob->GetBufferSize(), IID_PPV_ARGS(&m_globalRootSignature)));
	}

	createPipelinestate();
}

D3D12Raytracer::~D3D12Raytracer()
{
}

#include <sstream>
#include <iomanip>

// Pretty-print a state object tree
inline void PrintStateObjectDesc(const D3D12_STATE_OBJECT_DESC* desc)
{
	std::wstringstream wstr;
	wstr << L"D3D12 State Object 0x" << static_cast<const void*>(desc) << L": ";
	if (desc->Type == D3D12_STATE_OBJECT_TYPE_COLLECTION) wstr << L"Collection\n";
	if (desc->Type == D3D12_STATE_OBJECT_TYPE_RAYTRACING_PIPELINE) wstr << L"Raytracing Pipeline\n";

	auto ExportTree = [](UINT depth, UINT numExports, const D3D12_EXPORT_DESC* exports)
	{
		std::wostringstream woss;
		for (UINT i = 0; i < numExports; i++)
		{
			if (depth > 0)
			{
				for (UINT j = 0; j < 2 * depth - 1; j++) woss << L" ";
				woss << (i == numExports - 1 ? L"\xC0" : L"\xC3");
			}
			woss << L"[" << i << L"]: ";
			if (exports[i].ExportToRename) woss << exports[i].ExportToRename << L" --> ";
			woss << exports[i].Name << L"\n";
		}
		return woss.str();
	};

	for (UINT i = 0; i < desc->NumSubobjects; i++)
	{
		wstr << L"[" << i << L"]: ";
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_FLAGS)
		{
			wstr << L"Flags (not yet defined)\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_ROOT_SIGNATURE)
		{
			wstr << L"Root Signature 0x" << desc->pSubobjects[i].pDesc << L"\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_LOCAL_ROOT_SIGNATURE)
		{
			wstr << L"Local Root Signature 0x" << desc->pSubobjects[i].pDesc << "\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_NODE_MASK)
		{
			wstr << L"Node Mask: 0x" << std::hex << std::setfill(L'0') << std::setw(8) << *static_cast<const UINT*>(desc->pSubobjects[i].pDesc) << std::setw(0) << std::dec << "\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_CACHED_STATE_OBJECT)
		{
			wstr << L"Cached State Object (not yet defined)\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_DXIL_LIBRARY)
		{
			wstr << L"DXIL Library 0x";
			auto lib = static_cast<const D3D12_DXIL_LIBRARY_DESC*>(desc->pSubobjects[i].pDesc);
			wstr << lib->DXILLibrary.pShaderBytecode << L", " << lib->DXILLibrary.BytecodeLength << L" bytes\n";
			wstr << ExportTree(1, lib->NumExports, lib->pExports);
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_EXISTING_COLLECTION)
		{
			wstr << L"Existing Library 0x";
			auto collection = static_cast<const D3D12_EXISTING_COLLECTION_DESC*>(desc->pSubobjects[i].pDesc);
			wstr << collection->pExistingCollection << L"\n";
			wstr << ExportTree(1, collection->NumExports, collection->pExports);
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_SUBOBJECT_TO_EXPORTS_ASSOCIATION)
		{
			wstr << L"Subobject to Exports Association (Subobject [";
			auto association = static_cast<const D3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION*>(desc->pSubobjects[i].pDesc);
			UINT index = static_cast<UINT>(association->pSubobjectToAssociate - desc->pSubobjects);
			wstr << index << L"])\n";
			for (UINT j = 0; j < association->NumExports; j++) wstr << (j == association->NumExports - 1 ? L" \xC0" : L" \xC3") << L"[" << j << L"]: " << association->pExports[j] << L"\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_DXIL_SUBOBJECT_TO_EXPORTS_ASSOCIATION)
		{
			wstr << L"DXIL Subobjects to Exports Association (";
			auto association = static_cast<const D3D12_DXIL_SUBOBJECT_TO_EXPORTS_ASSOCIATION*>(desc->pSubobjects[i].pDesc);
			wstr << association->SubobjectToAssociate << L")\n";
			for (UINT j = 0; j < association->NumExports; j++) wstr << (j == association->NumExports - 1 ? L" \xC0" : L" \xC3") << L"[" << j << L"]: " << association->pExports[j] << L"\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_SHADER_CONFIG)
		{
			wstr << L"Raytracing Shader Config\n";
			auto config = static_cast<const D3D12_RAYTRACING_SHADER_CONFIG*>(desc->pSubobjects[i].pDesc);
			wstr << L" \xC3" << L"[0]: Max Payload Size: " << config->MaxPayloadSizeInBytes << L" bytes\n";
			wstr << L" \xC0" << L"[1]: Max Attribute Size: " << config->MaxAttributeSizeInBytes << L" bytes\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_PIPELINE_CONFIG)
		{
			wstr << L"Raytracing Pipeline Config\n";
			auto config = static_cast<const D3D12_RAYTRACING_PIPELINE_CONFIG*>(desc->pSubobjects[i].pDesc);
			wstr << L" \xC0" << L"[0]: Max Recursion Depth: " << config->MaxTraceRecursionDepth << L"\n";
		}
		if (desc->pSubobjects[i].Type == D3D12_STATE_SUBOBJECT_TYPE_HIT_GROUP)
		{
			wstr << L"Hit Group (";
			auto hitGroup = static_cast<const D3D12_HIT_GROUP_DESC*>(desc->pSubobjects[i].pDesc);
			wstr << (hitGroup->HitGroupExport ? hitGroup->HitGroupExport : L"[none]") << L")\n";
			wstr << L" \xC3" << L"[0]: Any Hit Import: " << (hitGroup->AnyHitShaderImport ? hitGroup->AnyHitShaderImport : L"[none]") << L"\n";
			wstr << L" \xC3" << L"[1]: Closest Hit Import: " << (hitGroup->ClosestHitShaderImport ? hitGroup->ClosestHitShaderImport : L"[none]") << L"\n";
			wstr << L" \xC0" << L"[2]: Intersection Import: " << (hitGroup->IntersectionShaderImport ? hitGroup->IntersectionShaderImport : L"[none]") << L"\n";
		}
	}
	OutputDebugStringW(wstr.str().c_str());
}

void D3D12Raytracer::createPipelinestate()
{
	// Load dxil
	D3D12_SHADER_BYTECODE shader_bytecode = {};
	File file = ReadEntireFile("Raytracing.hlsl.dxil");
	shader_bytecode.pShaderBytecode = file.pData;
	shader_bytecode.BytecodeLength = file.size;

#if 0
	D3D12_DXIL_LIBRARY_DESC dxil_library_desc = {};
	dxil_library_desc.DXILLibrary = shader_bytecode;
	D3D12_EXPORT_DESC export_desc = {};
	export_desc.Name = L"raygen";
	dxil_library_desc.pExports = &export_desc;
	dxil_library_desc.NumExports = 1;
	D3D12_STATE_SUBOBJECT dxil_library_subobj = { D3D12_STATE_SUBOBJECT_TYPE_DXIL_LIBRARY, &dxil_library_desc };

	D3D12_HIT_GROUP_DESC hit_group_desc = {};
	//hit_group_desc.ClosestHitShaderImport
	//hit_group_desc.ClosestHitShaderImport
	//hit_group_desc.HitGroupExport
	//hit_group_desc.IntersectionShaderImport
	D3D12_STATE_SUBOBJECT hit_group_subobj = { D3D12_STATE_SUBOBJECT_TYPE_HIT_GROUP, &hit_group_desc };

	D3D12_RAYTRACING_SHADER_CONFIG raytracing_shader_config = {};
	raytracing_shader_config.MaxAttributeSizeInBytes = 4;
	raytracing_shader_config.MaxPayloadSizeInBytes = 2;
	D3D12_STATE_SUBOBJECT raytracing_shader_config_subobj = { D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_SHADER_CONFIG, &raytracing_shader_config };

	D3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION raytracing_shader_config_association = {};
	raytracing_shader_config_association.pSubobjectToAssociate = &raytracing_shader_config_subobj;
	D3D12_STATE_SUBOBJECT raytracing_shader_config_association_subobj = { D3D12_STATE_SUBOBJECT_TYPE_SUBOBJECT_TO_EXPORTS_ASSOCIATION, &raytracing_shader_config_association };

	CComPtr<ID3D12RootSignature> local_root_signature = m_globalRootSignature.Get(); // Local
	D3D12_STATE_SUBOBJECT local_root_signature_subobj = { D3D12_STATE_SUBOBJECT_TYPE_LOCAL_ROOT_SIGNATURE, local_root_signature };

	D3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION local_signature_association = {};
	local_signature_association.pSubobjectToAssociate = &local_root_signature_subobj;
	D3D12_STATE_SUBOBJECT local_signature_association_subobj = { D3D12_STATE_SUBOBJECT_TYPE_SUBOBJECT_TO_EXPORTS_ASSOCIATION, &local_signature_association };

	CComPtr<ID3D12RootSignature> global_root_signature = m_globalRootSignature.Get();
	D3D12_STATE_SUBOBJECT global_root_signature_subobj = { D3D12_STATE_SUBOBJECT_TYPE_ROOT_SIGNATURE,  global_root_signature };

	D3D12_RAYTRACING_PIPELINE_CONFIG raytracing_pipeline_config = {};
	raytracing_pipeline_config.MaxTraceRecursionDepth = 2;
	D3D12_STATE_SUBOBJECT raytracing_pipeline_config_subobj = { D3D12_STATE_SUBOBJECT_TYPE_RAYTRACING_PIPELINE_CONFIG, &raytracing_pipeline_config };

	D3D12_STATE_SUBOBJECT pSubobjects[] = { dxil_library_subobj, hit_group_subobj, raytracing_shader_config_subobj, raytracing_shader_config_association_subobj,
		local_root_signature_subobj, local_signature_association_subobj, global_root_signature_subobj, raytracing_pipeline_config_subobj };
	D3D12_STATE_OBJECT_DESC state_object_desc;
	state_object_desc.NumSubobjects = ARRAYSIZE(pSubobjects);
	state_object_desc.pSubobjects = pSubobjects;
	state_object_desc.Type = D3D12_STATE_OBJECT_TYPE_RAYTRACING_PIPELINE;

#if _DEBUG
	PrintStateObjectDesc(&state_object_desc);
#endif

	ThrowIfFailed(m_raytracingDevice->CreateStateObject(&state_object_desc, IID_PPV_ARGS(&m_stateObject)));
#else
	CD3D12_STATE_OBJECT_DESC dxrPipeline{ D3D12_STATE_OBJECT_TYPE_RAYTRACING_PIPELINE };
	auto lib = dxrPipeline.CreateSubobject<CD3D12_DXIL_LIBRARY_SUBOBJECT>();
	lib->SetDXILLibrary(&shader_bytecode);
	lib->DefineExport(L"raygen");

	auto hitGroup = dxrPipeline.CreateSubobject<CD3D12_HIT_GROUP_SUBOBJECT>();

	auto shaderConfig = dxrPipeline.CreateSubobject<CD3D12_RAYTRACING_SHADER_CONFIG_SUBOBJECT>();
	shaderConfig->Config(4, 8);

	auto shaderConfigAssociation = dxrPipeline.CreateSubobject<CD3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION_SUBOBJECT>();
	shaderConfigAssociation->SetSubobjectToAssociate(*shaderConfig);

	auto localRootSignature = dxrPipeline.CreateSubobject<CD3D12_LOCAL_ROOT_SIGNATURE_SUBOBJECT>();
	localRootSignature->SetRootSignature(m_globalRootSignature.Get());

	auto rootSignatureAssociation = dxrPipeline.CreateSubobject<CD3D12_SUBOBJECT_TO_EXPORTS_ASSOCIATION_SUBOBJECT>();
	rootSignatureAssociation->SetSubobjectToAssociate(*localRootSignature);

	auto globalRootSignature = dxrPipeline.CreateSubobject<CD3D12_ROOT_SIGNATURE_SUBOBJECT>();
	globalRootSignature->SetRootSignature(m_globalRootSignature.Get());

	auto pipelineConfig = dxrPipeline.CreateSubobject<CD3D12_RAYTRACING_PIPELINE_CONFIG_SUBOBJECT>();
	pipelineConfig->Config(2);

#if _DEBUG
	PrintStateObjectDesc(dxrPipeline);
#endif

	ThrowIfFailed(m_raytracingDevice->CreateStateObject(dxrPipeline, IID_PPV_ARGS(&m_stateObject)));

#endif
}

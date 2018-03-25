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

void WrappedDescriptorHeap::init(D3D12Device* device, D3D12_DESCRIPTOR_HEAP_DESC heapDesc)
{
	device->getDevice()->CreateDescriptorHeap(&heapDesc, IID_PPV_ARGS(&m_descriptorHeap));
	m_descriptorSize = device->getDevice()->GetDescriptorHandleIncrementSize(heapDesc.Type);
}

UINT WrappedDescriptorHeap::allocateCPU(D3D12_CPU_DESCRIPTOR_HANDLE* cpuDescriptor)
{
	D3D12_CPU_DESCRIPTOR_HANDLE descriptorHeapCpuBase = m_descriptorHeap->GetCPUDescriptorHandleForHeapStart();
	UINT index = m_descriptorCount++;
	*cpuDescriptor = CD3DX12_CPU_DESCRIPTOR_HANDLE(descriptorHeapCpuBase, index, m_descriptorSize);
	return index;
}

D3D12_GPU_DESCRIPTOR_HANDLE WrappedDescriptorHeap::allocateGPU(UINT descriptorHeapIndex)
{
	return CD3DX12_GPU_DESCRIPTOR_HANDLE(m_descriptorHeap->GetGPUDescriptorHandleForHeapStart(), descriptorHeapIndex, m_descriptorSize);
}

// Returns a descriptor index to a created raw UAV
WRAPPED_GPU_POINTER D3D12Raytracer::createWrappedPointer(ID3D12Resource* resource, UINT bufferNumElements)
{
	D3D12_UNORDERED_ACCESS_VIEW_DESC rawBufferUavDesc = {};
	rawBufferUavDesc.ViewDimension = D3D12_UAV_DIMENSION_BUFFER;
	rawBufferUavDesc.Buffer.Flags = D3D12_BUFFER_UAV_FLAG_RAW;
	rawBufferUavDesc.Format = DXGI_FORMAT_R32_TYPELESS;
	rawBufferUavDesc.Buffer.NumElements = bufferNumElements;

	D3D12_CPU_DESCRIPTOR_HANDLE uavCpuDescriptor;
	UINT descriptorHeapIndex = m_descriptorHeap.allocateCPU(&uavCpuDescriptor);
	m_device->getDevice()->CreateUnorderedAccessView(resource, nullptr, &rawBufferUavDesc, uavCpuDescriptor);
	
	return m_raytracingDevice->GetWrappedPointerSimple(descriptorHeapIndex, resource->GetGPUVirtualAddress());
}

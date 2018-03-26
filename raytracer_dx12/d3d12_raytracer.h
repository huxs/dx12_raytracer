#pragma once

class D3D12Device;
struct WrappedDescriptorHeap
{
	void init(D3D12Device* device, D3D12_DESCRIPTOR_HEAP_DESC heapDesc);
	UINT allocateCPU(D3D12_CPU_DESCRIPTOR_HANDLE* cpuDescriptor);
	D3D12_GPU_DESCRIPTOR_HANDLE allocateGPU(UINT descriptorHeapIndex);

	Microsoft::WRL::ComPtr<ID3D12DescriptorHeap> m_descriptorHeap;
	UINT m_descriptorSize;
	int m_descriptorCount = 0;
};

class D3D12Raytracer
{
public:
	D3D12Raytracer(D3D12Device* device);
	~D3D12Raytracer();

	void create_pipeline();
	void create_acceleration_structure();
	void create_shader_table();
	

	void doRaytracing();
	void copyRaytracingOutputToBackbuffer();

private:
	WRAPPED_GPU_POINTER createWrappedPointer(ID3D12Resource* resource, UINT bufferNumElements);

	D3D12Device * m_device;

	Microsoft::WRL::ComPtr<ID3D12RaytracingFallbackDevice> m_raytracingDevice;
	Microsoft::WRL::ComPtr<ID3D12RaytracingFallbackCommandList> m_raytracingCommandList;
	Microsoft::WRL::ComPtr<ID3D12RaytracingFallbackStateObject> m_stateObject;

	WrappedDescriptorHeap m_descriptorHeap;

	Microsoft::WRL::ComPtr<ID3D12RootSignature> m_globalRootSignature;

	Microsoft::WRL::ComPtr<ID3D12Resource> m_raytracingOutput;
	D3D12_GPU_DESCRIPTOR_HANDLE m_raytracingOutputResourceUAVGpuDescriptor;

	Microsoft::WRL::ComPtr<ID3D12Resource> m_vertexBuffer;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_indexBuffer;

	// Acceleration structure
	Microsoft::WRL::ComPtr<ID3D12Resource> m_accelerationStructure;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_bottomLevelAccelerationStructure;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_topLevelAccelerationStructure;
	WRAPPED_GPU_POINTER m_topLevelAccelerationStructurePointer;

	// Shader tables
	Microsoft::WRL::ComPtr<ID3D12Resource> m_rayGenShaderTable;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_hitGroupShaderTable;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_missShaderTable;
	
	
};
#pragma once

class D3D12Device
{
public:
	D3D12Device(HINSTANCE hInstance, HWND hwnd, int bufferCount, DXGI_FORMAT bufferFormat);
	~D3D12Device();
	void onWindowResize(int width, int height);

	void beginFrame();
	void present();
	void waitForGpu();

	ID3D12Device* getDevice() { return m_d3dDevice.Get(); }
	ID3D12GraphicsCommandList* getCommandList() { return m_commandList.Get(); }
	static D3D12Device* getInstance() { return _Instance; }
private:
	void createWindowDependentResources(int bufferCount, int width, int height, DXGI_FORMAT format);

	HWND m_hwnd;
	DXGI_FORMAT m_backbufferFormat;
	int m_backbufferIndex;
	int m_backbufferCount;

	Microsoft::WRL::ComPtr<ID3D12Device> m_d3dDevice;
	Microsoft::WRL::ComPtr<ID3D12CommandQueue> m_commandQueue;
	Microsoft::WRL::ComPtr<ID3D12GraphicsCommandList> m_commandList;
	Microsoft::WRL::ComPtr<ID3D12CommandAllocator> m_commandAllocators[2];

	Microsoft::WRL::ComPtr<IDXGIFactory4> m_dxgiFactory;
	Microsoft::WRL::ComPtr<IDXGISwapChain3> m_swapChain;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_renderTargets[2];
	CD3DX12_CPU_DESCRIPTOR_HANDLE m_renderTargetDescriptorHandles[2];

	// Presentation fence objects.
	Microsoft::WRL::ComPtr<ID3D12Fence>                 m_fence;
	UINT64                                              m_fenceValues[2];
	Microsoft::WRL::Wrappers::Event                     m_fenceEvent;


	Microsoft::WRL::ComPtr<ID3D12DescriptorHeap> m_rtvDescriptorHeap;
	//Microsoft::WRL::ComPtr<ID3D12DescriptorHeap> m_dsvDescriptorHeap;
	UINT m_rtvDescriptorSize;

	D3D12_VIEWPORT m_viewport;

	static D3D12Device* _Instance;
};
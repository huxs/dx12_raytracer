#pragma once

class D3D12Device
{
public:
	D3D12Device(HINSTANCE hInstance, HWND hwnd);
	~D3D12Device();

	void beginFrame();
	void endFrame();
	void flush();
private:
	void createWindowDependentResources();

	HWND m_hwnd;
	int m_backbufferIndex;

	Microsoft::WRL::ComPtr<ID3D12Device> m_d3dDevice;
	Microsoft::WRL::ComPtr<ID3D12CommandQueue> m_commandQueue;
	Microsoft::WRL::ComPtr<ID3D12GraphicsCommandList> m_commandList;
	Microsoft::WRL::ComPtr<ID3D12CommandAllocator> m_commandAllocators[2];

	Microsoft::WRL::ComPtr<IDXGIFactory4> m_dxgiFactory;
	Microsoft::WRL::ComPtr<IDXGISwapChain3> m_swapChain;
	Microsoft::WRL::ComPtr<ID3D12Resource> m_renderTargets[2];

	// Presentation fence objects.
	Microsoft::WRL::ComPtr<ID3D12Fence>                 m_fence;
	UINT64                                              m_fenceValues[2];
	Microsoft::WRL::Wrappers::Event                     m_fenceEvent;

	Microsoft::WRL::ComPtr<ID3D12DescriptorHeap> m_rtvDescriptorHeap;
	Microsoft::WRL::ComPtr<ID3D12DescriptorHeap> m_dsvDescriptorHeap;
	UINT m_rtvDescriptorSize;
};
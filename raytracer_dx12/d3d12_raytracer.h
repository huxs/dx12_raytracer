#pragma once

class D3D12Device;
class D3D12Raytracer
{
public:
	D3D12Raytracer(D3D12Device* device);
	~D3D12Raytracer();

private:
	Microsoft::WRL::ComPtr<ID3D12RaytracingFallbackDevice> m_raytracingDevice;
	Microsoft::WRL::ComPtr<ID3D12RaytracingFallbackCommandList> m_raytracingCommandList;
};
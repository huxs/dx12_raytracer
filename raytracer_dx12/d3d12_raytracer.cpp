#include "stdafx.h"
#include "d3d12_raytracer.h"
#include "d3d12_device.h"

D3D12Raytracer::D3D12Raytracer(D3D12Device* device)
{
	ThrowIfFailed(D3D12CreateRaytracingFallbackDevice(device->getDevice(), CreateRaytracingFallbackDeviceFlags::None, 0, IID_PPV_ARGS(&m_raytracingDevice)));
	m_raytracingDevice->QueryRaytracingCommandList(device->getCommandList(), IID_PPV_ARGS(&m_raytracingCommandList));
}

D3D12Raytracer::~D3D12Raytracer()
{
}

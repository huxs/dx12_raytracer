#include "stdafx.h"
#include "d3d12_device.h"
#include "d3d12_raytracer.h"

HWND g_hWnd;
D3D12Device* g_device;

// Main message handler for the sample.
LRESULT CALLBACK WindowProc(HWND hWnd, UINT message, WPARAM wParam, LPARAM lParam)
{
	switch (message)
	{
	case WM_CREATE:
	return 0;

	case WM_KEYDOWN:
		return 0;

	case WM_KEYUP:
		return 0;

	case WM_SIZE:
		g_device->onWindowResize(LOWORD(lParam), HIWORD(lParam));
		return 0;

	case WM_PAINT:
		return 0;

	case WM_DESTROY:
		PostQuitMessage(0);
		return 0;
	}

	// Handle any messages the switch statement didn't.
	return DefWindowProc(hWnd, message, wParam, lParam);
}


inline void EnableRaytracing()
{
	UUID experimentalFeaturesSMandDXR[] = { D3D12ExperimentalShaderModels, D3D12RaytracingPrototype };
	UUID experimentalFeaturesSM[] = { D3D12ExperimentalShaderModels };

	Microsoft::WRL::ComPtr<ID3D12Device> testDevice;
	// D3D12CreateDevice needs to pass after enabling experimental features to successfully declare support.
	if (FAILED(D3D12EnableExperimentalFeatures(ARRAYSIZE(experimentalFeaturesSMandDXR), experimentalFeaturesSMandDXR, nullptr, nullptr))
		|| FAILED(D3D12CreateDevice(nullptr, D3D_FEATURE_LEVEL_11_0, IID_PPV_ARGS(&testDevice))))
	{
		ThrowIfFalse(SUCCEEDED(D3D12EnableExperimentalFeatures(ARRAYSIZE(experimentalFeaturesSM), experimentalFeaturesSM, nullptr, nullptr))
			&& SUCCEEDED(D3D12CreateDevice(nullptr, D3D_FEATURE_LEVEL_11_0, IID_PPV_ARGS(&testDevice))));
	}
}


int WINAPI WinMain(HINSTANCE hInstance, HINSTANCE, LPSTR, int nCmdShow)
{
	// Initialize the window class.
	WNDCLASSEX windowClass = { 0 };
	windowClass.cbSize = sizeof(WNDCLASSEX);
	windowClass.style = CS_HREDRAW | CS_VREDRAW;
	windowClass.lpfnWndProc = WindowProc;
	windowClass.hInstance = hInstance;
	windowClass.hCursor = LoadCursor(NULL, IDC_ARROW);
	windowClass.lpszClassName = L"DXSampleClass";
	RegisterClassEx(&windowClass);

	LONG width = 1280;
	LONG height = 720;

	RECT windowRect = { 0, 0, width, height };
	AdjustWindowRect(&windowRect, WS_OVERLAPPEDWINDOW, FALSE);

	// Create the window and store a handle to it.
	g_hWnd = CreateWindow(
		windowClass.lpszClassName,
		L"Raytracer DX12",
		WS_OVERLAPPEDWINDOW,
		CW_USEDEFAULT,
		CW_USEDEFAULT,
		windowRect.right - windowRect.left,
		windowRect.bottom - windowRect.top,
		nullptr,		// We have no parent window.
		nullptr,		// We aren't using menus.
		hInstance,
		nullptr);

	EnableRaytracing();

	g_device = new D3D12Device(hInstance, g_hWnd, width, height, 2, DXGI_FORMAT_R8G8B8A8_UNORM);

	D3D12Raytracer raytracer(g_device);

	ShowWindow(g_hWnd, nCmdShow);

	// Main sample loop.
	MSG msg = {};
	while (msg.message != WM_QUIT)
	{
		// Process any messages in the queue.
		if (PeekMessage(&msg, NULL, 0, 0, PM_REMOVE))
		{
			TranslateMessage(&msg);
			DispatchMessage(&msg);
		}

		g_device->beginFrame();

		raytracer.doRaytracing();

		raytracer.copyRaytracingOutputToBackbuffer();

		g_device->present();
	}

	delete g_device;

	return 0;
}
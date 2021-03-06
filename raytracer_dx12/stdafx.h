// stdafx.h : include file for standard system include files,
// or project specific include files that are used frequently, but
// are changed infrequently.

#pragma once

#define _CRT_SECURE_NO_WARNINGS

#ifndef WIN32_LEAN_AND_MEAN
#define WIN32_LEAN_AND_MEAN             // Exclude rarely-used stuff from Windows headers.
#endif

#include <Windows.h>

#include <assert.h>

#include <wrl.h>
#include <dxgi1_4.h>
#ifdef _DEBUG
#include <dxgidebug.h>
#endif

#pragma comment(lib, "FallbackLayer.lib")
#pragma comment(lib, "d3d12.lib")
#pragma comment(lib, "dxgi.lib")
#pragma comment(lib, "dxguid.lib")


#include <d3d12_1.h>
#include <d3dx12.h>
#include <atlbase.h>
#include <D3D12RaytracingFallback.h>
#include <D3D12RaytracingPrototypeHelpers.hpp>

#include "helper.h"
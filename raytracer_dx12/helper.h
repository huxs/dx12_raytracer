#pragma once

inline void ThrowIfFailed(HRESULT hr)
{
	if (FAILED(hr))
	{
		LPWSTR output;
		FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			hr,
			LANG_USER_DEFAULT,
			(LPTSTR)&output,
			0,
			NULL);

		MessageBoxW(NULL, output, L"Runtime Error!", MB_ICONERROR | MB_OK);

		LocalFree(output);
	}
}

inline void ThrowIfFailed(HRESULT hr, wchar_t* msg)
{
	OutputDebugStringW(msg);
	ThrowIfFailed(hr);
}

inline void ThrowIfFalse(bool value)
{
	ThrowIfFailed(value ? S_OK : E_FAIL);
}

struct File
{
	void* pData;
	size_t size;
};

inline File ReadEntireFile(const char *path) {
	File result = {};
	FILE* file = fopen(path, "rb");
	if (file) {
		fseek(file, 0, SEEK_END);
		result.size = ftell(file);
		fseek(file, 0, SEEK_SET);
		result.pData = malloc(result.size);
		fread(result.pData, 1, result.size, file);
		fclose(file);
	}
	return result;
}
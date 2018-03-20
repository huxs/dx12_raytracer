#pragma once

inline void ThrowIfFailed(HRESULT hr)
{
	if (FAILED(hr))
	{
		LPSTR output;
		FormatMessage(FORMAT_MESSAGE_FROM_SYSTEM | FORMAT_MESSAGE_ALLOCATE_BUFFER | FORMAT_MESSAGE_IGNORE_INSERTS,
			NULL,
			hr,
			LANG_USER_DEFAULT,
			(LPTSTR)&output,
			0,
			NULL);

		MessageBox(NULL, output, "Runtime Error!", MB_ICONERROR | MB_OK);

		LocalFree(output);
	}
}

inline void ThrowIfFalse(bool value)
{
	ThrowIfFailed(value ? S_OK : E_FAIL);
}
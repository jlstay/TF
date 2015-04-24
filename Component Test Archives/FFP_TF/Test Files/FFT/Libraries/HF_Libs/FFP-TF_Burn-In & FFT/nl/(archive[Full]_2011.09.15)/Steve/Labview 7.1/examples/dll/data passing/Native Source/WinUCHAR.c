#include "extcode.h"
#include <windows.h>

_declspec(dllexport) void WinUCHAR(UCHAR *input, PUCHAR output);
_declspec(dllexport) void WinUCHAR(UCHAR *input, PUCHAR output)
{
  int i, j;

  /* Reverse "i" characters. Assume output already has memory. */
  for(i = strlen(input) - 1, j = 0; i >= 0; i--, j++)
  {
    output[j] = input[i];
  }
}

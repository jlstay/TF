#include "extcode.h"
#include <windows.h>

_declspec(dllexport) void WinCHAR(CHAR *input, PCHAR output);
_declspec(dllexport) void WinCHAR(CHAR *input, PCHAR output)
{
  int i, j;

  /* Reverse "i" characters. Assume output already has memory. */
  for(i = strlen(input) - 1, j = 0; i >= 0; i--, j++)
  {
    output[j] = input[i];
  }
}

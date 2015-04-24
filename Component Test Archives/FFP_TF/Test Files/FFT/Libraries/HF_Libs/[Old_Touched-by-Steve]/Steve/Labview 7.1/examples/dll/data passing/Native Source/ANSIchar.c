#include "extcode.h"
#include <string.h>

_declspec(dllexport) void ANSIchar(char *input, char *output);
_declspec(dllexport) void ANSIchar(char *input, char *output)
{
  int i, j;

  /* Reverse "i" characters. Assume output already has memory. */
  for(i = strlen(input) - 1, j = 0; i >= 0; i--, j++)
  {
    output[j] = input[i];
  }
}

#include "extcode.h"
#include <string.h>

_declspec(dllexport) void LVLStrHandle(LStrHandle input, LStrHandle output);
_declspec(dllexport) void LVLStrHandle(LStrHandle input, LStrHandle output)
{
  int i, j, len;

  len = (*input)->cnt;
  strncpy((*output)->str, (*input)->str, len);
  /* Reverse "i" characters. Assume output already has memory. */
  for(i = len - 1, j = 0; i >= 0; i--, j++)
  {
    (*output)->str[j + len] = (*input)->str[i];
  }
}

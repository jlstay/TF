/*
 * lstrcat.c
 */

#include "extcode.h"

CIN MgErr CINRun(LStrHandle strh1, LStrHandle strh2);

CIN MgErr CINRun(LStrHandle strh1, LStrHandle strh2)
    {
    int32 size1, size2, newSize;
    MgErr err;

    size1 = LStrLen(*strh1);
    size2 = LStrLen(*strh2);
    newSize = size1 + size2;
    err = NumericArrayResize(uB, 1L, (UHandle *)&strh1, newSize);
    if (!err) {
        MoveBlock(LStrBuf(*strh2), LStrBuf(*strh1)+size1, size2);
        LStrLen(*strh1) = newSize; /* update the dimension (length) */
        }
    return err;
    }

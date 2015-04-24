/*
 * cross.c
 */

#include "extcode.h"

typedef struct {
    int32 dimSizes[2];
    float64 arg1[1];
    } TD1;
typedef TD1 **TD1Hdl;

CIN MgErr CINRun(TD1Hdl var1, TD1Hdl var2, TD1Hdl var3, LVBoolean *var4);

#define ParamNumber 2 /* The return parameter is parameter 2 */
#define NumDimensions 2 /* 2D Array */

CIN MgErr CINRun(TD1Hdl ah, TD1Hdl bh, TD1Hdl resulth, LVBoolean *errorp)
    {
    int32       i,j,k,l;
    int32       rows, cols;
    float64     *aElmtp, *bElmtp, *resultElmtp;
    MgErr       mgError=noErr;
    int32       newNumElmts;

    if ((k = (*ah)->dimSizes[1]) != (*bh)->dimSizes[0]) {
        *errorp = LVTRUE;
        goto out;
        }
    *errorp = LVFALSE;
    rows = (*ah)->dimSizes[0];  /* number of rows in a and result */
    cols = (*bh)->dimSizes[1]; /* number of cols in b and result */

    newNumElmts = rows * cols;
    if (mgError = SetCINArraySize((UHandle)resulth, ParamNumber, newNumElmts))
        goto out;

    (*resulth)->dimSizes[0] = rows;
    (*resulth)->dimSizes[1] = cols;

    aElmtp = (*ah)->arg1;
    bElmtp = (*bh)->arg1;
    resultElmtp = (*resulth)->arg1;

    for (i=0; i<rows; i++)
        for (j=0; j<cols; j++) {
            *resultElmtp = 0;
            for (l=0; l<k; l++)
                *resultElmtp += aElmtp[i*k + l] * bElmtp[l*cols + j];
            resultElmtp++;
            }
out:
    return mgError;
    }

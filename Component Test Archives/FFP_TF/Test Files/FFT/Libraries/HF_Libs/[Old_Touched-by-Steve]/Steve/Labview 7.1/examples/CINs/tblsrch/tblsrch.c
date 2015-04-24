/*
 * tblsrch.c
 */

#include "extcode.h"

typedef struct {
    int16 arg1;
    LStrHandle arg2;
    } TD2;

typedef struct {
    int32 dimSize;
    TD2 arg1[1];
    } TD1;
typedef TD1 **TD1Hdl;

CIN MgErr CINRun(TD1Hdl var1, TD2 *var2, LVBoolean *var3, int32 *var4);

#define ParamNumber 0 /* The array parameter is parameter 0 */

CIN MgErr CINRun(TD1Hdl clusterTableh, TD2 *elementp,
                 LVBoolean *presentp, int32 *positionp)
    {
    int32       size,i;
    MgErr       mgError=noErr;
    TD2         *tmpp;
    LStrHandle  newStringh;
    TD2         *newElementp;
    int32       newNumElements;

    size = (*clusterTableh)->dimSize;
    tmpp = (*clusterTableh)->arg1;

    *positionp = -1;
    *presentp = LVFALSE;

    for(i=0; i<size; i++) {
        if(tmpp->arg1 == elementp->arg1)
            if(LStrCmp(*(tmpp->arg2), *(elementp->arg2)) == 0)
                break;
        tmpp++;
        }

    if(i<size) {
        *positionp = i;
        *presentp = LVTRUE;
        goto out;
        }

    newStringh = NULL; /* DSCopyHandle will allocate a new handle since this is NULL */
    if(mgError = DSCopyHandle((UHandle *)&newStringh,(UHandle)elementp->arg2))
        goto out;

    newNumElements = size+1;

    if (mgError = SetCINArraySize((UHandle)clusterTableh,
                        ParamNumber,
                        newNumElements)) {
        DSDisposeHandle(newStringh);
        goto out;
        }
    (*clusterTableh)->dimSize = size+1;

    newElementp = &((*clusterTableh)->arg1[size]);
    newElementp->arg1 = elementp->arg1;
    newElementp->arg2 = newStringh;
    *positionp = size;

out:
    return mgError;
    }

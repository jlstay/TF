/*
 * aequalb.c
 */

#include "extcode.h"

CIN MgErr CINRun(float32 *ap, float32 *bp, LVBoolean *aequalbp);

CIN MgErr CINRun(float32 *ap, float32 *bp, LVBoolean *aequalbp)
    {
    if (*ap == *bp)
        *aequalbp=LVTRUE;
    else
        *aequalbp=LVFALSE;
    return noErr;
    }

CIN MgErr CINProperties(int32 prop, void *data)
    {
    MgErr err = noErr;  /* recognize prop by default */

    switch (prop) {
        case kCINIsReentrant:           /* are we reentrant? */
            *(Bool32 *)data = TRUE;     /* yes */
            break;
        default:                        /* question not recognized */
            err = mgNotSupported;
            break;
        }

    return err;
    }


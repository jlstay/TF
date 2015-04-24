/*
 * mult.c
 */

#include "extcode.h"

CIN MgErr CINRun(float32 *ap, float32 *bp, float32 *resultp);

CIN MgErr CINRun(float32 *ap, float32 *bp, float32 *resultp)
    {
    *resultp = *ap * *bp;
    return noErr;
    }

/* Make this CIN reentrant. */
CIN MgErr CINProperties(int32 query, void *data)
    {
    switch (query) {
        case kCINIsReentrant:           /* are you reentrant? */
            *(Bool32 *)data = TRUE;         /* yes */
            return noErr;                   /* query recognized */
        }
    return mgNotSupported;              /* query not recognized */
    }

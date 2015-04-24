#include "extcode.h"

CIN MgErr CINRun(uInt16 *var1, LStrHandle var2);

CIN MgErr CINRun(uInt16 *var1, LStrHandle var2) {
    switch (*var1) {
        case 0:
            DbgPrintf("");
            /* If you call DbgPrintf with a string it */
            /* opens the debug window if is not already open */
            break;
        case 1:
            DbgPrintf("%H", var2);
            /* DbgPrintf takes the same arguments as SPrintf */
            break;
        case 2:
            DbgPrintf(NULL);
            /* If you call DbgPrintf with NULL, it closes */
            /* the debug window */
        }
    return noErr;
    }

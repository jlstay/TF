#include "extcode.h"

float64 gTotal;
int32 gNumElements;

CIN MgErr CINRun(float64 *var1, float64 *var2);

CIN MgErr CINRun(float64 *var1, float64 *var2) {
    gTotal += *var1;
    gNumElements++;
    *var2 = gTotal / gNumElements;
    return noErr;
    }

CIN MgErr CINLoad(RsrcFile rf) {
    gTotal=0;
    gNumElements=0;
    return noErr;
    }

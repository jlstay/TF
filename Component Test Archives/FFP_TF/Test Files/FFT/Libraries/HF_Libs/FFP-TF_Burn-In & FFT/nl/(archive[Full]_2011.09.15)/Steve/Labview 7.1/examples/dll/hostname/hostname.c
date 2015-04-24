/* include extcode.h which contains the prototypes for the LabVIEW functions */
#include <extcode.h>
#include <stdio.h>
#include <windows.h>


BOOL WINAPI DllMain (HANDLE hDLL, DWORD dwReason, LPVOID lpReserved)
	{
		return TRUE;
	}


/* This functions gets the computer name and returns it to LabVIEW */
__declspec (dllexport) void MachineName(void *LVHandle)
	{
	char computerName[MAX_COMPUTERNAME_LENGTH+1];
	int  compNameLength = MAX_COMPUTERNAME_LENGTH+1;

	/* Get computer name */
	GetComputerName(computerName, &compNameLength);
	/* Size LabVIEW handle to the correct size */
	DSSetHandleSize(LVHandle, compNameLength + 5);
	/* Copy the string size to the LabVIEW handle */
	**(int32 **)LVHandle = compNameLength ;
	/* Copy the string to the LabVIEW handle */
	sprintf((*(char **)LVHandle)+4,"%s",computerName);
	}




/*
 * filewrit.c
 * This CIN creates a file and writes to it.
 */

#include "extcode.h"

/* PERMISSIONS sets the permissions for the created file.
    Consult the Code Interface Reference Manual for explanation */
int32 PERMISSIONS = 0644;       /* octal */

CIN MgErr CINRun(LStrHandle string, LStrHandle filePath, int32 *charsWritten);

CIN MgErr CINRun(LStrHandle string, LStrHandle filePath, int32 *charsWritten)
{
    MgErr err = noErr;
    File fileDescriptor = NULL;
    Path  pathToCreate = NULL;
    int32 numChars;             /*number of characters in string */

    /* Convert filePath (a LStrHandle) to a path. NOTE: This function is not
       needed if a path is passed to the CIN from LabVIEW.  This just
       illustrates the use of FStringToPath. */
    if (err = FStringToPath(filePath, &pathToCreate))
        goto out;

    /* Creates a file specified by pathToCreate.  A pointer to a file descriptor
       will be returned in fileDescriptor. */
    if (err = FCreate(&fileDescriptor, pathToCreate, PERMISSIONS,
                      openReadWrite, denyNeither, NULL))
        goto out;

    /* Get the number of characters in string. */
    numChars = LStrLen(*string);

    /* Write the characters in string to the file specified by fileDescriptor. */
    if (err = FMWrite(fileDescriptor, numChars, charsWritten, LStrBuf(*string)))
        goto out;

out:
    /* If the file has been opened, close the file. */
    if (fileDescriptor)
        err = FMClose(fileDescriptor);

    return err;
}

/*
 * fileread.c
 * This CIN will read the contents of an existing file.
 */

#include "extcode.h"

/* stubs for advanced CIN functions */

CIN MgErr CINRun(LStrHandle fileToOpen, LStrHandle contentsOfFile);

CIN MgErr CINRun(LStrHandle fileToOpen, LStrHandle contentsOfFile)
{
    MgErr err;
    Path pathToOpen = NULL;
    File fileDescriptor = NULL;
    int32 numChars;         /* number of characters in the file */

    LStrLen(*contentsOfFile) = 0;

    /* Convert fileToOpen (a LStrHandle) to a path. NOTE: This function is not
       needed if a path is passd to the CIN from LabVIEW.  THis just illustrates
       the use of FStringToPath. */
    if (err = FStringToPath(fileToOpen, &pathToOpen))
        goto out;

    /* Open the file for reading and writing. A file descriptor
       will be returned in fileDescriptor. */
    if (err = FMOpen(&fileDescriptor, pathToOpen, openReadOnly, denyNeither))
        goto out;

    /* Get number of chars in file. The size of the file will be returned in
       numChars. */
    if (err = FGetEOF(fileDescriptor, &numChars))
        goto out;

    /* Resize contentsOfFile (the output string) to the size of the file. */
    if (err = NumericArrayResize(uB, 1L, (UHandle *)&contentsOfFile, numChars))
        goto out;

    /* Read the contents of the file into contentsOfFile. */
    if (err = FMRead(fileDescriptor, numChars, NULL, LStrBuf(*contentsOfFile)))
        goto out;

    /* Update the number of characters in the string. */
    LStrLen(*contentsOfFile) = numChars;

out:
    /* If the file has been opened, close the file. */
    if (fileDescriptor)
        err = FMClose(fileDescriptor);

    return err;
}

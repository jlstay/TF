# Microsoft Developer Studio Project File - Name="CLF_Example" - Package Owner=<4>
# Microsoft Developer Studio Generated Build File, Format Version 6.00
# ** DO NOT EDIT **

# TARGTYPE "Win32 (x86) Dynamic-Link Library" 0x0102

CFG=CLF_Example - Win32 Debug
!MESSAGE This is not a valid makefile. To build this project using NMAKE,
!MESSAGE use the Export Makefile command and run
!MESSAGE 
!MESSAGE NMAKE /f "CLF_Example.mak".
!MESSAGE 
!MESSAGE You can specify a configuration when running NMAKE
!MESSAGE by defining the macro CFG on the command line. For example:
!MESSAGE 
!MESSAGE NMAKE /f "CLF_Example.mak" CFG="CLF_Example - Win32 Debug"
!MESSAGE 
!MESSAGE Possible choices for configuration are:
!MESSAGE 
!MESSAGE "CLF_Example - Win32 Release" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE "CLF_Example - Win32 Debug" (based on "Win32 (x86) Dynamic-Link Library")
!MESSAGE 

# Begin Project
# PROP AllowPerConfigDependencies 0
# PROP Scc_ProjName ""
# PROP Scc_LocalPath ""
CPP=cl.exe
MTL=midl.exe
RSC=rc.exe

!IF  "$(CFG)" == "CLF_Example - Win32 Release"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 0
# PROP BASE Output_Dir "Release"
# PROP BASE Intermediate_Dir "Release"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 0
# PROP Output_Dir "Release"
# PROP Intermediate_Dir "Release"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MT /W3 /GX /O2 /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CLF_EXAMPLE_EXPORTS" /YX /FD /c
# ADD CPP /nologo /Zp1 /MD /W3 /GX /O2 /I "C:\Program Files\National Instruments\LabVIEW 7.0\cintools" /D "WIN32" /D "NDEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CLF_EXAMPLE_EXPORTS" /YX /FD /c
# ADD BASE MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "NDEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "NDEBUG"
# ADD RSC /l 0x409 /d "NDEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /machine:I386 /out:"CLF_Example.dll"

!ELSEIF  "$(CFG)" == "CLF_Example - Win32 Debug"

# PROP BASE Use_MFC 0
# PROP BASE Use_Debug_Libraries 1
# PROP BASE Output_Dir "Debug"
# PROP BASE Intermediate_Dir "Debug"
# PROP BASE Target_Dir ""
# PROP Use_MFC 0
# PROP Use_Debug_Libraries 1
# PROP Output_Dir "Debug"
# PROP Intermediate_Dir "Debug"
# PROP Ignore_Export_Lib 0
# PROP Target_Dir ""
# ADD BASE CPP /nologo /MTd /W3 /Gm /GX /ZI /Od /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CLF_EXAMPLE_EXPORTS" /YX /FD /GZ /c
# ADD CPP /nologo /Zp1 /MD /W3 /Gm /GX /ZI /Od /I "C:\Program Files\National Instruments\LabVIEW 7.0\cintools" /D "WIN32" /D "_DEBUG" /D "_WINDOWS" /D "_MBCS" /D "_USRDLL" /D "CLF_EXAMPLE_EXPORTS" /YX /FD /GZ /c
# ADD BASE MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD MTL /nologo /D "_DEBUG" /mktyplib203 /win32
# ADD BASE RSC /l 0x409 /d "_DEBUG"
# ADD RSC /l 0x409 /d "_DEBUG"
BSC32=bscmake.exe
# ADD BASE BSC32 /nologo
# ADD BSC32 /nologo
LINK32=link.exe
# ADD BASE LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept
# ADD LINK32 kernel32.lib user32.lib gdi32.lib winspool.lib comdlg32.lib advapi32.lib shell32.lib ole32.lib oleaut32.lib uuid.lib odbc32.lib odbccp32.lib /nologo /dll /debug /machine:I386 /pdbtype:sept

!ENDIF 

# Begin Target

# Name "CLF_Example - Win32 Release"
# Name "CLF_Example - Win32 Debug"
# Begin Group "Source Files"

# PROP Default_Filter "cpp;c;cxx;rc;def;r;odl;idl;hpj;bat"
# Begin Source File

SOURCE=".\Native Source\ANSIchar.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIdouble.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIfloat.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIint.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIlong.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIshort.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIunsignedchar.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIunsignedint.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIunsignedlong.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ANSIunsignedshort.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAY1DHandle.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAY2D.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAY2DHandle.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAY3D.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAY3DHandle.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\ARRAYfloor1D.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\CLUSTERBytePack.c"

!IF  "$(CFG)" == "CLF_Example - Win32 Release"

# ADD CPP /Zp1

!ELSEIF  "$(CFG)" == "CLF_Example - Win32 Debug"

!ENDIF 

# End Source File
# Begin Source File

SOURCE=".\Native Source\CLUSTERComplex.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\CLUSTERSimple.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\CLUSTERSimpleS_A.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\CLUSTERSimpleS_AWrap.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVcmplx128.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVcmplx64.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVcmplxExt.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVCStr.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVfloat32.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVfloat64.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVfloatExt.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVint16.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVint32.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVint8.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVLStrHandle.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVLVBoolean.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVuInt16.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVuInt32.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\LVuInt8.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinBOOL.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinBOOLEAN.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinBYTE.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinCHAR.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinCOLORREF.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinDWORD.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinFLOAT.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinHWND.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinINT.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinLONG.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinSHORT.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinSIZE_T.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinSSIZE_T.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinUCHAR.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinUINT.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinULONG.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinUSHORT.c"
# End Source File
# Begin Source File

SOURCE=".\Native Source\WinWORD.c"
# End Source File
# End Group
# Begin Group "Header Files"

# PROP Default_Filter "h;hpp;hxx;hm;inl"
# Begin Source File

SOURCE="C:\Program Files\National Instruments\LabVIEW 7.0\cintools\extcode.h"
# End Source File
# End Group
# Begin Group "Resource Files"

# PROP Default_Filter "ico;cur;bmp;dlg;rc2;rct;bin;rgs;gif;jpg;jpeg;jpe"
# End Group
# Begin Source File

SOURCE="C:\Program Files\National Instruments\LabVIEW 7.0\cintools\labview.lib"
# End Source File
# End Target
# End Project

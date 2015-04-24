
# Deal with optional defines

!ifdef codeDir
codeDirParm = -d $(codeDir)
!endif

!ifdef rsrcFile
rsrcFileParm = -r $(rsrcFile)
!endif

!ifndef type
type=CIN
!endif

!if "$(type)" == "LVSB"
!error External subroutines are not supported by this version of cintools
!endif

!ifndef cinToolsDir
!	ifdef cintoolsdir
cinToolsDir=$(cintoolsdir)
!	else ifdef CINTOOLSDIR
cinToolsDir=$(CINTOOLSDIR)
!	else
!		error cinToolsDir not defined in makefile or environment variable
!	endif
!endif

!include <ntwin32.mak>

ASM = masm386 -Mx -Zi -Zd -c -w1 -t -DWIN32 $(ASMINCLUDES)

!if "$(CC)" == "cl"

CCOMP	= $(CC) -nologo -c -G3 -W3 -Zi -Zp1 -MD $(CINCLUDES)
ObjExt=
ExportFile = $(OBJDIR)\lvsbmain.exp
CPPOpt= -GX
!ifdef DEBUG
CCOpt= -Od
DebugLink= -debug:full -debugtype:cv
!else
CCOpt= -O2
!endif

!else

!if "$(CC)" == "sc"
CCOMP	= $(CC) -mn -o+time -WD -3 -a1 -c $(CINCLUDES)
ObjExt = .sym
ExportFile = $(OBJDIR)\lvsbmain.def
!else
!error What compiler are we using?
!endif

!endif

CINCLUDES= $(CINCLUDES) -I$(cinToolsDir)

OBJDIR	 = $(cinToolsDir)
BINDIR	 = $(cinToolsDir)
OBJS	 = $(name).obj $(objFiles) $(OBJDIR)\labview$(ObjExt).lib $(OBJDIR)\lvsb$(ObjExt).lib $(OBJDIR)\$(type)$(ObjExt).obj

$(name).lsb : $(name).map
	@$(BINDIR)\lvsbutil $(name) -t $(type) \
		$(codeDirParm) $(rsrcFileParm)
	@del $(name).dll >NUL

clean :
	@-del $(name).map
	@-del $(name).obj
	@-del $(name).lsb
	@-del $(name).dll

$(name).map : $(OBJS) $(ExportFile)
!if "$(CC)" == "sc"
	@$(link) /NOI /DO /DE /E /PACKF /XN /NT \
		/ENTRY:__DllMainCRTStartup@12 @<<
		$(OBJS) $(LVSBINP)
		$(name).dll
		$(name).map
		$(cinLibraries) $(olelibsdll)
		$(ExportFile)
<<
!else
	@$(link) -dll -out:$(name).dll -map:$(name).map $(DebugLink) \
		$(ExportFile) $(OBJS) $(LVSBINP) $(cinLibraries) $(olelibsdll)
!endif


.c.obj :
	@$(CCOMP) $(CCOpt) $<

.cpp.obj :
	@$(CCOMP) $(CPPOpt) $(CCOpt) $<

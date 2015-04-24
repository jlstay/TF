/*============================================================================*/
/*						  L a b W i n d o w s / C V I						  */
/*----------------------------------------------------------------------------*/
/*	  Copyright (c) National Instruments 1987-1999.	 All Rights Reserved.	  */
/*----------------------------------------------------------------------------*/
/*																			  */
/* Title:		stddef.h													  */
/* Purpose:		Include file for ANSI Standard C that defines several types	  */
/*				and macros that are of general use in a program.			  */
/*																			  */
/*============================================================================*/

#ifndef _STDDEF
#define _STDDEF

#ifdef __cplusplus
	extern "C" {
#endif

#ifndef NULL
#define NULL 0
#endif

#define offsetof(t, mem) ((size_t) ((char *)&(((t *)8)->mem) - (char *)8))

typedef long ptrdiff_t;

#ifndef _SIZE_T_DEFINED
#define _SIZE_T_DEFINED
typedef unsigned int size_t;
#endif

#ifndef _WCHAR_T_DEFINED
#define _WCHAR_T_DEFINED
#define _WCHAR_T
typedef char wchar_t;
typedef unsigned short sdk_wchar_t;
#endif

#ifdef __cplusplus
	}
#endif

#endif  /* ndef _STDDEF */

﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Core\GUI__AddSpaceHex.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI__AddSpaceHex
EXTRN	_GUI_AddHex:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\core\gui__addspacehex.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI__AddSpaceHex
_TEXT	SEGMENT
_s$ = -8						; size = 4
_v$ = 8							; size = 4
_Len$ = 12						; size = 1
_ps$ = 16						; size = 4
_GUI__AddSpaceHex PROC					; COMDAT
; Line 35
	push	ebp
	mov	ebp, esp
	sub	esp, 204				; 000000ccH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-204]
	mov	ecx, 51					; 00000033H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 36
	mov	eax, DWORD PTR _ps$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _s$[ebp], ecx
; Line 37
	mov	eax, DWORD PTR _s$[ebp]
	mov	BYTE PTR [eax], 32			; 00000020H
	mov	ecx, DWORD PTR _s$[ebp]
	add	ecx, 1
	mov	DWORD PTR _s$[ebp], ecx
; Line 38
	mov	eax, DWORD PTR _ps$[ebp]
	mov	ecx, DWORD PTR _s$[ebp]
	mov	DWORD PTR [eax], ecx
; Line 39
	mov	eax, DWORD PTR _ps$[ebp]
	push	eax
	movzx	ecx, BYTE PTR _Len$[ebp]
	push	ecx
	mov	edx, DWORD PTR _v$[ebp]
	push	edx
	call	_GUI_AddHex
	add	esp, 12					; 0000000cH
; Line 40
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI__AddSpaceHex ENDP
_TEXT	ENDS
END
﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\GUI_EditFloat.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_GUI_EditFloat
EXTRN	_WM_DeleteWindow:PROC
EXTRN	_GUI_ALLOC_UnlockH:PROC
EXTRN	_GUI_Pow10:BYTE
EXTRN	_EDIT_LockH:PROC
EXTRN	_EDIT_AddKey:PROC
EXTRN	_GUI_WaitKey:PROC
EXTRN	_EDIT_SetFloatMode:PROC
EXTRN	_EDIT_Create:PROC
EXTRN	_GUI_GetFontSizeY:PROC
EXTRN	_GUI_GetCharDistX:PROC
EXTRN	_GUI_GetDispPosY:PROC
EXTRN	_GUI_GetDispPosX:PROC
EXTRN	_GUI_SetFont:PROC
EXTRN	_EDIT_GetDefaultFont:PROC
EXTRN	__fltused:DWORD
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\gui_editfloat.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _GUI_EditFloat
_TEXT	SEGMENT
tv173 = -308						; size = 8
tv89 = -304						; size = 4
_pOldFont$ = -104					; size = 4
_pObj$ = -92						; size = 4
_hEdit$ = -80						; size = 4
_Id$ = -68						; size = 4
_ysize$ = -56						; size = 4
_y$ = -44						; size = 4
_x$ = -32						; size = 4
_Key$ = -20						; size = 4
_Ret$ = -8						; size = 4
_Value$ = 8						; size = 4
_Min$ = 12						; size = 4
_Max$ = 16						; size = 4
_Len$ = 20						; size = 4
_xsize$ = 24						; size = 4
_Shift$ = 28						; size = 4
_Flags$ = 32						; size = 1
_GUI_EditFloat PROC					; COMDAT
; Line 39
	push	ebp
	mov	ebp, esp
	sub	esp, 308				; 00000134H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-308]
	mov	ecx, 77					; 0000004dH
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 46
	call	_EDIT_GetDefaultFont
	push	eax
	call	_GUI_SetFont
	add	esp, 4
	mov	DWORD PTR _pOldFont$[ebp], eax
; Line 47
	call	_GUI_GetDispPosX
	mov	DWORD PTR _x$[ebp], eax
; Line 48
	call	_GUI_GetDispPosY
	mov	DWORD PTR _y$[ebp], eax
; Line 49
	cmp	DWORD PTR _xsize$[ebp], 0
	jne	SHORT $LN9@GUI_EditFl
; Line 50
	push	88					; 00000058H
	call	_GUI_GetCharDistX
	add	esp, 4
	imul	eax, DWORD PTR _Len$[ebp]
	mov	DWORD PTR _xsize$[ebp], eax
$LN9@GUI_EditFl:
; Line 51
	call	_GUI_GetFontSizeY
	mov	DWORD PTR _ysize$[ebp], eax
; Line 52
	mov	DWORD PTR _Id$[ebp], 4660		; 00001234H
; Line 53
	push	0
	mov	eax, DWORD PTR _Len$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Id$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ysize$[ebp]
	push	edx
	mov	eax, DWORD PTR _xsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x$[ebp]
	push	edx
	call	_EDIT_Create
	add	esp, 28					; 0000001cH
	mov	DWORD PTR _hEdit$[ebp], eax
; Line 54
	movzx	eax, BYTE PTR _Flags$[ebp]
	push	eax
	mov	ecx, DWORD PTR _Shift$[ebp]
	push	ecx
	push	ecx
	fld	DWORD PTR _Max$[ebp]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _Min$[ebp]
	fstp	DWORD PTR [esp]
	push	ecx
	fld	DWORD PTR _Value$[ebp]
	fstp	DWORD PTR [esp]
	mov	edx, DWORD PTR _hEdit$[ebp]
	push	edx
	call	_EDIT_SetFloatMode
	add	esp, 24					; 00000018H
$LN8@GUI_EditFl:
; Line 56
	call	_GUI_WaitKey
	mov	DWORD PTR _Key$[ebp], eax
; Line 57
	mov	eax, DWORD PTR _Key$[ebp]
	mov	DWORD PTR tv89[ebp], eax
	cmp	DWORD PTR tv89[ebp], 27			; 0000001bH
	je	SHORT $LN3@GUI_EditFl
	jmp	SHORT $LN2@GUI_EditFl
$LN3@GUI_EditFl:
; Line 59
	jmp	SHORT $LN4@GUI_EditFl
$LN2@GUI_EditFl:
; Line 61
	mov	eax, DWORD PTR _Key$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hEdit$[ebp]
	push	ecx
	call	_EDIT_AddKey
	add	esp, 8
$LN4@GUI_EditFl:
; Line 63
	cmp	DWORD PTR _Key$[ebp], 27		; 0000001bH
	je	SHORT $LN1@GUI_EditFl
	cmp	DWORD PTR _Key$[ebp], 13		; 0000000dH
	je	SHORT $LN1@GUI_EditFl
	cmp	DWORD PTR _Key$[ebp], 0
	jne	SHORT $LN8@GUI_EditFl
$LN1@GUI_EditFl:
; Line 64
	mov	eax, DWORD PTR _pOldFont$[ebp]
	push	eax
	call	_GUI_SetFont
	add	esp, 4
; Line 65
	mov	eax, DWORD PTR _hEdit$[ebp]
	push	eax
	call	_EDIT_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 66
	mov	eax, DWORD PTR _pObj$[ebp]
	fild	DWORD PTR [eax+76]
	mov	ecx, DWORD PTR _pObj$[ebp]
	movzx	edx, BYTE PTR [ecx+72]
	mov	eax, DWORD PTR _GUI_Pow10[edx*4]
	mov	DWORD PTR tv173[ebp], eax
	mov	DWORD PTR tv173[ebp+4], 0
	fild	QWORD PTR tv173[ebp]
	fdivp	ST(1), ST(0)
	fstp	DWORD PTR _Ret$[ebp]
; Line 67
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 68
	mov	eax, DWORD PTR _hEdit$[ebp]
	push	eax
	call	_WM_DeleteWindow
	add	esp, 4
; Line 70
	fld	DWORD PTR _Ret$[ebp]
; Line 71
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 308				; 00000134H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_GUI_EditFloat ENDP
_TEXT	ENDS
END
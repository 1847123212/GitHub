﻿; Listing generated by Microsoft (R) Optimizing Compiler Version 16.00.40219.01 

	TITLE	C:\DUII\Simulation\GUI\Widget\SLIDER.c
	.686P
	.XMM
	include listing.inc
	.model	flat

INCLUDELIB LIBCMT
INCLUDELIB OLDNAMES

PUBLIC	_SLIDER__DefaultProps
PUBLIC	_SLIDER__pSkinDefault
EXTRN	_SLIDER__SkinClassic:BYTE
_DATA	SEGMENT
_SLIDER__DefaultProps DD 0c0c0c0H
	DD	0c0c0c0H
	DD	00H
	DD	00H
	DD	00H
_SLIDER__pSkinDefault DD FLAT:_SLIDER__SkinClassic
$SG12587 DB	'SLIDER.c: Wrong handle type or Object not init''ed', 00H
	ORG $+2
$SG12628 DB	'SLIDER_Create failed', 00H
_DATA	ENDS
PUBLIC	_SLIDER_LockH
EXTRN	_GUI_ErrorOut:PROC
EXTRN	_GUI_ALLOC_LockH:PROC
EXTRN	__RTC_CheckEsp:PROC
EXTRN	__RTC_Shutdown:PROC
EXTRN	__RTC_InitBase:PROC
;	COMDAT rtc$TMZ
; File c:\duii\simulation\gui\widget\slider.c
rtc$TMZ	SEGMENT
__RTC_Shutdown.rtc$TMZ DD FLAT:__RTC_Shutdown
rtc$TMZ	ENDS
;	COMDAT rtc$IMZ
rtc$IMZ	SEGMENT
__RTC_InitBase.rtc$IMZ DD FLAT:__RTC_InitBase
; Function compile flags: /Odtp /RTCsu /ZI
rtc$IMZ	ENDS
;	COMDAT _SLIDER_LockH
_TEXT	SEGMENT
_p$ = -8						; size = 4
_h$ = 8							; size = 4
_SLIDER_LockH PROC					; COMDAT
; Line 207
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
; Line 208
	mov	eax, DWORD PTR _h$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _p$[ebp], eax
; Line 209
	cmp	DWORD PTR _p$[ebp], 0
	je	SHORT $LN2@SLIDER_Loc
; Line 210
	mov	eax, DWORD PTR _p$[ebp]
	cmp	DWORD PTR [eax+104], 1397508420		; 534c4944H
	je	SHORT $LN2@SLIDER_Loc
; Line 211
	push	OFFSET $SG12587
	call	_GUI_ErrorOut
	add	esp, 4
; Line 212
	xor	eax, eax
	jmp	SHORT $LN3@SLIDER_Loc
$LN2@SLIDER_Loc:
; Line 215
	mov	eax, DWORD PTR _p$[ebp]
$LN3@SLIDER_Loc:
; Line 216
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_LockH ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_Callback
EXTRN	_WM_DefaultProc:PROC
EXTRN	_WIDGET_HandleActive:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_Callback
_TEXT	SEGMENT
tv69 = -208						; size = 4
_hObj$ = -8						; size = 4
_pMsg$ = 8						; size = 4
_SLIDER_Callback PROC					; COMDAT
; Line 229
	push	ebp
	mov	ebp, esp
	sub	esp, 208				; 000000d0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-208]
	mov	ecx, 52					; 00000034H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 231
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+4]
	mov	DWORD PTR _hObj$[ebp], ecx
; Line 233
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_WIDGET_HandleActive
	add	esp, 8
	test	eax, eax
	jne	SHORT $LN6@SLIDER_Cal
; Line 234
	jmp	SHORT $LN7@SLIDER_Cal
$LN6@SLIDER_Cal:
; Line 236
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv69[ebp], ecx
	cmp	DWORD PTR tv69[ebp], 12			; 0000000cH
	je	SHORT $LN2@SLIDER_Cal
	cmp	DWORD PTR tv69[ebp], 14			; 0000000eH
	je	SHORT $LN1@SLIDER_Cal
	cmp	DWORD PTR tv69[ebp], 15			; 0000000fH
	je	SHORT $LN3@SLIDER_Cal
	jmp	SHORT $LN4@SLIDER_Cal
$LN3@SLIDER_Cal:
; Line 239
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	__Paint
	add	esp, 4
; Line 240
	jmp	SHORT $LN7@SLIDER_Cal
$LN2@SLIDER_Cal:
; Line 242
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	__OnTouch
	add	esp, 8
; Line 243
	jmp	SHORT $LN4@SLIDER_Cal
$LN1@SLIDER_Cal:
; Line 245
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	__OnKey
	add	esp, 8
$LN4@SLIDER_Cal:
; Line 248
	mov	eax, DWORD PTR _pMsg$[ebp]
	push	eax
	call	_WM_DefaultProc
	add	esp, 4
$LN7@SLIDER_Cal:
; Line 249
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 208				; 000000d0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_Callback ENDP
_TEXT	ENDS
EXTRN	_GUI_ALLOC_UnlockH:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __Paint
_TEXT	SEGMENT
_pfPaint$ = -20						; size = 4
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
__Paint	PROC						; COMDAT
; Line 88
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 92
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 93
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+76]
	mov	edx, DWORD PTR [ecx]
	mov	DWORD PTR _pfPaint$[ebp], edx
; Line 94
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 95
	cmp	DWORD PTR _pfPaint$[ebp], 0
	je	SHORT $LN2@Paint
; Line 96
	mov	esi, esp
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	DWORD PTR _pfPaint$[ebp]
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
$LN2@Paint:
; Line 98
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__Paint	ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetValue
EXTRN	_WM_SetCapture:PROC
EXTRN	_WM_SetFocus:PROC
EXTRN	_WM_IsFocussable:PROC
EXTRN	_WIDGET__GetWindowSizeX:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __OnTouch
_TEXT	SEGMENT
tv94 = -352						; size = 4
tv85 = -352						; size = 4
_Div$12556 = -152					; size = 4
_Range$12551 = -140					; size = 4
_Sel$12550 = -128					; size = 4
_x$12549 = -116						; size = 4
_xsize$12548 = -104					; size = 4
_x0$12547 = -92						; size = 4
_Max$12544 = -80					; size = 4
_Min$12543 = -68					; size = 4
_Status$12542 = -56					; size = 2
_State$12541 = -44					; size = 2
_Width$12540 = -32					; size = 2
_pObj$12539 = -20					; size = 4
_pState$ = -8						; size = 4
_hObj$ = 8						; size = 4
_pMsg$ = 12						; size = 4
__OnTouch PROC						; COMDAT
; Line 126
	push	ebp
	mov	ebp, esp
	sub	esp, 352				; 00000160H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-352]
	mov	ecx, 88					; 00000058H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 127
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _pState$[ebp], ecx
; Line 128
	mov	eax, DWORD PTR _pMsg$[ebp]
	cmp	DWORD PTR [eax+12], 0
	je	$LN11@OnTouch
; Line 133
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$12539[ebp], eax
; Line 134
	mov	eax, DWORD PTR _pObj$12539[ebp]
	mov	ecx, DWORD PTR [eax+80]
	mov	DWORD PTR _Min$12543[ebp], ecx
; Line 135
	mov	eax, DWORD PTR _pObj$12539[ebp]
	mov	ecx, DWORD PTR [eax+84]
	mov	DWORD PTR _Max$12544[ebp], ecx
; Line 136
	mov	eax, DWORD PTR _pObj$12539[ebp]
	mov	cx, WORD PTR [eax+100]
	mov	WORD PTR _Width$12540[ebp], cx
; Line 137
	mov	eax, DWORD PTR _pObj$12539[ebp]
	mov	cx, WORD PTR [eax+54]
	mov	WORD PTR _State$12541[ebp], cx
; Line 138
	mov	eax, DWORD PTR _pObj$12539[ebp]
	mov	cx, WORD PTR [eax+40]
	mov	WORD PTR _Status$12542[ebp], cx
; Line 139
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$12539[ebp], 0
; Line 140
	mov	eax, DWORD PTR _pState$[ebp]
	movzx	ecx, BYTE PTR [eax+8]
	test	ecx, ecx
	je	$LN9@OnTouch
; Line 142
	mov	eax, DWORD PTR _Max$12544[ebp]
	sub	eax, DWORD PTR _Min$12543[ebp]
	mov	DWORD PTR _Range$12551[ebp], eax
; Line 143
	movsx	eax, WORD PTR _Width$12540[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	eax, 1
	mov	DWORD PTR _x0$12547[ebp], eax
; Line 144
	movsx	eax, WORD PTR _State$12541[ebp]
	and	eax, 8
	je	SHORT $LN13@OnTouch
	mov	ecx, DWORD PTR _pState$[ebp]
	mov	edx, DWORD PTR [ecx+4]
	mov	DWORD PTR tv85[ebp], edx
	jmp	SHORT $LN14@OnTouch
$LN13@OnTouch:
	mov	eax, DWORD PTR _pState$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR tv85[ebp], ecx
$LN14@OnTouch:
	mov	edx, DWORD PTR tv85[ebp]
	mov	DWORD PTR _x$12549[ebp], edx
; Line 145
	mov	eax, DWORD PTR _x$12549[ebp]
	sub	eax, DWORD PTR _x0$12547[ebp]
	mov	DWORD PTR _x$12549[ebp], eax
; Line 146
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WIDGET__GetWindowSizeX
	add	esp, 4
	mov	ecx, DWORD PTR _x0$12547[ebp]
	shl	ecx, 1
	sub	eax, ecx
	mov	DWORD PTR _xsize$12548[ebp], eax
; Line 147
	cmp	DWORD PTR _x$12549[ebp], 0
	jg	SHORT $LN8@OnTouch
; Line 148
	mov	eax, DWORD PTR _Min$12543[ebp]
	mov	DWORD PTR _Sel$12550[ebp], eax
	jmp	SHORT $LN7@OnTouch
$LN8@OnTouch:
; Line 149
	mov	eax, DWORD PTR _x$12549[ebp]
	cmp	eax, DWORD PTR _xsize$12548[ebp]
	jl	SHORT $LN6@OnTouch
; Line 150
	mov	eax, DWORD PTR _Max$12544[ebp]
	mov	DWORD PTR _Sel$12550[ebp], eax
; Line 151
	jmp	SHORT $LN7@OnTouch
$LN6@OnTouch:
; Line 153
	cmp	DWORD PTR _xsize$12548[ebp], 0
	je	SHORT $LN15@OnTouch
	mov	eax, DWORD PTR _xsize$12548[ebp]
	mov	DWORD PTR tv94[ebp], eax
	jmp	SHORT $LN16@OnTouch
$LN15@OnTouch:
	mov	DWORD PTR tv94[ebp], 1
$LN16@OnTouch:
	mov	ecx, DWORD PTR tv94[ebp]
	mov	DWORD PTR _Div$12556[ebp], ecx
; Line 154
	mov	ecx, DWORD PTR _Range$12551[ebp]
	imul	ecx, DWORD PTR _x$12549[ebp]
	mov	eax, DWORD PTR _Div$12556[ebp]
	cdq
	sub	eax, edx
	sar	eax, 1
	add	eax, ecx
	xor	edx, edx
	div	DWORD PTR _Div$12556[ebp]
	add	eax, DWORD PTR _Min$12543[ebp]
	mov	DWORD PTR _Sel$12550[ebp], eax
$LN7@OnTouch:
; Line 156
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_IsFocussable
	add	esp, 4
	test	eax, eax
	je	SHORT $LN4@OnTouch
; Line 157
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_SetFocus
	add	esp, 4
$LN4@OnTouch:
; Line 159
	push	1
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_SetCapture
	add	esp, 8
; Line 160
	mov	eax, DWORD PTR _Sel$12550[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	_SLIDER_SetValue
	add	esp, 8
; Line 161
	movsx	eax, WORD PTR _State$12541[ebp]
	and	eax, 256				; 00000100H
	jne	SHORT $LN3@OnTouch
; Line 162
	movzx	eax, WORD PTR _Status$12542[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	__SliderPressed
	add	esp, 8
$LN3@OnTouch:
; Line 164
	jmp	SHORT $LN11@OnTouch
$LN9@OnTouch:
; Line 166
	movsx	eax, WORD PTR _State$12541[ebp]
	and	eax, 256				; 00000100H
	je	SHORT $LN11@OnTouch
; Line 167
	movzx	eax, WORD PTR _Status$12542[ebp]
	push	eax
	mov	ecx, DWORD PTR _hObj$[ebp]
	push	ecx
	call	__SliderReleased
	add	esp, 8
$LN11@OnTouch:
; Line 171
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 352				; 00000160H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__OnTouch ENDP
_TEXT	ENDS
EXTRN	_WM_NotifyParent:PROC
EXTRN	_WIDGET_OrState:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __SliderPressed
_TEXT	SEGMENT
_hObj$ = 8						; size = 4
_Status$ = 12						; size = 2
__SliderPressed PROC					; COMDAT
; Line 104
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 105
	push	256					; 00000100H
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WIDGET_OrState
	add	esp, 8
; Line 106
	movzx	eax, WORD PTR _Status$[ebp]
	and	eax, 2
	je	SHORT $LN2@SliderPres
; Line 107
	push	1
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_NotifyParent
	add	esp, 8
$LN2@SliderPres:
; Line 109
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__SliderPressed ENDP
_TEXT	ENDS
EXTRN	_WIDGET_AndState:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __SliderReleased
_TEXT	SEGMENT
_hObj$ = 8						; size = 4
_Status$ = 12						; size = 2
__SliderReleased PROC					; COMDAT
; Line 115
	push	ebp
	mov	ebp, esp
	sub	esp, 192				; 000000c0H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-192]
	mov	ecx, 48					; 00000030H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 116
	push	256					; 00000100H
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WIDGET_AndState
	add	esp, 8
; Line 117
	movzx	eax, WORD PTR _Status$[ebp]
	and	eax, 2
	je	SHORT $LN2@SliderRele
; Line 118
	push	2
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_NotifyParent
	add	esp, 8
$LN2@SliderRele:
; Line 120
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 192				; 000000c0H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__SliderReleased ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_Dec
PUBLIC	_SLIDER_Inc
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT __OnKey
_TEXT	SEGMENT
tv67 = -220						; size = 4
_Key$ = -20						; size = 4
_pKeyInfo$ = -8						; size = 4
_hObj$ = 8						; size = 4
_pMsg$ = 12						; size = 4
__OnKey	PROC						; COMDAT
; Line 177
	push	ebp
	mov	ebp, esp
	sub	esp, 220				; 000000dcH
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-220]
	mov	ecx, 55					; 00000037H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 180
	mov	eax, DWORD PTR _pMsg$[ebp]
	mov	ecx, DWORD PTR [eax+12]
	mov	DWORD PTR _pKeyInfo$[ebp], ecx
; Line 181
	mov	eax, DWORD PTR _pKeyInfo$[ebp]
	mov	ecx, DWORD PTR [eax]
	mov	DWORD PTR _Key$[ebp], ecx
; Line 182
	mov	eax, DWORD PTR _pKeyInfo$[ebp]
	cmp	DWORD PTR [eax+4], 0
	jle	SHORT $LN7@OnKey
; Line 183
	mov	eax, DWORD PTR _Key$[ebp]
	mov	DWORD PTR tv67[ebp], eax
	cmp	DWORD PTR tv67[ebp], 16			; 00000010H
	je	SHORT $LN2@OnKey
	cmp	DWORD PTR tv67[ebp], 18			; 00000012H
	je	SHORT $LN3@OnKey
	jmp	SHORT $LN7@OnKey
$LN3@OnKey:
; Line 185
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_Inc
	add	esp, 4
; Line 186
	jmp	SHORT $LN7@OnKey
$LN2@OnKey:
; Line 188
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_Dec
	add	esp, 4
$LN7@OnKey:
; Line 194
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 220				; 000000dcH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
__OnKey	ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_CreateEx
EXTRN	_WIDGET__Init:PROC
EXTRN	_WM_CreateWindowAsChild:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_CreateEx
_TEXT	SEGMENT
_InitState$12622 = -32					; size = 2
_pObj$12621 = -20					; size = 4
_hObj$ = -8						; size = 4
_x0$ = 8						; size = 4
_y0$ = 12						; size = 4
_xsize$ = 16						; size = 4
_ysize$ = 20						; size = 4
_hParent$ = 24						; size = 4
_WinFlags$ = 28						; size = 4
_ExFlags$ = 32						; size = 4
_Id$ = 36						; size = 4
_SLIDER_CreateEx PROC					; COMDAT
; Line 267
	push	ebp
	mov	ebp, esp
	sub	esp, 228				; 000000e4H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-228]
	mov	ecx, 57					; 00000039H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 272
	mov	eax, DWORD PTR _WinFlags$[ebp]
	or	eax, 1
	mov	DWORD PTR _WinFlags$[ebp], eax
; Line 274
	push	60					; 0000003cH
	push	OFFSET _SLIDER_Callback
	mov	eax, DWORD PTR _WinFlags$[ebp]
	push	eax
	mov	ecx, DWORD PTR _hParent$[ebp]
	push	ecx
	mov	edx, DWORD PTR _ysize$[ebp]
	push	edx
	mov	eax, DWORD PTR _xsize$[ebp]
	push	eax
	mov	ecx, DWORD PTR _y0$[ebp]
	push	ecx
	mov	edx, DWORD PTR _x0$[ebp]
	push	edx
	call	_WM_CreateWindowAsChild
	add	esp, 32					; 00000020H
	mov	DWORD PTR _hObj$[ebp], eax
; Line 275
	cmp	DWORD PTR _hObj$[ebp], 0
	je	$LN4@SLIDER_Cre
; Line 278
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_GUI_ALLOC_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$12621[ebp], eax
; Line 280
	mov	eax, 16					; 00000010H
	mov	WORD PTR _InitState$12622[ebp], ax
; Line 281
	mov	eax, DWORD PTR _ExFlags$[ebp]
	and	eax, 8
	je	SHORT $LN3@SLIDER_Cre
; Line 282
	movzx	eax, WORD PTR _InitState$12622[ebp]
	or	eax, 8
	mov	WORD PTR _InitState$12622[ebp], ax
$LN3@SLIDER_Cre:
; Line 285
	movzx	eax, WORD PTR _InitState$12622[ebp]
	push	eax
	mov	ecx, DWORD PTR _Id$[ebp]
	push	ecx
	mov	edx, DWORD PTR _pObj$12621[ebp]
	push	edx
	call	_WIDGET__Init
	add	esp, 12					; 0000000cH
; Line 287
	mov	eax, DWORD PTR _pObj$12621[ebp]
	mov	DWORD PTR [eax+104], 1397508420		; 534c4944H
; Line 288
	mov	eax, DWORD PTR _pObj$12621[ebp]
	add	eax, 56					; 00000038H
	mov	ecx, DWORD PTR _SLIDER__DefaultProps
	mov	DWORD PTR [eax], ecx
	mov	edx, DWORD PTR _SLIDER__DefaultProps+4
	mov	DWORD PTR [eax+4], edx
	mov	ecx, DWORD PTR _SLIDER__DefaultProps+8
	mov	DWORD PTR [eax+8], ecx
	mov	edx, DWORD PTR _SLIDER__DefaultProps+12
	mov	DWORD PTR [eax+12], edx
	mov	ecx, DWORD PTR _SLIDER__DefaultProps+16
	mov	DWORD PTR [eax+16], ecx
; Line 289
	mov	eax, DWORD PTR _pObj$12621[ebp]
	mov	ecx, DWORD PTR _SLIDER__pSkinDefault
	mov	DWORD PTR [eax+76], ecx
; Line 290
	mov	eax, 8
	mov	ecx, DWORD PTR _pObj$12621[ebp]
	mov	WORD PTR [ecx+100], ax
; Line 291
	mov	eax, DWORD PTR _pObj$12621[ebp]
	mov	DWORD PTR [eax+84], 100			; 00000064H
; Line 292
	mov	eax, DWORD PTR _pObj$12621[ebp]
	mov	DWORD PTR [eax+80], 0
; Line 293
	mov	eax, DWORD PTR _pObj$12621[ebp]
	mov	DWORD PTR [eax+96], -1
; Line 294
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$12621[ebp], 0
; Line 295
	mov	esi, esp
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	mov	ecx, DWORD PTR _SLIDER__pSkinDefault
	mov	edx, DWORD PTR [ecx+4]
	call	edx
	add	esp, 4
	cmp	esi, esp
	call	__RTC_CheckEsp
; Line 296
	jmp	SHORT $LN2@SLIDER_Cre
$LN4@SLIDER_Cre:
; Line 297
	cmp	DWORD PTR _hObj$[ebp], 0
	jne	SHORT $LN2@SLIDER_Cre
	push	OFFSET $SG12628
	call	_GUI_ErrorOut
	add	esp, 4
$LN2@SLIDER_Cre:
; Line 300
	mov	eax, DWORD PTR _hObj$[ebp]
; Line 301
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 228				; 000000e4H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_CreateEx ENDP
_TEXT	ENDS
EXTRN	_WM_InvalidateWindow:PROC
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_Dec
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_SLIDER_Dec PROC					; COMDAT
; Line 313
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
; Line 315
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN4@SLIDER_Dec
; Line 317
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 318
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR [eax+88]
	cmp	edx, DWORD PTR [ecx+80]
	jle	SHORT $LN2@SLIDER_Dec
; Line 319
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	sub	ecx, 1
	mov	edx, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [edx+88], ecx
; Line 320
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 321
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 322
	push	5
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_NotifyParent
	add	esp, 8
; Line 323
	jmp	SHORT $LN4@SLIDER_Dec
$LN2@SLIDER_Dec:
; Line 324
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN4@SLIDER_Dec:
; Line 328
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_Dec ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _SLIDER_Inc
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_SLIDER_Inc PROC					; COMDAT
; Line 334
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
; Line 336
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN4@SLIDER_Inc
; Line 338
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 339
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _pObj$[ebp]
	mov	edx, DWORD PTR [eax+88]
	cmp	edx, DWORD PTR [ecx+84]
	jge	SHORT $LN2@SLIDER_Inc
; Line 340
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	add	ecx, 1
	mov	edx, DWORD PTR _pObj$[ebp]
	mov	DWORD PTR [edx+88], ecx
; Line 341
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 342
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 343
	push	5
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_NotifyParent
	add	esp, 8
; Line 344
	jmp	SHORT $LN4@SLIDER_Inc
$LN2@SLIDER_Inc:
; Line 345
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN4@SLIDER_Inc:
; Line 349
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_Inc ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetWidth
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_SetWidth
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_Width$ = 12						; size = 4
_SLIDER_SetWidth PROC					; COMDAT
; Line 355
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
; Line 357
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN3@SLIDER_Set
; Line 359
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 360
	mov	eax, DWORD PTR _pObj$[ebp]
	movsx	ecx, WORD PTR [eax+100]
	cmp	ecx, DWORD PTR _Width$[ebp]
	je	SHORT $LN1@SLIDER_Set
; Line 361
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	cx, WORD PTR _Width$[ebp]
	mov	WORD PTR [eax+100], cx
; Line 362
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN1@SLIDER_Set:
; Line 364
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN3@SLIDER_Set:
; Line 367
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetWidth ENDP
; Function compile flags: /Odtp /RTCsu /ZI
_TEXT	ENDS
;	COMDAT _SLIDER_SetValue
_TEXT	SEGMENT
_pObj$ = -8						; size = 4
_hObj$ = 8						; size = 4
_v$ = 12						; size = 4
_SLIDER_SetValue PROC					; COMDAT
; Line 373
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
; Line 375
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN6@SLIDER_Set@2
; Line 377
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 379
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	cmp	ecx, DWORD PTR [eax+80]
	jge	SHORT $LN4@SLIDER_Set@2
; Line 380
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+80]
	mov	DWORD PTR _v$[ebp], ecx
$LN4@SLIDER_Set@2:
; Line 382
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	cmp	ecx, DWORD PTR [eax+84]
	jle	SHORT $LN3@SLIDER_Set@2
; Line 383
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+84]
	mov	DWORD PTR _v$[ebp], ecx
$LN3@SLIDER_Set@2:
; Line 385
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	cmp	ecx, DWORD PTR _v$[ebp]
	je	SHORT $LN2@SLIDER_Set@2
; Line 386
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR _v$[ebp]
	mov	DWORD PTR [eax+88], ecx
; Line 387
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
; Line 388
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
; Line 389
	push	5
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_NotifyParent
	add	esp, 8
; Line 390
	jmp	SHORT $LN6@SLIDER_Set@2
$LN2@SLIDER_Set@2:
; Line 391
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN6@SLIDER_Set@2:
; Line 395
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetValue ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetRange
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_SetRange
_TEXT	SEGMENT
_pObj$12677 = -8					; size = 4
_hObj$ = 8						; size = 4
_Min$ = 12						; size = 4
_Max$ = 16						; size = 4
_SLIDER_SetRange PROC					; COMDAT
; Line 401
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
; Line 402
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN5@SLIDER_Set@3
; Line 405
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$12677[ebp], eax
; Line 406
	mov	eax, DWORD PTR _Max$[ebp]
	cmp	eax, DWORD PTR _Min$[ebp]
	jge	SHORT $LN3@SLIDER_Set@3
; Line 407
	mov	eax, DWORD PTR _Min$[ebp]
	mov	DWORD PTR _Max$[ebp], eax
$LN3@SLIDER_Set@3:
; Line 409
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR _Min$[ebp]
	mov	DWORD PTR [eax+80], ecx
; Line 410
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR _Max$[ebp]
	mov	DWORD PTR [eax+84], ecx
; Line 411
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR [eax+88]
	cmp	ecx, DWORD PTR _Min$[ebp]
	jge	SHORT $LN2@SLIDER_Set@3
; Line 412
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR _Min$[ebp]
	mov	DWORD PTR [eax+88], ecx
$LN2@SLIDER_Set@3:
; Line 414
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR [eax+88]
	cmp	ecx, DWORD PTR _Max$[ebp]
	jle	SHORT $LN1@SLIDER_Set@3
; Line 415
	mov	eax, DWORD PTR _pObj$12677[ebp]
	mov	ecx, DWORD PTR _Max$[ebp]
	mov	DWORD PTR [eax+88], ecx
$LN1@SLIDER_Set@3:
; Line 417
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$12677[ebp], 0
; Line 418
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN5@SLIDER_Set@3:
; Line 421
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetRange ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_SetNumTicks
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_SetNumTicks
_TEXT	SEGMENT
_pObj$12688 = -8					; size = 4
_hObj$ = 8						; size = 4
_NumTicks$ = 12						; size = 4
_SLIDER_SetNumTicks PROC				; COMDAT
; Line 427
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
; Line 428
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN2@SLIDER_Set@4
	cmp	DWORD PTR _NumTicks$[ebp], 0
	jl	SHORT $LN2@SLIDER_Set@4
; Line 431
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$12688[ebp], eax
; Line 432
	mov	eax, DWORD PTR _pObj$12688[ebp]
	mov	ecx, DWORD PTR _NumTicks$[ebp]
	mov	DWORD PTR [eax+96], ecx
; Line 433
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$12688[ebp], 0
; Line 434
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_WM_InvalidateWindow
	add	esp, 4
$LN2@SLIDER_Set@4:
; Line 437
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 204				; 000000ccH
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_SetNumTicks ENDP
_TEXT	ENDS
PUBLIC	_SLIDER_GetValue
; Function compile flags: /Odtp /RTCsu /ZI
;	COMDAT _SLIDER_GetValue
_TEXT	SEGMENT
_pObj$ = -20						; size = 4
_r$ = -8						; size = 4
_hObj$ = 8						; size = 4
_SLIDER_GetValue PROC					; COMDAT
; Line 449
	push	ebp
	mov	ebp, esp
	sub	esp, 216				; 000000d8H
	push	ebx
	push	esi
	push	edi
	lea	edi, DWORD PTR [ebp-216]
	mov	ecx, 54					; 00000036H
	mov	eax, -858993460				; ccccccccH
	rep stosd
; Line 450
	mov	DWORD PTR _r$[ebp], 0
; Line 452
	cmp	DWORD PTR _hObj$[ebp], 0
	je	SHORT $LN1@SLIDER_Get
; Line 454
	mov	eax, DWORD PTR _hObj$[ebp]
	push	eax
	call	_SLIDER_LockH
	add	esp, 4
	mov	DWORD PTR _pObj$[ebp], eax
; Line 455
	mov	eax, DWORD PTR _pObj$[ebp]
	mov	ecx, DWORD PTR [eax+88]
	mov	DWORD PTR _r$[ebp], ecx
; Line 456
	call	_GUI_ALLOC_UnlockH
	mov	DWORD PTR _pObj$[ebp], 0
$LN1@SLIDER_Get:
; Line 459
	mov	eax, DWORD PTR _r$[ebp]
; Line 460
	pop	edi
	pop	esi
	pop	ebx
	add	esp, 216				; 000000d8H
	cmp	ebp, esp
	call	__RTC_CheckEsp
	mov	esp, ebp
	pop	ebp
	ret	0
_SLIDER_GetValue ENDP
_TEXT	ENDS
END
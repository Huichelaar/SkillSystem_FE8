	.cpu arm7tdmi
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 1
	.eabi_attribute 30, 4
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"main.c"
	.text
	.align	1
	.global	PAU_haltBAnims
	.arch armv4t
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_haltBAnims, %function
PAU_haltBAnims:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, [r0, #60]
	cmp	r3, #0
	beq	.L2
	movs	r2, #8
	ldrh	r1, [r3]
	orrs	r2, r1
	strh	r2, [r3]
.L2:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L1
	movs	r2, #8
	ldrh	r1, [r3]
	orrs	r2, r1
	strh	r2, [r3]
.L1:
	@ sp needed
	bx	lr
	.size	PAU_haltBAnims, .-PAU_haltBAnims
	.align	1
	.global	PAU_enableAISes
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_enableAISes, %function
PAU_enableAISes:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r3, #128
	@ sp needed
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L11
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L11+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L11+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	bx	lr
.L12:
	.align	2
.L11:
	.word	33554436
	.word	33554440
	.word	33554444
	.size	PAU_enableAISes, .-PAU_enableAISes
	.align	1
	.global	PAU_puOffsetMSInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_puOffsetMSInit, %function
PAU_puOffsetMSInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, lr}
	strh	r3, [r0, #42]
	@ sp needed
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	ldr	r3, [r0, #20]
	ldr	r6, .L14
	str	r3, [r0, #64]
	movs	r4, r0
	ldr	r5, .L14+4
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, [r0, #60]
	str	r0, [r4, #48]
	str	r3, [r4, #52]
	ldrb	r0, [r6, #12]
	bl	.L16
	ldr	r3, [r0, #60]
	str	r0, [r4, #56]
	str	r3, [r4, #60]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L15:
	.align	2
.L14:
	.word	gActionData
	.word	GetUnit
	.size	PAU_puOffsetMSInit, .-PAU_puOffsetMSInit
	.align	1
	.global	PAU_applyStateMask
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_applyStateMask, %function
PAU_applyStateMask:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, r0
	push	{r4, lr}
	ldr	r3, [r0, #20]
	@ sp needed
	adds	r3, r3, #43
	adds	r1, r1, #41
	ldrb	r2, [r3]
	ldrb	r1, [r1]
	eors	r2, r1
	strb	r2, [r3]
	movs	r1, #128
	movs	r3, #44
	ldrsh	r2, [r0, r3]
	movs	r3, #1
	ldrh	r0, [r0, #42]
	lsls	r1, r1, r3
	ldr	r4, .L18
	bl	.L20
	pop	{r4}
	pop	{r0}
	bx	r0
.L19:
	.align	2
.L18:
	.word	PlaySoundAt
	.size	PAU_applyStateMask, .-PAU_applyStateMask
	.align	1
	.global	PAU_waitUntilCameraStops
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_waitUntilCameraStops, %function
PAU_waitUntilCameraStops:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, .L23
	ldr	r3, [r3]
	push	{r4, lr}
	cmp	r3, #0
	bne	.L21
	ldr	r3, .L23+4
	bl	.L25
.L21:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L24:
	.align	2
.L23:
	.word	bAnimCameraMoving
	.word	BreakProcLoop
	.size	PAU_waitUntilCameraStops, .-PAU_waitUntilCameraStops
	.global	__aeabi_idiv
	.align	1
	.global	PAU_dropOffsetMSLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_dropOffsetMSLoop, %function
PAU_dropOffsetMSLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldrh	r3, [r0, #42]
	adds	r3, r3, #1
	lsls	r3, r3, #16
	ldrh	r2, [r0, #44]
	lsrs	r3, r3, #16
	movs	r4, r0
	strh	r3, [r0, #42]
	cmp	r2, r3
	bhi	.L27
	ldr	r3, .L28
	bl	.L25
.L27:
	@ sp needed
	ldr	r7, [r4, #64]
	movs	r3, r7
	movs	r0, #0
	adds	r3, r3, #80
	ldrh	r6, [r4, #44]
	str	r3, [sp, #4]
	ldr	r3, .L28+4
	ldr	r5, .L28+8
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	ldr	r2, [sp, #4]
	lsls	r3, r0, #4
	ldrh	r0, [r2]
	subs	r0, r0, r3
	strh	r0, [r2]
	movs	r0, #0
	ldr	r3, .L28+12
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	adds	r7, r7, #82
	lsls	r3, r0, #4
	ldrh	r0, [r7]
	subs	r0, r0, r3
	strh	r0, [r7]
	movs	r0, #0
	ldr	r4, [r4, #68]
	ldr	r3, .L28+16
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	movs	r7, r4
	bl	.L16
	adds	r7, r7, #80
	lsls	r3, r0, #4
	ldrh	r0, [r7]
	subs	r0, r0, r3
	strh	r0, [r7]
	movs	r0, #0
	ldr	r3, .L28+20
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	adds	r4, r4, #82
	lsls	r3, r0, #4
	ldrh	r0, [r4]
	subs	r0, r0, r3
	strh	r0, [r4]
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L29:
	.align	2
.L28:
	.word	BreakProcLoop
	.word	PAU_mapFrontOffsX
	.word	__aeabi_idiv
	.word	PAU_mapFrontOffsY
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.size	PAU_dropOffsetMSLoop, .-PAU_dropOffsetMSLoop
	.align	1
	.global	PAU_swapMSEnd
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapMSEnd, %function
PAU_swapMSEnd:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	adds	r3, r3, #41
	ldrb	r3, [r3]
	lsls	r3, r3, #31
	bpl	.L31
	movs	r3, #8
	strh	r3, [r0, #36]
	ldr	r3, .L33
	str	r3, [r0, #12]
.L30:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L31:
	ldr	r0, [r0, #20]
	ldr	r3, .L33+4
	bl	.L25
	b	.L30
.L34:
	.align	2
.L33:
	.word	_ProcSleepCallback
	.word	EndProc
	.size	PAU_swapMSEnd, .-PAU_swapMSEnd
	.align	1
	.global	PAU_swapMSInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapMSInit, %function
PAU_swapMSInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r6, r0
	movs	r3, #0
	adds	r6, r6, #47
	strb	r3, [r6]
	strh	r3, [r0, #42]
	adds	r3, r3, #8
	strh	r3, [r0, #44]
	movs	r3, r0
	movs	r7, r0
	adds	r3, r3, #41
	ldrb	r3, [r3]
	movs	r4, r0
	ldr	r5, .L44
	adds	r7, r7, #46
	lsls	r3, r3, #30
	bmi	.L36
	movs	r3, r5
	adds	r3, r3, #88
	ldrb	r3, [r3]
	strb	r3, [r7]
	ldr	r3, .L44+4
.L42:
	bl	.L25
	ldrb	r3, [r7]
	movs	r7, #20
	movs	r2, r7
	muls	r2, r3
	adds	r2, r5, r2
	ldr	r1, [r2, #4]
	cmp	r3, #1
	bhi	.L38
	adds	r2, r3, #2
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	strb	r2, [r6]
	muls	r2, r7
	adds	r5, r5, r2
	ldr	r2, [r5, #4]
	adds	r3, r3, #1
	cmp	r2, r1
	bne	.L43
.L40:
	@ sp needed
	movs	r1, #0
	movs	r0, #0
	ldr	r3, .L44+8
	ldrsb	r1, [r3, r1]
	ldr	r3, .L44+12
	ldr	r5, .L44+16
	ldrsb	r0, [r3, r0]
	bl	.L16
	movs	r3, r4
	movs	r1, #0
	asrs	r0, r0, #8
	adds	r3, r3, #48
	strb	r0, [r3]
	movs	r0, #0
	ldr	r3, .L44+20
	ldrsb	r1, [r3, r1]
	ldr	r3, .L44+24
	ldrsb	r0, [r3, r0]
	bl	.L16
	adds	r4, r4, #49
	asrs	r0, r0, #8
	strb	r0, [r4]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L36:
	movs	r3, r5
	adds	r3, r3, #89
	ldrb	r3, [r3]
	strb	r3, [r7]
	ldr	r3, .L44+28
	b	.L42
.L38:
	subs	r0, r3, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	strb	r0, [r6]
	muls	r0, r7
	adds	r5, r5, r0
	ldr	r2, [r5, #4]
	cmp	r2, r1
	beq	.L40
	subs	r3, r3, #1
.L43:
	strb	r3, [r6]
	b	.L40
.L45:
	.align	2
.L44:
	.word	gMapAnimData
	.word	MapAnimProc_MoveCameraOntoSubject
	.word	PAU_mapFrontOffsY
	.word	PAU_mapFrontOffsX
	.word	ArcTan2
	.word	PAU_mapBackOffsY
	.word	PAU_mapBackOffsX
	.word	MapAnimProc_MoveCameraOntoTarget
	.size	PAU_swapMSInit, .-PAU_swapMSInit
	.align	1
	.global	PAU_swapMSPlay
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapMSPlay, %function
PAU_swapMSPlay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, lr}
	adds	r3, r3, #46
	ldrb	r2, [r3]
	movs	r3, #20
	movs	r1, #16
	muls	r2, r3
	ldr	r3, .L55
	adds	r3, r3, r2
	ldr	r3, [r3, #4]
	ldrsb	r1, [r3, r1]
	ldr	r3, .L55+4
	adds	r0, r0, #41
	ldrh	r3, [r3, #12]
	ldrb	r2, [r0]
	lsls	r1, r1, #4
	subs	r1, r1, r3
	lsls	r3, r2, #31
	bpl	.L47
	ldr	r3, .L55+8
	lsls	r2, r2, #30
	bmi	.L48
	ldr	r2, .L55+12
.L54:
	ldrh	r0, [r2]
.L53:
	bl	.L25
.L46:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L48:
	ldr	r2, .L55+16
	b	.L54
.L47:
	ldr	r3, .L55+20
	movs	r0, #0
	ldrsh	r0, [r3, r0]
	adds	r3, r0, #1
	beq	.L46
	lsls	r0, r0, #16
	ldr	r3, .L55+8
	lsrs	r0, r0, #16
	b	.L53
.L56:
	.align	2
.L55:
	.word	gMapAnimData
	.word	gGameState
	.word	PlaySpacialSoundMaybe
	.word	PAU_dualStrikeSkillActivationSound
	.word	PAU_dualGuardSkillActivationSound
	.word	PAU_swapBackActivationSound
	.size	PAU_swapMSPlay, .-PAU_swapMSPlay
	.align	1
	.global	PAU_infoWindowLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_infoWindowLoop, %function
PAU_infoWindowLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, lr}
	movs	r4, r0
	@ sp needed
	ldr	r3, [r0, #20]
	ldr	r3, [r3, #48]
	ldrb	r0, [r3, #2]
	ldr	r3, .L58
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #42
	ldrb	r1, [r3]
	ldr	r5, .L58+4
	str	r0, [sp]
	movs	r3, #0
	movs	r2, #8
	movs	r0, #2
	bl	.L16
	movs	r3, #180
	adds	r4, r4, #41
	ldrb	r1, [r4]
	lsls	r3, r3, #5
	str	r3, [sp]
	movs	r2, #8
	movs	r0, #0
	ldr	r3, .L58+8
	ldr	r4, .L58+12
	adds	r1, r1, #81
	bl	.L20
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.L59:
	.align	2
.L58:
	.word	GetUnit
	.word	PutUnitSpriteExt
	.word	gObj_16x16
	.word	ObjInsertSafe
	.size	PAU_infoWindowLoop, .-PAU_infoWindowLoop
	.align	1
	.global	PAU_dropOffsetMSInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_dropOffsetMSInit, %function
PAU_dropOffsetMSInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r4, r5, r6, lr}
	ldr	r4, .L70
	ldrb	r2, [r4]
	strh	r3, [r0, #42]
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	movs	r5, r0
	ldr	r3, .L70+4
	cmp	r2, #0
	beq	.L61
	movs	r2, r4
	adds	r2, r2, #76
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L61
	movs	r2, r4
	adds	r2, r2, #152
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L62
.L61:
	movs	r0, r5
	bl	.L25
.L60:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L62:
	ldr	r2, [r4, #72]
	str	r2, [r0, #64]
	movs	r2, r4
	adds	r2, r2, #148
	ldr	r0, [r2]
	adds	r4, r4, #224
	bl	.L25
	ldr	r3, [r4]
	movs	r1, r3
	ldr	r2, .L70+8
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r1, r1, #80
	str	r3, [r5, #68]
	strh	r2, [r1]
	ldr	r2, .L70+12
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r3, r3, #82
	strh	r2, [r3]
	b	.L60
.L71:
	.align	2
.L70:
	.word	gMoveUnitExtraDataArray
	.word	EndProc
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.size	PAU_dropOffsetMSInit, .-PAU_dropOffsetMSInit
	.align	1
	.global	PAU_setPairUpFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_setPairUpFlag, %function
PAU_setPairUpFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L73
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L74:
	.align	2
.L73:
	.word	PAU_pairUpBitsRAMAddress
	.size	PAU_setPairUpFlag, .-PAU_setPairUpFlag
	.align	1
	.global	PAU_unsetPairUpFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_unsetPairUpFlag, %function
PAU_unsetPairUpFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #127
	@ sp needed
	ldr	r3, .L76
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L77:
	.align	2
.L76:
	.word	PAU_pairUpBitsRAMAddress
	.size	PAU_unsetPairUpFlag, .-PAU_unsetPairUpFlag
	.align	1
	.global	PAU_getPairUpFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_getPairUpFlag, %function
PAU_getPairUpFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L79
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L80:
	.align	2
.L79:
	.word	PAU_pairUpBitsRAMAddress
	.size	PAU_getPairUpFlag, .-PAU_getPairUpFlag
	.align	1
	.global	PAU_isPairedUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_isPairedUp, %function
PAU_isPairedUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #12]
	str	r3, [sp, #4]
	movs	r3, #48
	ldr	r2, [sp, #4]
	movs	r5, r0
	tst	r2, r3
	beq	.L82
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L82
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L82
	ldr	r4, .L97
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L97+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L83
	movs	r1, r4
	movs	r0, r5
	bl	.L99
	ldr	r1, .L97+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L99
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L82
.L84:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L83:
	ldr	r3, .L97+12
	movs	r0, r7
	bl	.L25
	movs	r1, r4
	movs	r5, r0
	bl	.L99
	movs	r2, #1
	cmp	r0, #0
	bne	.L84
	ldr	r1, .L97+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L99
	movs	r2, #2
	cmp	r0, #0
	bne	.L84
.L82:
	movs	r2, #0
	b	.L84
.L98:
	.align	2
.L97:
	.word	DualStrikeID
	.word	SkillTester
	.word	DualGuardID
	.word	GetUnit
	.size	PAU_isPairedUp, .-PAU_isPairedUp
	.align	1
	.global	PAU_tryAddUnitToPairUpTargetList
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_tryAddUnitToPairUpTargetList, %function
PAU_tryAddUnitToPairUpTargetList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #11
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldrsb	r1, [r0, r1]
	movs	r0, #11
	ldr	r5, .L115
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L115+4
	bl	.L25
	cmp	r0, #0
	beq	.L100
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L100
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L100
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L100
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L100
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.L100
	ldr	r1, .L115+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L115+12
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L104
.L105:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L115+16
	bl	.L20
.L100:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L104:
	ldr	r1, .L115+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L105
	b	.L100
.L116:
	.align	2
.L115:
	.word	gUnitSubject
	.word	AreAllegiancesAllied
	.word	DualStrikeID
	.word	SkillTester
	.word	AddTarget
	.word	DualGuardID
	.size	PAU_tryAddUnitToPairUpTargetList, .-PAU_tryAddUnitToPairUpTargetList
	.align	1
	.global	PAU_forecastLoopSlideIn
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastLoopSlideIn, %function
PAU_forecastLoopSlideIn:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	str	r0, [sp, #4]
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r5, #16
	cmp	r3, #1
	beq	.L118
	adds	r5, r5, #4
.L118:
	ldr	r6, .L130
	ldr	r4, .L130+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L130+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L130+12
	bl	.L25
	ldr	r3, [sp, #4]
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L130+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r0, .L130+20
	ldrsb	r7, [r2, r3]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L130+24
	bl	PAU_isPairedUp
	subs	r3, r4, #1
	sbcs	r4, r4, r3
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldr	r3, [sp, #4]
	adds	r3, r3, #53
	ldrb	r3, [r3]
	adds	r4, r7, r4
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L121
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L130+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L130+32
	bl	.L99
	ldr	r3, .L130+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L130+8
.L129:
	bl	.L99
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L123
	strb	r3, [r2]
.L117:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L121:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L130+28
	ldr	r6, .L130+32
	bl	.L99
	ldr	r3, .L130+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L130+36
	movs	r3, r5
	b	.L129
.L123:
	movs	r3, #0
	ldr	r0, [sp, #4]
	strb	r3, [r2]
	ldr	r3, .L130+40
	bl	.L25
	b	.L117
.L131:
	.align	2
.L130:
	.word	gBg0MapBuffer
	.word	FillBgMap
	.word	gBg1MapBuffer
	.word	EnableBgSyncByMask
	.word	.LANCHOR0
	.word	gBattleTarget
	.word	gBattleActor
	.word	gpStatScreenPageBg0Map
	.word	BgMapCopyRect
	.word	33571372
	.word	BreakProcLoop
	.size	PAU_forecastLoopSlideIn, .-PAU_forecastLoopSlideIn
	.align	1
	.global	PAU_forecastLoopSlideOut
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastLoopSlideOut, %function
PAU_forecastLoopSlideOut:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	str	r0, [sp, #4]
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r5, #16
	cmp	r3, #1
	beq	.L133
	adds	r5, r5, #4
.L133:
	ldr	r6, .L145
	ldr	r4, .L145+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L145+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L145+12
	bl	.L25
	movs	r2, #54
	movs	r7, #4
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, r2]
	ldr	r3, .L145+16
	ldr	r0, .L145+20
	adds	r3, r3, r2
	ldrsb	r7, [r3, r7]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L145+24
	bl	PAU_isPairedUp
	subs	r3, r4, #1
	sbcs	r4, r4, r3
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldr	r3, [sp, #4]
	adds	r3, r3, #53
	ldrb	r3, [r3]
	adds	r4, r7, r4
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L136
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L145+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L145+32
	bl	.L99
	ldr	r3, .L145+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L145+8
.L144:
	bl	.L99
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L138
	strb	r3, [r2]
.L132:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L136:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L145+28
	ldr	r6, .L145+32
	bl	.L99
	ldr	r3, .L145+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L145+36
	movs	r3, r5
	b	.L144
.L138:
	movs	r4, #0
	ldr	r0, [sp, #4]
	strb	r4, [r2]
	ldr	r3, .L145+40
	bl	.L25
	movs	r1, r4
	ldr	r0, .L145
	ldr	r5, .L145+4
	bl	.L16
	movs	r1, r4
	ldr	r0, .L145+8
	bl	.L16
	b	.L132
.L146:
	.align	2
.L145:
	.word	gBg0MapBuffer
	.word	FillBgMap
	.word	gBg1MapBuffer
	.word	EnableBgSyncByMask
	.word	.LANCHOR0
	.word	gBattleTarget
	.word	gBattleActor
	.word	gpStatScreenPageBg0Map
	.word	BgMapCopyRect
	.word	33571372
	.word	BreakProcLoop
	.size	PAU_forecastLoopSlideOut, .-PAU_forecastLoopSlideOut
	.align	1
	.global	PAU_setSwitchFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_setSwitchFlag, %function
PAU_setSwitchFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L148
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L149:
	.align	2
.L148:
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_setSwitchFlag, .-PAU_setSwitchFlag
	.align	1
	.global	PAU_unsetSwitchFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_unsetSwitchFlag, %function
PAU_unsetSwitchFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r1, #127
	@ sp needed
	ldr	r3, .L151
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L152:
	.align	2
.L151:
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_unsetSwitchFlag, .-PAU_unsetSwitchFlag
	.align	1
	.global	PAU_getSwitchFlag
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_getSwitchFlag, %function
PAU_getSwitchFlag:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L154
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L155:
	.align	2
.L154:
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_getSwitchFlag, .-PAU_getSwitchFlag
	.align	1
	.global	PAU_getPairUpGauge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_getPairUpGauge, %function
PAU_getPairUpGauge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L157
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L158:
	.align	2
.L157:
	.word	PAU_pairUpBitsRAMAddress
	.size	PAU_getPairUpGauge, .-PAU_getPairUpGauge
	.align	1
	.global	PAU_setPairUpGauge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_setPairUpGauge, %function
PAU_setPairUpGauge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #127
	push	{r4, lr}
	ldr	r1, .L160
	@ sp needed
	ldr	r4, [r1]
	ldrb	r2, [r4]
	bics	r2, r3
	strb	r2, [r4]
	ldr	r2, [r1]
	ands	r3, r0
	ldrb	r0, [r2]
	orrs	r0, r3
	strb	r0, [r2]
	pop	{r4}
	pop	{r0}
	bx	r0
.L161:
	.align	2
.L160:
	.word	PAU_pairUpBitsRAMAddress
	.size	PAU_setPairUpGauge, .-PAU_setPairUpGauge
	.align	1
	.global	PAU_getBattleGauge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_getBattleGauge, %function
PAU_getBattleGauge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L163
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L164:
	.align	2
.L163:
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_getBattleGauge, .-PAU_getBattleGauge
	.align	1
	.global	PAU_setBattleGauge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_setBattleGauge, %function
PAU_setBattleGauge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #127
	push	{r4, lr}
	ands	r0, r3
	ldr	r3, .L167
	ldrb	r3, [r3]
	adds	r1, r3, #0
	cmp	r3, r0
	bls	.L166
	adds	r1, r0, #0
.L166:
	movs	r4, #127
	@ sp needed
	ldr	r3, .L167+4
	ldr	r0, [r3]
	ldrb	r2, [r0]
	bics	r2, r4
	strb	r2, [r0]
	ldr	r2, [r3]
	ldrb	r3, [r2]
	orrs	r3, r1
	strb	r3, [r2]
	pop	{r4}
	pop	{r0}
	bx	r0
.L168:
	.align	2
.L167:
	.word	PAU_gaugeSize
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_setBattleGauge, .-PAU_setBattleGauge
	.align	1
	.global	PAU_clearPairUpData
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_clearPairUpData, %function
PAU_clearPairUpData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, #0
	@ sp needed
	bl	PAU_setPairUpGauge
	bl	PAU_unsetPairUpFlag
	movs	r0, #0
	bl	PAU_setBattleGauge
	bl	PAU_unsetSwitchFlag
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	PAU_clearPairUpData, .-PAU_clearPairUpData
	.align	1
	.global	PAU_findPairUpBAnim
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_findPairUpBAnim, %function
PAU_findPairUpBAnim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L193
	sub	sp, sp, #20
	movs	r5, r0
	movs	r4, r1
	bl	.L25
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #4]
	movs	r3, #255
	ands	r3, r0
	movs	r0, r3
	str	r3, [sp, #12]
	ldr	r3, .L193+4
	bl	.L25
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L183:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1398
	b	.L171	@long jump
.LCB1398:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L172
	cmp	r2, #0
	bne	.L173
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L174
	ldr	r3, .L193+8
	movs	r0, r1
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L175
	ldr	r3, .L193+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L175:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L182
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L192:
	ldr	r3, .L193+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L182:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L190:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L173:
	cmp	r2, #1
	bne	.L174
	cmp	r3, #0
	bne	.L174
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L174
	ldr	r3, .L193+8
	ldr	r0, [sp, #4]
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L178
	ldr	r3, .L193+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L178:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L179
	ldr	r3, .L193+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L179:
	ldrh	r3, [r6, #2]
.L174:
	adds	r6, r6, #4
	b	.L183
.L172:
	cmp	r2, #0
	bne	.L180
	ldr	r3, .L193+8
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L181
	ldr	r3, .L193+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L181:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L182
	ldrb	r0, [r6]
	ldr	r3, .L193+4
	bl	.L25
	b	.L192
.L180:
	cmp	r2, #1
	bne	.L174
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L174
	cmp	r0, #9
	beq	.L174
	b	.L192
.L171:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L190
.L194:
	.align	2
.L193:
	.word	GetUnitEquippedWeapon
	.word	GetItemType
	.word	GetSpellAssocStructPtr
	.word	PAU_nosferatuReplacementSpellID
	.word	PAU_defaultMagicAnimsTable
	.size	PAU_findPairUpBAnim, .-PAU_findPairUpBAnim
	.align	1
	.global	PAU_scalePairUpPartner
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_scalePairUpPartner, %function
PAU_scalePairUpPartner:
	@ Function supports interworking.
	@ args = 8, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	movs	r7, r3
	add	r3, sp, #40
	ldmia	r3!, {r5}
	str	r2, [sp, #8]
	str	r1, [sp, #12]
	ldrh	r2, [r3]
	cmp	r0, #0
	beq	.L195
	movs	r3, #0
	ldr	r4, .L207
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L197
	cmp	r7, #0
	bne	.L198
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L207+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L99
	ldr	r3, .L207+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L205:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L206
.L197:
	cmp	r7, #0
	bne	.L200
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L207+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L99
	ldr	r3, .L207+8
	ldrh	r4, [r3]
	movs	r2, #58
	ldrsh	r1, [r5, r2]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	subs	r4, r0, r4
	movs	r0, #46
	ldrsh	r2, [r5, r0]
	str	r2, [sp]
	movs	r2, #88
	lsls	r4, r4, #16
	asrs	r4, r4, #16
.L206:
	movs	r0, #0
	bl	.L99
.L204:
	ldr	r3, .L207+12
	ldrh	r3, [r3]
	adds	r3, r3, r0
	ldr	r2, [sp, #8]
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r2, #4]
	movs	r3, #128
	lsls	r3, r3, #3
	strh	r3, [r2, #12]
	movs	r3, #0
	ldr	r1, [sp, #12]
	str	r3, [r2, #28]
	str	r1, [r2, #60]
	lsls	r3, r7, #13
	strh	r4, [r2, #2]
	lsls	r2, r7, #8
	orrs	r2, r3
	ldr	r3, .L207+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L207+20
	bl	.L25
.L195:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L198:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L207+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L99
	ldr	r3, .L207+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L205
.L200:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L207+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L207+8
	ldrh	r4, [r3]
	movs	r2, #60
	ldrsh	r1, [r5, r2]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	adds	r4, r4, r0
	movs	r0, #46
	ldrsh	r2, [r5, r0]
	lsls	r4, r4, #16
	str	r2, [sp]
	movs	r0, r6
	movs	r2, #88
	ldr	r5, .L207+4
	asrs	r4, r4, #16
	bl	.L16
	b	.L204
.L208:
	.align	2
.L207:
	.word	AffineSetOAMData
	.word	GetValueFromEasingFunction
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.word	-31104
	.word	DisplayAIS
	.size	PAU_scalePairUpPartner, .-PAU_scalePairUpPartner
	.align	1
	.global	PAU_initPairUpPartner
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_initPairUpPartner, %function
PAU_initPairUpPartner:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r7, r0
	sub	sp, sp, #36
	movs	r0, r2
	movs	r4, r1
	movs	r5, r2
	str	r3, [sp, #12]
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.LCB1743
	b	.L209	@long jump
.LCB1743:
	ldrb	r0, [r5, #27]
	ldr	r3, .L234
	bl	.L25
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L234+4
	ldr	r2, .L234+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1763
	b	.L209	@long jump
.LCB1763:
	ldr	r0, .L234+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1769
	b	.L209	@long jump
.LCB1769:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L234+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L234+20
	cmp	r2, #255
	beq	.L211
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L211:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L234+24
	str	r2, [sp, #20]
	bl	.L25
	ldr	r3, .L234+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L212
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L212:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L234+32
	ldrh	r3, [r7, #4]
	ldrh	r2, [r2]
	adds	r3, r3, r2
	ldr	r2, [sp, #4]
	strh	r3, [r2, #4]
	movs	r2, #132
	ldrh	r3, [r7, #8]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	ldr	r2, [sp, #4]
	strh	r3, [r2, #8]
	movs	r2, #224
	ldrh	r3, [r7, #12]
	lsls	r2, r2, #3
	ands	r3, r2
	ldr	r2, [sp, #4]
	ldrh	r2, [r2, #12]
	orrs	r3, r2
	ldr	r2, [sp, #4]
	strh	r3, [r2, #12]
	movs	r3, #0
	strh	r3, [r2, #14]
	ldrb	r3, [r7, #18]
	strb	r3, [r2, #18]
	movs	r2, #128
	ldr	r3, [r7, #44]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	ldr	r2, [sp, #4]
	str	r3, [r2, #44]
	ldr	r3, [sp, #12]
	cmp	r3, #0
	beq	.L213
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L213:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L234+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L234+20
	cmp	r3, #255
	beq	.L214
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L214:
	ldr	r3, .L234+24
	bl	.L25
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L234+32
	ldrh	r3, [r4, #4]
	ldrh	r2, [r2]
	adds	r3, r3, r2
	movs	r2, #132
	strh	r3, [r0, #4]
	ldrh	r3, [r4, #8]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	movs	r2, #224
	movs	r6, #0
	strh	r3, [r0, #8]
	ldrh	r3, [r4, #12]
	lsls	r2, r2, #3
	ands	r3, r2
	ldrh	r2, [r0, #12]
	orrs	r3, r2
	movs	r2, #128
	strh	r3, [r0, #12]
	strh	r6, [r0, #14]
	ldrb	r3, [r4, #18]
	strb	r3, [r0, #18]
	ldr	r3, [r4, #44]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	str	r3, [r0, #44]
	ldr	r3, [sp, #8]
	str	r3, [r0, #48]
	ldr	r3, .L234+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L234+40
	bl	.L25
	movs	r4, r0
	cmp	r0, r6
	bne	.L215
	ldr	r3, .L234+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L234+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L234+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L234+56
	ldr	r3, [r3]
	str	r3, [r0, #56]
	movs	r3, r0
	movs	r4, r0
	adds	r3, r3, #41
	str	r6, [r0, #60]
	str	r6, [r0, #64]
	str	r6, [r0, #68]
	str	r6, [r0, #72]
	str	r6, [r0, #76]
	str	r6, [r0, #80]
	str	r6, [r0, #88]
	strb	r6, [r3]
	strh	r6, [r0, #42]
.L215:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L234+60
	lsls	r6, r2, #16
	ldr	r3, [r3]
	lsrs	r6, r6, #16
	subs	r2, r0, r2
	adds	r3, r6, r3
	asrs	r2, r2, #1
	adds	r2, r2, r3
	lsls	r3, r2, #16
	asrs	r3, r3, #16
	mov	ip, r3
	ldr	r3, [sp, #4]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	movs	r2, #4
	ldrsh	r7, [r7, r2]
	lsls	r1, r3, #16
	subs	r6, r0, r6
	lsrs	r1, r1, #16
	lsls	r6, r6, #16
	subs	r3, r7, r3
	asrs	r6, r6, #16
	subs	r7, r7, r1
	asrs	r2, r6, #31
	lsls	r7, r7, #16
	asrs	r7, r7, #16
	adds	r0, r6, r2
	eors	r0, r2
	asrs	r3, r3, #1
	asrs	r2, r7, #31
	adds	r3, r1, r3
	adds	r1, r7, r2
	eors	r1, r2
	lsls	r0, r0, #16
	lsls	r1, r1, #16
	ldr	r2, [sp, #12]
	lsls	r3, r3, #16
	asrs	r0, r0, #16
	asrs	r1, r1, #16
	asrs	r3, r3, #16
	asrs	r0, r0, #1
	asrs	r1, r1, #1
	cmp	r2, #0
	beq	.L216
	ldr	r2, [sp, #4]
	str	r5, [r4, #72]
	movs	r5, r4
	str	r2, [r4, #68]
	mov	r2, ip
	adds	r5, r5, #80
	strh	r2, [r5]
	movs	r2, r4
	adds	r2, r2, #82
	strh	r3, [r2]
	ldr	r3, .L234+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L233:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L234+68
	bl	.L25
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L234+72
	bl	.L25
	adds	r4, r4, #84
	strh	r0, [r4]
.L209:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L216:
	ldr	r2, [sp, #4]
	str	r5, [r4, #64]
	movs	r5, r4
	str	r2, [r4, #60]
	mov	r2, ip
	adds	r5, r5, #76
	strh	r2, [r5]
	movs	r2, r4
	adds	r2, r2, #78
	strh	r3, [r2]
	ldr	r3, .L234+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L233
.L235:
	.align	2
.L234:
	.word	GetUnit
	.word	battleAnims
	.word	BA2_AB_UNCOMPFRAMEDATA
	.word	BA2_AB_UNCOMPOAMDATA
	.word	PAU_backupBAnimRoundScripts
	.word	gAISFrames_DummyNoFrames
	.word	CreateAIS
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.word	.LANCHOR0
	.word	ProcFind
	.word	ProcStart
	.word	33554436
	.word	33554440
	.word	33554444
	.word	bAnimCameraOffs
	.word	ArcTan2
	.word	Sqrt
	.word	__aeabi_idiv
	.size	PAU_initPairUpPartner, .-PAU_initPairUpPartner
	.align	1
	.global	PAU_dualStrikeAnim
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_dualStrikeAnim, %function
PAU_dualStrikeAnim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r7, .L247
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L247+4
	adds	r0, r0, #8
	bl	.L25
	subs	r4, r0, #0
	bne	.L237
	movs	r0, r5
	ldr	r3, .L247+8
	bl	.L25
.L236:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L237:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L247+12
	bl	.L25
	ldr	r3, .L247+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L247+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L239
	ldr	r3, .L247+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L239
	ldr	r3, .L247+28
	movs	r0, r5
	bl	.L25
	movs	r1, #1
	ldr	r3, .L247+32
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r7
	ldr	r3, .L247+36
	movs	r1, r4
	adds	r0, r0, #56
	bl	.L25
	movs	r3, #1
	ldr	r2, [sp, #4]
	lsls	r3, r3, r2
	movs	r2, r0
	adds	r2, r2, #41
	strb	r3, [r2]
	strh	r6, [r0, #42]
	ldrh	r3, [r5, #2]
	strh	r3, [r0, #44]
.L240:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L247+40
	ldrb	r2, [r2]
	strb	r2, [r3, #1]
	movs	r3, #8
	ldr	r1, [r4, #44]
	ldrh	r2, [r1]
	orrs	r2, r3
	strh	r2, [r1]
	ldr	r1, [r4, #48]
	ldrh	r2, [r1]
	orrs	r2, r3
	strh	r2, [r1]
	ldr	r1, [r4, #52]
	ldrh	r2, [r1]
	orrs	r2, r3
	strh	r2, [r1]
	ldr	r2, [r4, #56]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L236
.L239:
	movs	r3, #1
	movs	r2, r3
	ldr	r1, [sp, #4]
	lsls	r2, r2, r1
	movs	r1, r4
	adds	r1, r1, #43
	ldrb	r0, [r1]
	orrs	r2, r0
	strb	r2, [r1]
	adds	r2, r6, #1
	beq	.L240
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L247+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L16
	b	.L240
.L248:
	.align	2
.L247:
	.word	.LANCHOR0
	.word	ProcFind
	.word	StartEfxSureShotAnime
	.word	GetAISSubjectId
	.word	PAU_dualStrikeSkillActivationSound
	.word	gSomethingRelatedToAnimAndDistance
	.word	bAnimCameraTarget
	.word	GetOpponentFrontAIS
	.word	MoveBattleCameraOnto
	.word	ProcStart
	.word	PAU_dualBAnimSwapTime
	.word	PlaySoundAt
	.size	PAU_dualStrikeAnim, .-PAU_dualStrikeAnim
	.align	1
	.global	PAU_dualGuardAnim
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_dualGuardAnim, %function
PAU_dualGuardAnim:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r6, .L260
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L260+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L25
	subs	r5, r0, #0
	bne	.L250
	movs	r0, r4
	ldr	r3, .L260+8
	bl	.L25
.L249:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L250:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L260+12
	bl	.L25
	movs	r7, r5
	ldr	r3, .L260+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L260+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L252
	ldr	r3, .L260+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L252
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L260+28
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L260+32
	adds	r0, r0, #56
	bl	.L25
	movs	r2, #2
	ldr	r3, [sp, #12]
	eors	r2, r3
	movs	r3, #1
	lsls	r3, r3, r2
	movs	r2, r0
	adds	r2, r2, #41
	strb	r3, [r2]
	ldr	r3, [sp, #8]
	movs	r6, r0
	strh	r3, [r0, #42]
	ldr	r3, .L260+36
	movs	r0, r4
	bl	.L25
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L253:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L260+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L260+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L249
.L252:
	movs	r3, #2
	movs	r6, #1
	ldr	r2, [sp, #12]
	eors	r3, r2
	movs	r2, r6
	lsls	r2, r2, r3
	movs	r3, r2
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	ldr	r3, [sp, #8]
	adds	r3, r3, #1
	beq	.L253
	ldr	r3, .L260+36
	movs	r0, r4
	bl	.L25
	movs	r1, #128
	movs	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r3, [sp, #8]
	lsls	r0, r3, #16
	lsrs	r0, r0, #16
	movs	r3, r6
	lsls	r1, r1, #1
	ldr	r6, .L260+48
	bl	.L99
	b	.L253
.L261:
	.align	2
.L260:
	.word	.LANCHOR0
	.word	ProcFind
	.word	StartEfxGenericAnime
	.word	GetAISSubjectId
	.word	PAU_dualGuardSkillActivationSound
	.word	gSomethingRelatedToAnimAndDistance
	.word	bAnimCameraTarget
	.word	MoveBattleCameraOnto
	.word	ProcStart
	.word	GetOpponentFrontAIS
	.word	PAU_dualBAnimSwapTime
	.word	33554436
	.word	PlaySoundAt
	.size	PAU_dualGuardAnim, .-PAU_dualGuardAnim
	.align	1
	.global	PAU_setPriorityDuringLvlUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_setPriorityDuringLvlUp, %function
PAU_setPriorityDuringLvlUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r6, [r0, #92]
	ldr	r5, .L273
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L273+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L273+8
	bl	.L25
	cmp	r0, #0
	beq	.L262
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L265
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L265:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L262
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L262:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L274:
	.align	2
.L273:
	.word	-3073
	.word	.LANCHOR0
	.word	ProcFind
	.size	PAU_setPriorityDuringLvlUp, .-PAU_setPriorityDuringLvlUp
	.align	1
	.global	PAU_swapBAnimLocs
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapBAnimLocs, %function
PAU_swapBAnimLocs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #52
	str	r1, [sp, #20]
	adds	r2, r2, #41
	ldrb	r3, [r2]
	adds	r3, r3, #1
	strb	r3, [r2]
	ldr	r3, .L311
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L276
	ldr	r2, .L311+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L277
.L307:
	ldrb	r0, [r5, #27]
	ldr	r3, .L311+8
	bl	.L25
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L277
.L276:
	ldr	r2, .L311+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L307
.L277:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L278
	ldr	r3, [sp, #12]
	ldrh	r2, [r7, #10]
	ldrh	r3, [r3, #10]
	ldr	r1, [sp, #12]
	strh	r2, [r1, #10]
	strh	r3, [r7, #10]
	ldr	r2, [sp, #16]
	ldrh	r2, [r2, #10]
	ldrh	r3, [r6, #10]
	strh	r2, [r6, #10]
	ldr	r2, [sp, #16]
	strh	r3, [r2, #10]
	ldr	r3, .L311+16
	bl	.L25
.L278:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2561
	b	.L279	@long jump
.LCB2561:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L311+20
	bl	.L16
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L280
	movs	r3, r4
	adds	r3, r3, #90
	ldrb	r5, [r3]
	ldr	r3, [sp, #16]
	adds	r5, r3, r5
	movs	r3, r4
	adds	r3, r3, #84
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	movs	r3, r4
	adds	r3, r3, #80
	ldrh	r3, [r3]
	ldr	r2, [sp, #24]
	subs	r3, r3, r2
	lsls	r5, r5, #24
	lsls	r3, r3, #16
	lsrs	r5, r5, #24
	lsrs	r3, r3, #16
	str	r3, [sp, #20]
	lsls	r3, r5, #1
	str	r3, [sp, #28]
	ldr	r2, [sp, #28]
	ldr	r3, .L311+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L311+28
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L311+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L310:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L311+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L311+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L275:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L280:
	movs	r3, r4
	adds	r3, r3, #88
	ldrb	r5, [r3]
	ldr	r3, [sp, #16]
	adds	r5, r3, r5
	movs	r3, r4
	adds	r3, r3, #84
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	movs	r3, r4
	adds	r3, r3, #76
	ldrh	r3, [r3]
	ldr	r2, [sp, #24]
	subs	r3, r3, r2
	lsls	r5, r5, #24
	lsls	r3, r3, #16
	lsrs	r5, r5, #24
	lsrs	r3, r3, #16
	str	r3, [sp, #20]
	lsls	r3, r5, #1
	str	r3, [sp, #28]
	ldr	r2, [sp, #28]
	ldr	r3, .L311+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L311+28
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #78
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L311+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L310
.L279:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L311+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L311+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L311+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L311+48
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	movs	r1, #8
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #16]
	strh	r3, [r7, #16]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #16]
	strh	r3, [r2, #16]
	ldr	r3, [sp, #12]
	ldrh	r3, [r3]
	ldr	r2, [sp, #12]
	orrs	r3, r1
	strh	r3, [r2]
	movs	r2, r4
	ldrh	r3, [r6]
	orrs	r3, r1
	strh	r3, [r6]
	ldr	r3, [sp, #20]
	adds	r2, r2, #43
	cmp	r3, #0
	beq	.L282
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L283
.L308:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L283
.L282:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L308
.L283:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L284
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L311+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L285
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2809
	b	.L286	@long jump
.LCB2809:
	lsls	r3, r3, #28
	bmi	.LCB2815
	b	.L287	@long jump
.LCB2815:
.L285:
	movs	r0, r7
	ldr	r3, .L311+56
	bl	.L25
	ldr	r3, .L311+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L25
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L311+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2834
	b	.L289	@long jump
.LCB2834:
	ldr	r3, .L311+60
	movs	r0, r7
	bl	.L25
	ldr	r3, .L311+64
	bl	.L25
	cmp	r0, #0
	bne	.LCB2842
	b	.L289	@long jump
.LCB2842:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L311+68
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L311+72
	movs	r1, r4
	ldr	r3, .L311+76
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L311+80
	bl	.L25
.L284:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L311+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L311+88
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, r4
	adds	r1, r1, #80
	ldrh	r1, [r1]
	asrs	r3, r3, #1
	str	r1, [sp, #32]
	lsls	r3, r3, #16
	ldr	r1, [sp, #24]
	ldr	r0, [sp, #32]
	lsrs	r3, r3, #16
	subs	r1, r3, r1
	adds	r1, r0, r1
	lsls	r1, r1, #16
	asrs	r1, r1, #16
	mov	ip, r1
	movs	r1, r4
	adds	r1, r1, #82
	ldrh	r0, [r1]
	subs	r1, r1, #39
	str	r1, [sp, #28]
	ldrb	r1, [r1]
	asrs	r2, r2, #1
	str	r1, [sp, #36]
	lsls	r2, r2, #16
	ldr	r1, [sp, #24]
	lsrs	r2, r2, #16
	adds	r3, r1, r3
	subs	r5, r0, r2
	ldr	r1, [sp, #20]
	lsls	r5, r5, #16
	lsls	r3, r3, #16
	asrs	r5, r5, #16
	lsrs	r3, r3, #16
	cmp	r1, #0
	beq	.L290
	mov	r4, ip
	ldr	r1, [sp, #12]
	adds	r2, r2, r0
	strh	r2, [r1, #4]
	ldr	r2, [sp, #32]
	subs	r3, r2, r3
	strh	r4, [r1, #2]
	strh	r3, [r7, #2]
	movs	r3, #4
	strh	r5, [r7, #4]
.L309:
	ldr	r1, [sp, #36]
	bics	r1, r3
	adds	r3, r3, r3
	eors	r1, r3
	ldr	r3, [sp, #28]
	strb	r1, [r3]
	ldr	r3, [sp, #12]
	movs	r2, #2
	ldrsh	r3, [r3, r2]
	strh	r3, [r6, #2]
	ldr	r3, [sp, #12]
	movs	r2, #4
	ldrsh	r3, [r3, r2]
	strh	r3, [r6, #4]
	movs	r2, #2
	ldrsh	r3, [r7, r2]
	ldr	r2, [sp, #16]
	strh	r3, [r2, #2]
	movs	r2, #4
	ldrsh	r3, [r7, r2]
	ldr	r2, [sp, #16]
	strh	r3, [r2, #4]
	b	.L275
.L286:
	lsls	r3, r3, #30
	bpl	.LCB2942
	b	.L285	@long jump
.LCB2942:
.L287:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L288
	movs	r1, r3
.L288:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2958
	b	.L285	@long jump
.LCB2958:
	movs	r5, r3
	b	.L285
.L312:
	.align	2
.L311:
	.word	bAnimCameraOffs
	.word	gpUnitLeft_BattleStruct
	.word	GetUnit
	.word	gpUnitRight_BattleStruct
	.word	SortAISs
	.word	GetValueFromEasingFunction
	.word	gCosLookup
	.word	__aeabi_idiv
	.word	gSinLookup
	.word	33554436
	.word	gBattleAnimAnimationIndex
	.word	battleAnims
	.word	gpBattleAnimFrameStartLookup
	.word	gSomethingRelatedToAnimAndDistance
	.word	SwitchAISFrameDataFromBARoundType
	.word	GetAISCurrentRoundType
	.word	IsRoundTypeOffensive
	.word	MoveBattleCameraOnto
	.word	.LANCHOR0
	.word	ProcStart
	.word	ProcGoto
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
.L289:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L313
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L313+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L313+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L284
.L290:
	movs	r0, r4
	adds	r0, r0, #76
	ldrh	r0, [r0]
	ldr	r1, [sp, #12]
	subs	r3, r0, r3
	strh	r3, [r1, #2]
	adds	r4, r4, #78
	ldrh	r3, [r4]
	adds	r3, r2, r3
	strh	r3, [r1, #4]
	mov	r3, ip
	strh	r5, [r7, #4]
	strh	r3, [r7, #2]
	movs	r3, #1
	b	.L309
.L314:
	.align	2
.L313:
	.word	33554436
	.word	33554440
	.word	33554444
	.size	PAU_swapBAnimLocs, .-PAU_swapBAnimLocs
	.align	1
	.global	PAU_adjustBAnimLocs
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_adjustBAnimLocs, %function
PAU_adjustBAnimLocs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #60]
	push	{r4, r5, r6, lr}
	movs	r4, r0
	cmp	r3, #0
	beq	.L316
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L317
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L316:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L315
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L320
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L315:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L317:
	ldr	r2, .L328
	ldrh	r5, [r2]
	ldr	r2, .L328+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L318
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L316
.L318:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L316
.L320:
	ldr	r3, .L328
	ldr	r1, .L328+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L321
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L315
.L321:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L315
.L329:
	.align	2
.L328:
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.size	PAU_adjustBAnimLocs, .-PAU_adjustBAnimLocs
	.align	1
	.global	PAU_bAnimGaugeScrEntries
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_bAnimGaugeScrEntries, %function
PAU_bAnimGaugeScrEntries:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	str	r1, [sp]
	adds	r3, r3, #46
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L331
.L337:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L332
.L333:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L344
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L331:
	movs	r2, r0
	ldr	r1, .L344+4
	ldrb	r1, [r1]
	adds	r2, r2, #48
	ldrb	r2, [r2]
	str	r1, [sp, #4]
	movs	r1, #240
	lsls	r3, r3, #17
	lsls	r1, r1, #12
	adds	r3, r3, r1
	movs	r1, #0
	movs	r5, r1
	ldr	r7, .L344+8
	lsrs	r3, r3, #16
.L334:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L337
	cmp	r2, #0
	beq	.L341
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L335:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L334
.L341:
	movs	r5, #1
	b	.L335
.L332:
	ldr	r1, .L344+4
	ldrb	r5, [r1]
	ldr	r1, .L344+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L344+16
	lsrs	r3, r3, #16
.L338:
	cmp	r5, r1
	ble	.L333
	cmp	r2, #0
	beq	.L342
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L339:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L338
.L342:
	movs	r4, #1
	b	.L339
.L345:
	.align	2
.L344:
	.word	EnableBgSyncByMask
	.word	PAU_gaugeSize
	.word	gBg0MapBuffer+448
	.word	68091904
	.word	gBg0MapBuffer+506
	.size	PAU_bAnimGaugeScrEntries, .-PAU_bAnimGaugeScrEntries
	.align	1
	.global	PAU_bAnimGaugeAppearInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_bAnimGaugeAppearInit, %function
PAU_bAnimGaugeAppearInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r0
	ldrh	r3, [r0, #44]
	movs	r4, r0
	adds	r5, r5, #41
	cmp	r3, #1
	bls	.L347
	movs	r2, #240
	ldr	r3, .L355
	strh	r2, [r3, #44]
	ldr	r2, .L355+4
	ldr	r1, .L355+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L355+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L348:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L351
	ldr	r3, .L355+16
	ldr	r0, .L355+20
	bl	.L25
	ldr	r1, .L355+24
	movs	r2, #32
	ldr	r3, .L355+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L355+32
	bl	PAU_bAnimGaugeScrEntries
.L351:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L347:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L349
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L349:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L350
	movs	r0, r4
	ldr	r3, .L355+36
	bl	.L25
	b	.L348
.L350:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L355+40
	bl	.L25
	b	.L348
.L356:
	.align	2
.L355:
	.word	gLCDIOBuffer
	.word	12392
	.word	-4128832
	.word	4128830
	.word	prGetMiscIconGfxThumb
	.word	1540
	.word	100663840
	.word	CpuFastSet
	.word	65535
	.word	EndProc
	.word	ProcGoto
	.size	PAU_bAnimGaugeAppearInit, .-PAU_bAnimGaugeAppearInit
	.align	1
	.global	PAU_bAnimGaugeAppearLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_bAnimGaugeAppearLoop, %function
PAU_bAnimGaugeAppearLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r4, r5, r6, lr}
	movs	r5, r0
	adds	r5, r5, #41
	ldrb	r3, [r5]
	movs	r4, r0
	movs	r2, #56
	subs	r1, r3, #0
	beq	.L358
	movs	r2, #0
	movs	r1, #56
.L358:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L367
	movs	r0, #1
	bl	.L99
	ldr	r3, .L367+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L357
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L360
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L360:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L361
	ldr	r3, .L367+8
.L366:
	bl	.L25
.L357:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L361:
	ldr	r3, .L367+12
	b	.L366
.L368:
	.align	2
.L367:
	.word	GetValueFromEasingFunction
	.word	gLCDIOBuffer
	.word	EndProc
	.word	BreakProcLoop
	.size	PAU_bAnimGaugeAppearLoop, .-PAU_bAnimGaugeAppearLoop
	.align	1
	.global	PAU_bAnimGaugeUpdate
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_bAnimGaugeUpdate, %function
PAU_bAnimGaugeUpdate:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r7, #11
	ldr	r3, .L396
	ldr	r2, .L396+4
	ldrsb	r7, [r3, r7]
	lsls	r3, r1, #3
	ldr	r1, [r2]
	adds	r1, r1, r3
	movs	r3, #8
	ldrb	r4, [r1, #2]
	lsrs	r4, r4, #3
	ands	r4, r3
	ldrb	r3, [r1, #4]
	movs	r1, #255
	ldr	r5, .L396+8
	ldr	r2, .L396+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L370
	ldr	r5, .L396+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L371
	cmp	r4, #0
	beq	.L393
.L375:
	cmp	r3, r2
	beq	.L373
.L374:
	ldr	r2, .L396+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L385
	adds	r3, r3, #1
	b	.L395
.L371:
	cmp	r4, #0
	beq	.L375
.L393:
	cmp	r3, r1
	bne	.L374
.L373:
	movs	r3, #0
.L395:
	strb	r3, [r5]
.L385:
	cmp	r6, #0
	bne	.L383
	b	.L377
.L370:
	cmp	r6, #0
	beq	.L377
	ldr	r5, .L396+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L378
	cmp	r4, #0
	beq	.L389
.L391:
	cmp	r3, r2
	beq	.L380
.L383:
	movs	r2, r0
	ldr	r1, .L396+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L381
.L377:
	@ sp needed
	movs	r3, r0
	movs	r1, #0
	adds	r3, r3, #41
	strb	r1, [r3]
	movs	r3, #1
	strh	r3, [r0, #44]
	movs	r3, r0
	adds	r3, r3, #52
	strb	r1, [r3]
	ldr	r3, .L396+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L378:
	cmp	r4, #0
	beq	.L391
.L389:
	cmp	r3, r1
	bne	.L383
.L380:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L377
.L381:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L377
.L397:
	.align	2
.L396:
	.word	gBattleTarget
	.word	battleBuffer
	.word	DualGuardID
	.word	DualStrikeID
	.word	gpUnitLeft_BattleStruct
	.word	PAU_gaugeSize
	.word	gpUnitRight_BattleStruct
	.word	ProcGoto
	.size	PAU_bAnimGaugeUpdate, .-PAU_bAnimGaugeUpdate
	.align	1
	.global	PAU_mapAddSMS
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_mapAddSMS, %function
PAU_mapAddSMS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, .L432
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L398
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L398
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L432+4
	cmp	r4, #3
	bne	.L402
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L398
	movs	r3, #17
	ldr	r2, .L432+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L398
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L432+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	adds	r0, r0, r3
	ldr	r3, .L432+16
	bl	.L25
	movs	r2, #17
	movs	r3, #0
	ldrsb	r2, [r5, r2]
	ldrsb	r3, [r7, r3]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L432+20
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r7, .L432+24
	movs	r0, r5
	bl	.L434
	ldr	r3, .L432+28
	bl	.L25
	ldr	r3, .L432+32
	str	r0, [sp, #4]
	movs	r0, r6
	bl	.L25
	movs	r3, #15
	ands	r0, r3
	ldr	r3, [sp, #4]
	lsls	r0, r0, #12
	adds	r3, r3, #128
	adds	r0, r0, r3
	strh	r0, [r4, #8]
	movs	r0, r5
	bl	.L434
	lsls	r3, r0, #3
	ldr	r0, .L432+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L431:
	lsls	r1, r2, #23
	bpl	.L405
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L405:
	lsls	r3, r2, #7
	bpl	.L404
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L404:
	str	r4, [r5, #60]
.L398:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L402:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L398
	movs	r0, #17
	ldr	r3, .L432+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L398
	ldr	r3, .L432+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L432+40
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L432+44
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r6, .L432+24
	movs	r0, r5
	bl	.L99
	ldr	r3, .L432+28
	bl	.L25
	ldr	r3, .L432+32
	movs	r7, r0
	movs	r0, r5
	bl	.L25
	movs	r3, #15
	ands	r0, r3
	lsls	r0, r0, #12
	adds	r7, r7, #128
	adds	r0, r0, r7
	strh	r0, [r4, #8]
	movs	r0, r5
	bl	.L99
	lsls	r3, r0, #3
	ldr	r0, .L432+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L431
.L433:
	.align	2
.L432:
	.word	GetUnit
	.word	513
	.word	gMapUnit
	.word	PAU_mapBackOffsY
	.word	SMS_GetNewInfoStruct
	.word	PAU_mapBackOffsX
	.word	GetUnitSMSId
	.word	SMS_RegisterUsage
	.word	GetUnitBattleMapSpritePaletteIndex
	.word	gStandingMapSpriteData
	.word	PAU_mapFrontOffsY
	.word	PAU_mapFrontOffsX
	.size	PAU_mapAddSMS, .-PAU_mapAddSMS
	.align	1
	.global	PAU_puOffsetMSLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_puOffsetMSLoop, %function
PAU_puOffsetMSLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldrh	r3, [r0, #42]
	adds	r3, r3, #1
	lsls	r3, r3, #16
	ldrh	r2, [r0, #44]
	lsrs	r3, r3, #16
	movs	r4, r0
	strh	r3, [r0, #42]
	cmp	r2, r3
	bhi	.L436
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L437
	bl	.L25
.L436:
	@ sp needed
	movs	r0, #0
	ldrh	r6, [r4, #44]
	ldr	r3, .L437+4
	ldr	r5, .L437+8
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	ldr	r7, [r4, #52]
	ldrh	r3, [r7, #4]
	adds	r0, r0, r3
	strh	r0, [r7, #4]
	movs	r0, #0
	ldr	r3, .L437+12
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	ldrh	r3, [r7, #6]
	adds	r0, r0, r3
	strh	r0, [r7, #6]
	movs	r0, #0
	ldr	r3, .L437+16
	ldr	r4, [r4, #64]
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	movs	r3, r4
	adds	r3, r3, #80
	ldrh	r2, [r3]
	lsls	r0, r0, #4
	adds	r0, r0, r2
	strh	r0, [r3]
	movs	r0, #0
	ldr	r3, .L437+20
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	adds	r4, r4, #82
	ldrh	r3, [r4]
	lsls	r0, r0, #4
	adds	r0, r0, r3
	strh	r0, [r4]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L438:
	.align	2
.L437:
	.word	BreakProcLoop
	.word	PAU_mapFrontOffsX
	.word	__aeabi_idiv
	.word	PAU_mapFrontOffsY
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.size	PAU_puOffsetMSLoop, .-PAU_puOffsetMSLoop
	.align	1
	.global	PAU_ForEachProcExt
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_ForEachProcExt, %function
PAU_ForEachProcExt:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r5, r0
	movs	r6, r1
	movs	r7, r2
	ldr	r4, .L443
.L441:
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L440
	movs	r1, r7
	movs	r0, r4
	bl	.L99
.L440:
	ldr	r3, .L443+4
	adds	r4, r4, #108
	cmp	r4, r3
	bne	.L441
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L444:
	.align	2
.L443:
	.word	gProcStatePool
	.word	gProcStatePool+6912
	.size	PAU_ForEachProcExt, .-PAU_ForEachProcExt
	.align	1
	.global	PAU_muSortObjLayers
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_muSortObjLayers, %function
PAU_muSortObjLayers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r5, #0
	sub	sp, sp, #36
	ldr	r2, .L460
	ldr	r3, .L460+4
	add	r1, sp, #16
	add	r0, sp, #12
	str	r5, [sp, #12]
	movs	r4, r5
	bl	.L25
.L447:
	movs	r0, r5
	ldr	r3, .L460+8
	bl	.L25
	cmp	r0, #0
	beq	.L446
	movs	r1, #8
	add	r2, sp, #8
	lsls	r3, r4, #2
	adds	r2, r2, r1
	str	r0, [r2, r3]
	adds	r4, r4, #1
.L446:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L447
	movs	r0, #0
	subs	r2, r4, #1
	str	r2, [sp, #4]
	add	r3, sp, #16
.L448:
	ldr	r2, [sp, #4]
	cmp	r2, r0
	bgt	.L453
	movs	r3, #0
	movs	r2, #10
.L454:
	cmp	r4, r3
	bne	.L455
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L453:
	movs	r5, r3
	adds	r0, r0, #1
	str	r0, [sp]
.L449:
	ldr	r2, [sp]
	cmp	r4, r2
	bne	.L452
	adds	r3, r3, #4
	b	.L448
.L452:
	ldr	r2, [r3]
	movs	r1, r2
	adds	r1, r1, #78
	movs	r7, #0
	ldrsh	r1, [r1, r7]
	mov	ip, r1
	ldr	r1, [r5, #4]
	movs	r7, r1
	adds	r7, r7, #78
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	cmp	ip, r7
	bgt	.L450
	blt	.L451
	movs	r7, r2
	adds	r7, r7, #82
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	mov	ip, r7
	movs	r7, r1
	adds	r7, r7, #82
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	cmp	ip, r7
	bgt	.L450
	blt	.L451
	movs	r7, r2
	adds	r7, r7, #76
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	mov	ip, r7
	movs	r7, r1
	adds	r7, r7, #76
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	cmp	ip, r7
	bgt	.L450
	blt	.L451
	movs	r7, r2
	adds	r7, r7, #80
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	mov	ip, r7
	movs	r7, r1
	adds	r7, r7, #80
	movs	r6, #0
	ldrsh	r7, [r7, r6]
	cmp	ip, r7
	ble	.L451
.L450:
	str	r1, [r3]
	str	r2, [r5, #4]
.L451:
	ldr	r2, [sp]
	adds	r2, r2, #1
	str	r2, [sp]
	adds	r5, r5, #4
	b	.L449
.L455:
	movs	r5, #8
	add	r0, sp, #8
	lsls	r1, r3, #2
	adds	r0, r0, r5
	ldr	r1, [r0, r1]
	ldr	r1, [r1, #48]
	subs	r0, r2, r3
	strh	r0, [r1, #30]
	adds	r3, r3, #1
	b	.L454
.L461:
	.align	2
.L460:
	.word	83886084
	.word	CpuSet
	.word	MU_GetByIndex
	.size	PAU_muSortObjLayers, .-PAU_muSortObjLayers
	.align	1
	.global	PAU_MU_CreateTwo
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_MU_CreateTwo, %function
PAU_MU_CreateTwo:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L469
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L469+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L469+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L462
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L462
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L462
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L469+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	rsbs	r3, r3, #0
	movs	r0, r6
	ldr	r1, [sp, #12]
	ldr	r6, .L469+16
	bl	.L99
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	movs	r2, r5
	ldr	r3, .L469+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r2, #80
	lsls	r3, r3, #4
	strh	r3, [r2]
	ldr	r3, .L469+24
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	strh	r3, [r2, #2]
	movs	r2, r0
	ldr	r3, .L469+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r2, r2, #80
	strh	r3, [r2]
	ldr	r3, .L469+32
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r0, r0, #82
	strh	r3, [r0]
	bl	PAU_muSortObjLayers
.L462:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L470:
	.align	2
.L469:
	.word	MU_Create
	.word	GetUnit
	.word	PAU_showBothMapSprites
	.word	GetUnitMapSpritePaletteIndex
	.word	MU_CreateInternal
	.word	PAU_mapFrontOffsX
	.word	PAU_mapFrontOffsY
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.size	PAU_MU_CreateTwo, .-PAU_MU_CreateTwo
	.align	1
	.global	PAU_battleMuSortObjLayers
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_battleMuSortObjLayers, %function
PAU_battleMuSortObjLayers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L502
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L502+4
	adds	r3, r3, #94
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L472
	movs	r4, r3
	cmp	r3, #2
	bne	.L474
	ldr	r2, .L502+8
	ldr	r2, [r2]
	ldr	r1, [r2]
	movs	r2, #128
	movs	r5, r1
	lsls	r2, r2, #3
	ands	r5, r2
	adds	r4, r4, #2
	tst	r1, r2
	bne	.L474
	ldr	r2, .L502+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L474
	movs	r6, #20
.L476:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L502+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L475
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L475
	adds	r4, r4, #1
.L475:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L476
.L474:
	movs	r3, #0
.L479:
	cmp	r3, r4
	bne	.L480
	movs	r5, #0
	add	r3, sp, #28
.L481:
	subs	r2, r4, #1
	cmp	r2, r5
	bgt	.L486
	movs	r3, #0
	movs	r1, #20
.L487:
	cmp	r3, r4
	beq	.LCB4295
	b	.L488	@long jump
.LCB4295:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L472:
	ldr	r2, .L502+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L474
	movs	r5, #0
	movs	r6, #20
.L478:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L502+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L477
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L477
	adds	r4, r4, #1
.L477:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L478
	b	.L474
.L480:
	add	r2, sp, #28
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	b	.L479
.L486:
	movs	r2, r3
	adds	r5, r5, #1
	str	r5, [sp]
.L482:
	ldr	r1, [sp]
	cmp	r1, r4
	bne	.L485
	adds	r3, r3, #1
	b	.L481
.L485:
	movs	r0, #20
	ldrb	r1, [r3]
	muls	r0, r1
	str	r1, [sp, #4]
	ldr	r1, .L502+4
	ldr	r1, [r0, r1]
	str	r1, [sp, #8]
	ldrb	r1, [r1, #17]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	mov	ip, r1
	ldrb	r1, [r2, #1]
	str	r1, [sp, #12]
	movs	r1, #20
	movs	r7, #17
	ldr	r6, [sp, #12]
	muls	r1, r6
	ldr	r6, .L502+4
	ldr	r6, [r1, r6]
	ldrsb	r7, [r6, r7]
	cmp	ip, r7
	bgt	.L483
	blt	.L484
	ldr	r7, .L502+4
	adds	r0, r7, r0
	ldr	r0, [r0, #8]
	movs	r7, r0
	str	r0, [sp, #16]
	adds	r7, r7, #82
	movs	r0, #0
	ldrsh	r7, [r7, r0]
	ldr	r0, .L502+4
	adds	r1, r0, r1
	movs	r0, #82
	mov	ip, r0
	ldr	r1, [r1, #8]
	add	ip, ip, r1
	mov	r0, ip
	str	r1, [sp, #20]
	movs	r1, #0
	ldrsh	r0, [r0, r1]
	cmp	r7, r0
	bgt	.L483
	blt	.L484
	movs	r7, #16
	ldr	r0, [sp, #8]
	ldrb	r6, [r6, #16]
	ldrsb	r7, [r0, r7]
	lsls	r6, r6, #24
	asrs	r6, r6, #24
	cmp	r7, r6
	bgt	.L483
	blt	.L484
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	adds	r0, r0, #80
	adds	r1, r1, #80
	movs	r6, #0
	ldrsh	r0, [r0, r6]
	movs	r6, #0
	ldrsh	r1, [r1, r6]
	cmp	r0, r1
	ble	.L484
.L483:
	ldr	r1, [sp, #12]
	strb	r1, [r3]
	ldr	r1, [sp, #4]
	strb	r1, [r2, #1]
.L484:
	ldr	r1, [sp]
	adds	r1, r1, #1
	str	r1, [sp]
	adds	r2, r2, #1
	b	.L482
.L488:
	add	r2, sp, #28
	ldrb	r2, [r2, r3]
	muls	r2, r1
	ldr	r0, .L502+4
	adds	r2, r0, r2
	ldr	r2, [r2, #8]
	add	r0, sp, #24
	ldrb	r0, [r3, r0]
	ldr	r2, [r2, #48]
	adds	r3, r3, #1
	strh	r0, [r2, #30]
	b	.L487
.L503:
	.align	2
.L502:
	.word	117967114
	.word	gMapAnimData
	.word	battleBuffer
	.word	PAU_showBothMapSprites
	.size	PAU_battleMuSortObjLayers, .-PAU_battleMuSortObjLayers
	.align	1
	.global	PAU_swapMSLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapMSLoop, %function
PAU_swapMSLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r0
	push	{r4, r5, r6, r7, lr}
	movs	r6, #255
	movs	r4, r0
	ldrh	r3, [r0, #42]
	adds	r3, r3, #1
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r0, #42]
	adds	r2, r2, #48
	ldrb	r2, [r2]
	lsls	r7, r3, #4
	ands	r7, r6
	adds	r2, r2, r7
	ldr	r5, .L511
	ands	r2, r6
	lsls	r2, r2, #1
	ldrsh	r0, [r2, r5]
	sub	sp, sp, #20
	asrs	r1, r0, #6
	str	r1, [sp, #8]
	movs	r1, r4
	adds	r1, r1, #49
	ldrb	r1, [r1]
	adds	r1, r1, r7
	ands	r1, r6
	ldr	r7, .L511+4
	lsls	r1, r1, #1
	ldrsh	r6, [r1, r7]
	ldrsh	r1, [r1, r5]
	asrs	r1, r1, #6
	str	r1, [sp, #12]
	movs	r1, r4
	asrs	r6, r6, #6
	mov	ip, r6
	movs	r6, #20
	adds	r1, r1, #46
	str	r1, [sp, #4]
	ldrb	r1, [r1]
	muls	r1, r6
	ldr	r5, .L511+8
	adds	r1, r5, r1
	ldr	r1, [r1, #8]
	ldrsh	r2, [r2, r7]
	movs	r7, r1
	asrs	r2, r2, #6
	adds	r7, r7, #80
	strh	r2, [r7]
	movs	r7, r4
	ldr	r2, [sp, #8]
	adds	r1, r1, #82
	strh	r2, [r1]
	adds	r7, r7, #47
	ldrb	r2, [r7]
	muls	r2, r6
	adds	r2, r5, r2
	ldr	r2, [r2, #8]
	movs	r1, r2
	mov	r0, ip
	adds	r1, r1, #80
	strh	r0, [r1]
	ldr	r0, [sp, #12]
	strh	r0, [r1, #2]
	ldrh	r1, [r4, #44]
	lsrs	r1, r1, #1
	cmp	r3, r1
	bne	.L505
	adds	r2, r2, #78
	ldrh	r3, [r2]
	subs	r3, r3, #1
	strh	r3, [r2]
	bl	PAU_battleMuSortObjLayers
	ldrb	r3, [r7]
	muls	r6, r3
	adds	r6, r5, r6
	ldr	r3, [r6, #8]
	adds	r3, r3, #78
	ldrh	r2, [r3]
	adds	r2, r2, #1
	strh	r2, [r3]
.L505:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcc	.L504
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]
	movs	r3, #20
	muls	r2, r3
	adds	r2, r5, r2
	ldr	r2, [r2, #8]
	movs	r0, r2
	ldr	r1, .L511+12
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L511+16
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r2, r2, #82
	strh	r1, [r2]
	ldrb	r2, [r7]
	muls	r3, r2
	adds	r3, r5, r3
	ldr	r3, [r3, #8]
	movs	r0, r3
	ldr	r1, .L511+20
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L511+24
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	adds	r3, r3, #82
	lsls	r1, r1, #4
	strh	r1, [r3]
	movs	r3, r4
	adds	r3, r3, #41
	ldrb	r3, [r3]
	lsls	r1, r3, #30
	bmi	.L507
	adds	r5, r5, #88
.L510:
	mvns	r3, r3
	strb	r2, [r5]
	lsls	r3, r3, #30
	bne	.L509
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L511+28
	bl	.L25
.L509:
	movs	r0, r4
	ldr	r3, .L511+32
	bl	.L25
.L504:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L507:
	adds	r5, r5, #89
	b	.L510
.L512:
	.align	2
.L511:
	.word	gCosLookup
	.word	gSinLookup
	.word	gMapAnimData
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.word	PAU_mapFrontOffsX
	.word	PAU_mapFrontOffsY
	.word	ProcGoto
	.word	BreakProcLoop
	.size	PAU_swapMSLoop, .-PAU_swapMSLoop
	.align	1
	.global	PAU_MU_CritFlash_SpriteShakeLoop
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_MU_CritFlash_SpriteShakeLoop, %function
PAU_MU_CritFlash_SpriteShakeLoop:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r2, r0
	adds	r2, r2, #48
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r7, r3, #24
	lsrs	r7, r7, #24
	ldr	r6, [r0, #44]
	strb	r7, [r2]
	str	r0, [sp, #4]
	ldr	r0, [r6, #44]
	bl	PAU_isPairedUp
	ldr	r3, .L521
	ldrb	r3, [r3]
	movs	r4, r3
	subs	r5, r3, #0
	beq	.L514
	movs	r4, #0
	subs	r0, r0, #1
	lsls	r0, r0, #24
	movs	r5, r4
	lsrs	r0, r0, #24
	cmp	r0, #1
	bhi	.L514
	movs	r5, #0
	movs	r4, #0
	ldr	r3, .L521+4
	ldrsb	r5, [r3, r5]
	ldr	r3, .L521+8
	ldrsb	r4, [r3, r4]
.L514:
	adds	r1, r5, #2
	lsls	r3, r7, #31
	bmi	.L520
	subs	r1, r5, #2
.L520:
	lsls	r1, r1, #16
	movs	r2, r4
	movs	r0, r6
	ldr	r3, .L521+12
	asrs	r1, r1, #16
	bl	.L25
	cmp	r7, #11
	bls	.L513
	movs	r0, r6
	ldr	r3, .L521+12
	movs	r2, r4
	movs	r1, r5
	bl	.L25
	ldr	r0, [sp, #4]
	ldr	r3, .L521+16
	bl	.L25
.L513:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L522:
	.align	2
.L521:
	.word	PAU_showBothMapSprites
	.word	PAU_mapFrontOffsX
	.word	PAU_mapFrontOffsY
	.word	MU_SetDisplayOffset
	.word	BreakProcLoop
	.size	PAU_MU_CritFlash_SpriteShakeLoop, .-PAU_MU_CritFlash_SpriteShakeLoop
	.align	1
	.global	PAU_startSwapMSProc
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_startSwapMSProc, %function
PAU_startSwapMSProc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L532
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L524
	ldr	r3, .L532+4
	ldr	r3, [r3]
	ldr	r2, [r3]
	movs	r3, #128
	movs	r5, r2
	lsls	r3, r3, #3
	ands	r5, r3
	tst	r2, r3
	bne	.L524
	movs	r6, #255
	ldr	r3, .L532+8
	ldr	r3, [r3, #80]
	subs	r3, r3, #8
	ldr	r2, .L532+12
	ldrb	r0, [r3, #4]
	ands	r2, r6
	cmp	r0, r2
	bne	.L525
	ldr	r0, .L532+16
	ldr	r3, .L532+20
	bl	.L25
.L531:
	adds	r0, r0, #41
	strb	r4, [r0]
	movs	r4, r5
.L526:
	@ sp needed
	movs	r0, r4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L525:
	ldr	r3, .L532+24
	ands	r3, r6
	cmp	r0, r3
	bne	.L524
	ldr	r3, .L532+20
	ldr	r0, .L532+16
	bl	.L25
	movs	r3, #2
	orrs	r4, r3
	b	.L531
.L524:
	cmp	r4, #0
	beq	.L527
	ldr	r3, .L532+28
	bl	.L25
	movs	r4, #1
	b	.L526
.L527:
	movs	r0, r1
	ldr	r3, .L532+32
	bl	.L25
	b	.L526
.L533:
	.align	2
.L532:
	.word	PAU_showBothMapSprites
	.word	battleBuffer
	.word	gMapAnimData
	.word	DualStrikeID
	.word	PAU_swapMapSpriteProcInstr
	.word	ProcStartBlocking
	.word	DualGuardID
	.word	MapAnim_BeginSubjectFastAnim
	.word	EndProc
	.size	PAU_startSwapMSProc, .-PAU_startSwapMSProc
	.align	1
	.global	PAU_mapGaugeScrEntries
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_mapGaugeScrEntries, %function
PAU_mapGaugeScrEntries:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, r0
	ldr	r3, .L550
	ldr	r0, .L550+4
	sub	sp, sp, #20
	bl	.L25
	ldr	r3, .L550+8
	adds	r3, r3, #94
	ldrb	r2, [r3]
	ldr	r3, [r4, #52]
	adds	r3, r3, #46
	cmp	r2, #1
	bne	.L535
	ldrb	r1, [r3]
	subs	r1, r1, #1
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	str	r1, [sp, #4]
.L536:
	movs	r3, r4
	adds	r3, r3, #47
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L537
.L544:
	movs	r3, r4
	adds	r3, r3, #46
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L538
.L539:
	movs	r0, #1
	ldr	r3, .L550+12
	bl	.L25
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L535:
	ldrb	r3, [r3]
	movs	r1, r3
	subs	r1, r1, #10
	lsls	r1, r1, #16
	adds	r3, r3, #5
	str	r3, [sp, #4]
	lsrs	r1, r1, #16
	b	.L536
.L537:
	movs	r6, r4
	adds	r6, r6, #49
	str	r6, [sp, #12]
	ldr	r6, .L550+16
	movs	r5, #0
	mov	ip, r6
	ldr	r3, .L550+20
	subs	r2, r2, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #17
	lsrs	r2, r2, #16
	str	r3, [sp, #8]
	adds	r3, r2, r0
	adds	r2, r2, #1
	adds	r2, r0, r2
	lsls	r3, r3, #16
	lsls	r2, r2, #16
	lsrs	r3, r3, #16
	lsrs	r2, r2, #16
.L540:
	ldr	r6, [sp, #8]
	cmp	r6, r5
	ble	.L544
	ldr	r6, [sp, #12]
	ldrb	r7, [r6]
	ldr	r6, [r4, #52]
	adds	r6, r6, #47
	cmp	r7, r5
	bgt	.L541
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r2, [r7, r6]
.L542:
	adds	r5, r5, #1
	b	.L540
.L541:
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r3, [r7, r6]
	b	.L542
.L538:
	ldr	r3, .L550+20
	ldrb	r6, [r3]
	movs	r3, #128
	lsls	r3, r3, #3
	orrs	r3, r0
	subs	r2, r2, #1
	lsls	r3, r3, #16
	lsls	r2, r2, #17
	lsrs	r3, r3, #16
	lsrs	r2, r2, #16
	adds	r1, r3, r2
	movs	r7, r4
	adds	r2, r2, #1
	adds	r3, r3, r2
	movs	r2, #0
	lsls	r1, r1, #16
	lsls	r3, r3, #16
	ldr	r5, .L550+16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	adds	r7, r7, #48
.L545:
	cmp	r6, r2
	ble	.L539
	ldrb	r0, [r7]
	mov	ip, r0
	ldr	r0, [r4, #52]
	adds	r0, r0, #47
	ldrb	r0, [r0]
	lsls	r0, r0, #5
	cmp	ip, r2
	bgt	.L546
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r3, [r5, r0]
.L547:
	adds	r2, r2, #1
	b	.L545
.L546:
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r1, [r5, r0]
	b	.L547
.L551:
	.align	2
.L550:
	.word	GetIconTileIndex
	.word	1540
	.word	gMapAnimData
	.word	EnableBgSyncByMask
	.word	gBg0MapBuffer
	.word	PAU_gaugeSize
	.size	PAU_mapGaugeScrEntries, .-PAU_mapGaugeScrEntries
	.align	1
	.global	PAU_mapGaugeInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_mapGaugeInit, %function
PAU_mapGaugeInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, [r0, #20]
	@ sp needed
	movs	r1, #0
	str	r3, [r0, #52]
	bl	PAU_mapGaugeScrEntries
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	PAU_mapGaugeInit, .-PAU_mapGaugeInit
	.align	1
	.global	PAU_makePairUpTargetList
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_makePairUpTargetList, %function
PAU_makePairUpTargetList:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, #16
	@ sp needed
	movs	r5, #17
	ldr	r3, .L554
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L554+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L554+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L554+12
	ldr	r3, .L554+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L555:
	.align	2
.L554:
	.word	gUnitSubject
	.word	gMapRange
	.word	BmMapFill
	.word	PAU_tryAddUnitToPairUpTargetList
	.word	ForEachAdjacentUnit
	.size	PAU_makePairUpTargetList, .-PAU_makePairUpTargetList
	.align	1
	.global	PAU_infoWindowPositionUnit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_infoWindowPositionUnit, %function
PAU_infoWindowPositionUnit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r2]
	push	{r4, r5, r6, lr}
	movs	r4, r0
	ldrh	r0, [r3]
	ldr	r3, .L560
	movs	r5, r1
	bl	.L25
	ldr	r3, .L560+4
	bl	.L25
	cmp	r0, #39
	bhi	.L557
	ldr	r3, .L560+8
.L559:
	@ sp needed
	strh	r3, [r4, #42]
	movs	r3, r4
	adds	r3, r3, #42
	ldrb	r1, [r3]
	lsls	r5, r5, #3
	adds	r1, r1, r5
	adds	r1, r1, #8
	strb	r1, [r3]
	adds	r4, r4, #43
	ldrb	r3, [r4]
	subs	r3, r3, #16
	strb	r3, [r4]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L557:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L559
.L561:
	.align	2
.L560:
	.word	GetStringFromIndex
	.word	Text_GetStringTextWidth
	.word	6148
	.size	PAU_infoWindowPositionUnit, .-PAU_infoWindowPositionUnit
	.align	1
	.global	PAU_infoWindowDrawStats
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_infoWindowDrawStats, %function
PAU_infoWindowDrawStats:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	movs	r4, r1
	ldr	r1, .L579
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L579+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L579+8
	ldr	r3, .L579+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L579+16
	bl	.L25
	ldr	r3, .L579+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L563
	ldr	r3, .L579+24
	str	r3, [sp, #4]
.L563:
	movs	r7, #0
	ldr	r3, .L579+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L568:
	movs	r0, r5
	ldr	r3, .L579+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L579+36
	bl	.L25
	ldr	r3, .L579+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L579+44
	bl	.L25
	cmp	r7, #6
	bne	.L564
	ldr	r6, .L579+48
	ldr	r0, [sp, #8]
	bl	.L99
	ldr	r3, .L579+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L99
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L565
	adds	r3, r0, #0
.L565:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L566:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L570
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L571
	cmp	r4, #0
	blt	.L572
	movs	r2, #21
	cmp	r4, #0
	beq	.L573
	movs	r6, #4
	cmp	r4, #9
	ble	.L577
	cmp	r4, #99
	ble	.L575
.L578:
	movs	r0, #5
.L567:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L579+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L579+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L579+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L568
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L564:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L566
.L570:
	movs	r2, #20
	movs	r6, #3
	b	.L578
.L571:
	movs	r2, #20
	movs	r6, #3
.L575:
	movs	r0, #6
	b	.L567
.L572:
	movs	r2, #20
	movs	r6, #3
.L577:
	movs	r0, #7
	b	.L567
.L573:
	movs	r6, r4
	b	.L577
.L580:
	.align	2
.L579:
	.word	.LANCHOR1
	.word	memcpy
	.word	DualStrikeID
	.word	gActiveUnit
	.word	SkillTester
	.word	PAU_offStatBoost
	.word	PAU_defStatBoost
	.word	gBg0MapBuffer
	.word	Text_Clear
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	Text_Display
	.word	prMovGetter
	.word	DrawSpecialUiChar
	.word	Text_InsertNumberOr2Dashes
	.size	PAU_infoWindowDrawStats, .-PAU_infoWindowDrawStats
	.align	1
	.global	PAU_selectionOnConstruction
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionOnConstruction, %function
PAU_selectionOnConstruction:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r5, .L584
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L584+4
	adds	r0, r0, #48
	bl	.L25
	ldr	r3, .L584+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L584+12
	adds	r0, r0, #44
	bl	.L434
	movs	r6, #52
.L582:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L434
	cmp	r6, #108
	bne	.L582
	ldr	r0, .L584+16
	lsls	r0, r0, #16
	ldr	r3, .L584+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L584+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L584+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L584+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r1, #136
	movs	r2, #32
	ldr	r0, .L584+36
	lsls	r1, r1, #2
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L585:
	.align	2
.L584:
	.word	.LANCHOR1
	.word	ProcStart
	.word	Text_ResetTileAllocation
	.word	Text_InitClear
	.word	UM_PairUpBottom
	.word	GetStringFromIndex
	.word	StartBottomHelpText
	.word	memcpy
	.word	CopyToPaletteBuffer
	.word	gIconPalettes
	.size	PAU_selectionOnConstruction, .-PAU_selectionOnConstruction
	.align	1
	.global	PAU_selectionOnChange
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionOnChange, %function
PAU_selectionOnChange:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r5, r1
	movs	r4, r0
	ldrb	r1, [r1, #1]
	ldrb	r0, [r5]
	ldr	r3, .L593
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L593+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L593+8
	movs	r5, r0
	bl	.L25
	ldr	r3, [r4, #60]
	lsls	r2, r0, #3
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L593+12
	str	r0, [sp]
	bl	.L25
	ldr	r7, .L593+16
	ldr	r0, .L593+20
	movs	r1, r7
	ldr	r3, .L593+24
	bl	.L25
	ldr	r3, [sp]
	ldr	r0, .L593+28
	lsls	r6, r3, #1
	movs	r1, r7
	movs	r2, #0
	ldr	r3, .L593+32
	adds	r0, r6, r0
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L593+36
	adds	r0, r0, #44
	bl	.L25
	movs	r2, r5
	ldr	r0, [r4, #60]
	ldr	r1, [sp]
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L593+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L593+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L593+48
	movs	r0, r7
	bl	.L25
	movs	r1, r6
	ldr	r0, [r4, #60]
	ldr	r7, .L593+52
	adds	r1, r1, #70
	ldr	r3, .L593+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	ldr	r1, [sp]
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L593+60
	ldr	r3, .L593+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L593+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L587
	movs	r5, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r5, r5, #3
.L588:
	adds	r6, r6, #212
	adds	r6, r7, r6
	movs	r1, r5
	movs	r2, #0
	movs	r0, r6
	ldr	r3, .L593+72
	bl	.L25
	adds	r3, r5, #1
	movs	r1, r3
	movs	r2, #0
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r3, .L593+72
	bl	.L25
	movs	r0, r4
	ldr	r3, .L593+76
	bl	.L25
	movs	r3, #2
	ldr	r1, .L593+80
	movs	r2, r3
	ldr	r4, .L593+84
	bl	.L20
	movs	r0, r5
	ldr	r5, .L593+88
	bl	.L16
	movs	r4, r0
	ldr	r0, [sp, #4]
	bl	.L16
	ldr	r3, .L593+92
	ldrb	r2, [r3]
	ldr	r3, [sp]
	adds	r3, r3, #106
	lsls	r3, r3, #1
	strh	r4, [r7, r3]
	ldr	r3, [sp]
	adds	r3, r3, #107
	adds	r1, r4, #1
	lsls	r3, r3, #1
	strh	r1, [r7, r3]
	movs	r3, #0
	adds	r5, r4, #2
	adds	r1, r0, #1
	adds	r4, r4, #3
.L589:
	adds	r3, r3, #1
	adds	r6, r6, #64
	cmp	r2, r3
	bge	.L592
	@ sp needed
	movs	r0, #3
	ldr	r3, .L593+96
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L587:
	ldr	r4, .L593+100
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r5, .L593+104
	lsrs	r4, r4, #16
	b	.L588
.L592:
	cmp	r2, r3
	ble	.L590
	strh	r5, [r6]
	strh	r4, [r6, #2]
	b	.L589
.L590:
	strh	r0, [r6]
	strh	r1, [r6, #2]
	b	.L589
.L594:
	.align	2
.L593:
	.word	ChangeActiveUnitFacing
	.word	GetUnit
	.word	GetUnitInfoWindowX
	.word	ClearBG0BG1
	.word	gGenericBuffer
	.word	PAU_infoWindowTSA
	.word	Decompress
	.word	gBg1MapBuffer
	.word	BgMap_ApplyTsa
	.word	Text_Clear
	.word	Text_SetXCursor
	.word	GetStringFromIndex
	.word	Text_DrawString
	.word	gBg0MapBuffer
	.word	Text_Display
	.word	DualStrikeID
	.word	gActiveUnit
	.word	SkillTester
	.word	DrawIcon
	.word	prGetSkillIconGfxThumb
	.word	100749312
	.word	CopyTileGfxForObj
	.word	GetIconTileIndex
	.word	PAU_gaugeSize
	.word	EnableBgSyncByMask
	.word	DualGuardID
	.word	1538
	.size	PAU_selectionOnChange, .-PAU_selectionOnChange
	.align	1
	.global	PAU_selectionOnSelect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionOnSelect, %function
PAU_selectionOnSelect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L596
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L596+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L596+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L596+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L596+16
	ldr	r3, .L596+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L597:
	.align	2
.L596:
	.word	GetUnit
	.word	gActionData
	.word	gActiveUnit
	.word	PAU_actionID
	.word	gPal_UIFont
	.word	CopyToPaletteBuffer
	.size	PAU_selectionOnSelect, .-PAU_selectionOnSelect
	.align	1
	.global	PAU_selectionOnCancel
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionOnCancel, %function
PAU_selectionOnCancel:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r5, r1
	@ sp needed
	movs	r4, r0
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L599
	ldr	r3, .L599+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L599+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L600:
	.align	2
.L599:
	.word	gPal_UIFont
	.word	CopyToPaletteBuffer
	.word	GenericSelection_BackToUM
	.size	PAU_selectionOnCancel, .-PAU_selectionOnCancel
	.align	1
	.global	PAU_selectionHelpWindowSkillFunc
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionHelpWindowSkillFunc, %function
PAU_selectionHelpWindowSkillFunc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L605
	ldr	r3, .L605+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L605+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L605+12
	cmp	r0, #0
	bne	.L604
	ldr	r2, .L605+16
.L604:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L606:
	.align	2
.L605:
	.word	DualStrikeID
	.word	gActiveUnit
	.word	SkillTester
	.word	UM_PUTargetSkillDSDesc
	.word	UM_PUTargetSkillDGDesc
	.size	PAU_selectionHelpWindowSkillFunc, .-PAU_selectionHelpWindowSkillFunc
	.align	1
	.global	PAU_selectionHelpWindowGaugeFunc
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionHelpWindowGaugeFunc, %function
PAU_selectionHelpWindowGaugeFunc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r1, .L611
	ldr	r3, .L611+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L611+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L611+12
	cmp	r0, #0
	bne	.L610
	ldr	r2, .L611+16
.L610:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L612:
	.align	2
.L611:
	.word	DualStrikeID
	.word	gActiveUnit
	.word	SkillTester
	.word	UM_PUTargetGaugeDSDesc
	.word	UM_PUTargetGaugeDGDesc
	.size	PAU_selectionHelpWindowGaugeFunc, .-PAU_selectionHelpWindowGaugeFunc
	.align	1
	.global	PAU_selectionOnHelp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_selectionOnHelp, %function
PAU_selectionOnHelp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r1, #1
	push	{r4, lr}
	movs	r4, r0
	@ sp needed
	movs	r0, #0
	ldr	r3, .L614
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r3, [r4, #60]
	adds	r3, r3, #41
	ldrb	r2, [r3]
	movs	r1, r4
	movs	r3, #0
	ldr	r0, .L614+4
	ldr	r4, .L614+8
	lsrs	r2, r2, #3
	bl	.L20
	movs	r0, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L615:
	.align	2
.L614:
	.word	LoadDialogueBoxGfx
	.word	PAU_selectionHelpWindow
	.word	StartMovingHelpBoxExt
	.size	PAU_selectionOnHelp, .-PAU_selectionOnHelp
	.align	1
	.global	PAU_actionPairUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_actionPairUp, %function
PAU_actionPairUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r6, .L623
	ldr	r5, .L623+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L623+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L623+12
	ldrsb	r0, [r5, r0]
	bl	.L99
	movs	r6, r0
	ldr	r3, .L623+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L623+20
	bl	.L99
	ldr	r3, .L623+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L618
	ldr	r0, .L623+28
	ldr	r3, .L623+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L618
	ldr	r0, .L623+36
	ldr	r3, .L623+40
	adds	r0, r0, #84
	bl	.L25
.L618:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L623+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L623+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L624:
	.align	2
.L623:
	.word	gActionData
	.word	GetUnit
	.word	TryRemoveUnitFromBallista
	.word	GetSomeFacingDirection
	.word	MU_EndAll
	.word	Make6CKOIDO
	.word	PAU_showBothMapSprites
	.word	gProc_MoveUnit
	.word	ProcFind
	.word	.LANCHOR1
	.word	ProcStart
	.word	UnitRescue
	.word	HideUnitSMS
	.size	PAU_actionPairUp, .-PAU_actionPairUp
	.align	1
	.global	PAU_postActionPairUp
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_postActionPairUp, %function
PAU_postActionPairUp:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldr	r3, .L627
	ldrb	r2, [r3, #17]
	ldr	r3, .L627+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L625
	movs	r3, #64
	ldr	r2, [r0, #12]
	bics	r2, r3
	subs	r3, r3, #29
	orrs	r3, r2
	str	r3, [r0, #12]
.L625:
	@ sp needed
	bx	lr
.L628:
	.align	2
.L627:
	.word	gActionData
	.word	PAU_actionID
	.size	PAU_postActionPairUp, .-PAU_postActionPairUp
	.align	1
	.global	PAU_pairUpUsability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_pairUpUsability, %function
PAU_pairUpUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #133
	push	{r4, r5, r6, lr}
	ldr	r4, .L637
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L630
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.L630
	ldr	r1, .L637+4
	lsls	r1, r1, #24
	ldr	r0, [r4]
	ldr	r5, .L637+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L631
.L633:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L637+12
	bl	.L25
	cmp	r0, #0
	beq	.L630
	movs	r0, #1
.L632:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L631:
	ldr	r1, .L637+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L633
.L630:
	movs	r0, #3
	b	.L632
.L638:
	.align	2
.L637:
	.word	gActiveUnit
	.word	DualStrikeID
	.word	SkillTester
	.word	GetTargetListSize
	.word	DualGuardID
	.size	PAU_pairUpUsability, .-PAU_pairUpUsability
	.align	1
	.global	PAU_pairUpEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_pairUpEffect, %function
PAU_pairUpEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	ldr	r3, .L640
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L640+4
	ldr	r3, .L640+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L641:
	.align	2
.L640:
	.word	gActiveUnit
	.word	PAU_targetSelectionDefinition
	.word	StartTargetSelection
	.size	PAU_pairUpEffect, .-PAU_pairUpEffect
	.align	1
	.global	PAU_switchUsability
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_switchUsability, %function
PAU_switchUsability:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	bl	PAU_getSwitchFlag
	cmp	r0, #0
	bne	.L643
	ldr	r4, .L653
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L643
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #3
	beq	.L643
	ldr	r3, [r4]
	ldr	r3, [r3, #12]
	movs	r0, #1
	lsls	r3, r3, #20
	bpl	.L644
.L643:
	movs	r0, #3
.L644:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L654:
	.align	2
.L653:
	.word	gActiveUnit
	.size	PAU_switchUsability, .-PAU_switchUsability
	.align	1
	.global	PAU_switchEffect
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_switchEffect, %function
PAU_switchEffect:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r5, .L658
	ldr	r4, [r5]
	ldr	r3, .L658+4
	ldrb	r0, [r4, #27]
	bl	.L25
	movs	r2, #16
	movs	r1, #35
	ldr	r3, [r4, #12]
	bics	r3, r2
	orrs	r3, r1
	str	r3, [r4, #12]
	ldr	r3, [r0, #12]
	str	r0, [r5]
	bics	r3, r1
	orrs	r2, r3
	str	r2, [r0, #12]
	ldr	r3, .L658+8
	ldrb	r2, [r0, #11]
	strb	r2, [r3, #12]
	strb	r2, [r3, #13]
	bl	PAU_getSwitchFlag
	cmp	r0, #0
	beq	.L656
	bl	PAU_unsetSwitchFlag
.L657:
	@ sp needed
	movs	r0, #23
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L656:
	bl	PAU_setSwitchFlag
	ldr	r3, .L658+12
	movs	r2, #28
	ldrsh	r1, [r3, r2]
	movs	r2, #12
	ldrsh	r3, [r3, r2]
	ldr	r4, .L658+16
	subs	r1, r1, r3
	movs	r2, #1
	movs	r3, #20
	ldr	r0, .L658+20
	bl	.L20
	b	.L657
.L659:
	.align	2
.L658:
	.word	gActiveUnit
	.word	GetUnit
	.word	gActionData
	.word	gGameState
	.word	StartMenu_AndDoSomethingCommands
	.word	gMenu_UnitMenu
	.size	PAU_switchEffect, .-PAU_switchEffect
	.align	1
	.global	PAU_savePairUpData
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_savePairUpData, %function
PAU_savePairUpData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	mov	r3, sp
	adds	r5, r3, #6
	movs	r3, #0
	movs	r6, r0
	movs	r7, r1
	strh	r3, [r5]
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L661
	movs	r3, #128
	strh	r3, [r5]
.L661:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r4, [r5]
	orrs	r4, r0
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	strh	r4, [r5]
	bl	PAU_getBattleGauge
	lsls	r0, r0, #8
	movs	r2, r7
	movs	r1, r6
	orrs	r4, r0
	ldr	r3, .L665
	movs	r0, r5
	strh	r4, [r5]
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L666:
	.align	2
.L665:
	.word	WriteAndVerifySramFast
	.size	PAU_savePairUpData, .-PAU_savePairUpData
	.align	1
	.global	PAU_loadPairUpData
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_loadPairUpData, %function
PAU_loadPairUpData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, lr}
	mov	r1, sp
	ldr	r3, .L668
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L668+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L668+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L669:
	.align	2
.L668:
	.word	ReadSramFast
	.word	PAU_pairUpBitsRAMAddress
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_loadPairUpData, .-PAU_loadPairUpData
	.align	1
	.global	PAU_forecastStartHelpBox
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastStartHelpBox, %function
PAU_forecastStartHelpBox:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r6, r0
	ldr	r3, .L685
	ldr	r0, .L685+4
	bl	.L25
	subs	r5, r0, #0
	beq	.L671
	movs	r4, #52
	ldrsb	r4, [r0, r4]
	cmp	r4, #0
	bne	.L671
	movs	r7, r0
	adds	r7, r7, #53
	ldrb	r3, [r7]
	cmp	r3, #127
	bls	.L672
	ldr	r0, .L685+8
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r7]
	movs	r4, r0
	cmp	r3, #127
	bhi	.L673
.L672:
	ldr	r0, .L685+12
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r4, r4, r0
.L673:
	ldrb	r3, [r7]
	movs	r0, #0
	cmp	r3, #127
	bhi	.L674
	adds	r0, r0, #20
.L674:
	movs	r1, #1
	ldr	r3, .L685+16
	adds	r4, r0, r4
	rsbs	r1, r1, #0
	movs	r0, #0
	adds	r5, r5, #50
	bl	.L25
	ldrb	r3, [r5]
	cmp	r3, #1
	beq	.L675
	cmp	r3, #2
	beq	.L676
.L671:
	@ sp needed
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L675:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L685+20
.L684:
	ldr	r4, .L685+24
	bl	.L20
	b	.L671
.L676:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L685+28
	b	.L684
.L686:
	.align	2
.L685:
	.word	ProcFind
	.word	PAU_forecastProcInstr
	.word	gBattleTarget
	.word	gBattleActor
	.word	LoadDialogueBoxGfx
	.word	144707564
	.word	StartMovingHelpBoxExt
	.word	144707732
	.size	PAU_forecastStartHelpBox, .-PAU_forecastStartHelpBox
	.align	1
	.global	PAU_forecastDrawIconHFlip
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawIconHFlip, %function
PAU_forecastDrawIconHFlip:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r7, r2
	movs	r0, r1
	adds	r5, r4, #2
	adds	r6, r4, #4
	cmp	r1, #0
	bge	.L688
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L687:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L688:
	ldr	r3, .L690
	bl	.L25
	adds	r0, r0, r7
	lsls	r2, r0, #16
	lsrs	r2, r2, #16
	adds	r3, r2, #1
	strh	r2, [r4, #2]
	strh	r3, [r4]
	adds	r3, r2, #2
	adds	r2, r2, #3
	strh	r3, [r6, #62]
	strh	r2, [r5, #62]
	b	.L687
.L691:
	.align	2
.L690:
	.word	GetIconTileIndex
	.size	PAU_forecastDrawIconHFlip, .-PAU_forecastDrawIconHFlip
	.align	1
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawGaugeIcons.part.0, %function
PAU_forecastDrawGaugeIcons.part.0:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, .L699
	lsls	r1, r1, #17
	adds	r1, r1, r3
	lsrs	r3, r1, #16
	movs	r6, r2
	movs	r5, #0
	str	r0, [sp, #4]
	str	r3, [sp]
	bl	PAU_getPairUpGauge
	movs	r7, r5
	movs	r4, r0
.L693:
	ldr	r3, .L699+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L697
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L697:
	cmp	r4, #0
	beq	.L698
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L694:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L695
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L696:
	adds	r5, r5, #1
	b	.L693
.L698:
	movs	r7, #1
	b	.L694
.L695:
	movs	r2, r6
	ldr	r3, .L699+8
	bl	.L25
	b	.L696
.L700:
	.align	2
.L699:
	.word	100859904
	.word	PAU_gaugeSize
	.word	DrawIcon
	.size	PAU_forecastDrawGaugeIcons.part.0, .-PAU_forecastDrawGaugeIcons.part.0
	.align	1
	.global	PAU_forecastDrawGaugeIcons
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawGaugeIcons, %function
PAU_forecastDrawGaugeIcons:
	@ Function supports interworking.
	@ args = 4, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r0, r1
	movs	r1, r3
	add	r3, sp, #8
	ldrb	r2, [r3]
	cmp	r1, #0
	beq	.L701
	bl	PAU_forecastDrawGaugeIcons.part.0
.L701:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
	.size	PAU_forecastDrawGaugeIcons, .-PAU_forecastDrawGaugeIcons
	.align	1
	.global	PAU_forecastDrawContentsStandard
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawContentsStandard, %function
PAU_forecastDrawContentsStandard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #20
	str	r0, [sp, #12]
	ldr	r0, .L734
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L734+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L734+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB6544
	b	.L707	@long jump
.LCB6544:
	cmp	r0, #0
	bne	.LCB6546
	b	.L708	@long jump
.LCB6546:
	ldr	r1, .L734+12
	ldr	r0, .L734+16
	bl	.L25
	movs	r1, #12
.L732:
	movs	r3, #1
	str	r3, [sp, #4]
.L709:
	ldr	r6, .L734+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L734+24
	bl	.L434
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L734
	ldr	r3, .L734+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L711
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L711:
	movs	r3, #159
	ldr	r4, .L734+4
	lsls	r3, r3, #2
	ldr	r6, .L734+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L734+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L712
	ldr	r3, .L734+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	adds	r0, r0, #224
	adds	r0, r0, #255
	lsls	r0, r0, #1
	movs	r2, #0
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L712:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L734+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB6627
	b	.L713	@long jump
.LCB6627:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB6634
	b	.L713	@long jump
.LCB6634:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L714:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L734+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L734+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L716
	movs	r2, #255
.L716:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L734+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L734+4
	movs	r0, r7
	movs	r3, r4
	adds	r0, r0, #127
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r6, r0
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	movs	r3, r4
	adds	r0, r0, #255
	adds	r3, r3, #106
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r6, r0
	movs	r1, #2
	bl	.L16
	ldr	r3, .L734
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L734
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L734+44
	bl	.L99
	movs	r4, #255
	cmp	r0, #181
	beq	.L718
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L718:
	ldr	r3, .L734
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L734
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L99
	movs	r6, #255
	cmp	r0, #181
	beq	.L720
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L720:
	movs	r0, r7
	ldr	r3, .L734
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L734+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L722
	movs	r2, #255
.L722:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L734+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L734+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L734
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L734+48
	adds	r0, r7, r3
	movs	r2, r6
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r4, .L734+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L734+56
	adds	r1, r1, r5
	ldr	r0, .L734+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L734+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L734+68
	bl	.L20
	ldr	r3, .L734+4
	adds	r3, r3, #74
	ldr	r6, .L734+72
	ldrh	r0, [r3]
	bl	.L99
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L734+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L734
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L99
	movs	r2, #192
	movs	r1, r0
	subs	r0, r7, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L708:
	ldr	r1, .L734+80
	ldr	r0, .L734+16
	bl	.L25
	movs	r1, #11
.L733:
	str	r5, [sp, #4]
	b	.L709
.L707:
	cmp	r0, #0
	beq	.L710
	ldr	r1, .L734+84
	ldr	r0, .L734+16
	bl	.L25
	movs	r1, #11
	b	.L732
.L710:
	ldr	r1, .L734+88
	ldr	r0, .L734+16
	bl	.L25
	movs	r1, #10
	b	.L733
.L713:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L734
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L714
.L735:
	.align	2
.L734:
	.word	gBattleActor
	.word	gBattleTarget
	.word	BgMap_ApplyTsa
	.word	PAU_forecastWindowBothTSA
	.word	33571372
	.word	gpStatScreenPageBg0Map
	.word	BgMapFillRect
	.word	DrawUnitNameForBattleForecast
	.word	PAU_gaugeSize
	.word	PutBattleForecastItemName
	.word	sub_8004BB4
	.word	GetItemIndex
	.word	522
	.word	DrawSpecialUiStr
	.word	Text_Display
	.word	gaBattleForecastTextStructs
	.word	gaBattleForecastTextStructs+8
	.word	gaBattleForecastTextStructs+16
	.word	GetItemIconId
	.word	DrawIcon
	.word	PAU_forecastWindowRightTSA
	.word	PAU_forecastWindowLeftTSA
	.word	gTSA_BattleForecastStandard
	.size	PAU_forecastDrawContentsStandard, .-PAU_forecastDrawContentsStandard
	.align	1
	.global	PAU_forecastDrawContentsExtended
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawContentsExtended, %function
PAU_forecastDrawContentsExtended:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r7, .L757
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L757+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB6914
	b	.L737	@long jump
.LCB6914:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB6918
	b	.L738	@long jump
.LCB6918:
	ldr	r1, .L757+8
	ldr	r0, .L757+12
	ldr	r3, .L757+16
	bl	.L25
	movs	r1, #12
.L756:
	movs	r3, #1
.L754:
	ldr	r6, .L757+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L757+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L757
	ldr	r3, .L757+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L741
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L741:
	movs	r3, #223
	ldr	r5, .L757+4
	ldr	r6, .L757+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L757+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L742
	ldr	r3, .L757+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L757+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L742:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L757+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L743
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L743
	movs	r2, r5
	adds	r3, r3, #255
	adds	r2, r2, #90
	strh	r3, [r2]
	movs	r2, r5
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r5
	adds	r2, r2, #106
	strh	r3, [r2]
.L743:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L757+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L757+44
	cmp	r2, #99
	bls	.L744
	movs	r2, #255
.L744:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L757+4
	ldr	r6, .L757+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L757+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L757+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L757+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L757+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L757+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L757+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L757+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L757
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L746
	movs	r2, #255
.L746:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L757+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L757+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L99
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L99
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L757+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L99
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L757+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L99
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L757+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L99
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L757+68
	bl	.L99
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L757+72
	adds	r1, r1, r5
	ldr	r0, .L757+76
	bl	.L99
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L757+80
	bl	.L99
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L757+84
	bl	.L99
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L757+88
	bl	.L99
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L757+92
	bl	.L99
	ldr	r3, .L757+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L757+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L757+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L99
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L757+96
	bl	.L25
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L99
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L738:
	ldr	r1, .L757+104
	ldr	r0, .L757+12
	ldr	r3, .L757+16
	bl	.L25
	movs	r1, #11
.L755:
	ldr	r3, [sp]
	b	.L754
.L737:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L740
	ldr	r1, .L757+108
	ldr	r0, .L757+12
	ldr	r3, .L757+16
	bl	.L25
	movs	r1, #11
	b	.L756
.L740:
	ldr	r1, .L757+112
	ldr	r0, .L757+12
	ldr	r3, .L757+16
	bl	.L25
	movs	r1, #10
	b	.L755
.L758:
	.align	2
.L757:
	.word	gBattleActor
	.word	gBattleTarget
	.word	PAU_forecastWindowExtBothTSA
	.word	33571372
	.word	BgMap_ApplyTsa
	.word	gpStatScreenPageBg0Map
	.word	BgMapFillRect
	.word	DrawUnitNameForBattleForecast
	.word	PAU_gaugeSize
	.word	607
	.word	PutBattleForecastItemName
	.word	sub_8004BB4
	.word	638
	.word	766
	.word	522
	.word	650
	.word	778
	.word	DrawSpecialUiStr
	.word	Text_Display
	.word	gaBattleForecastTextStructs+24
	.word	gaBattleForecastTextStructs+32
	.word	gaBattleForecastTextStructs+8
	.word	gaBattleForecastTextStructs+16
	.word	gaBattleForecastTextStructs+40
	.word	GetItemIconId
	.word	DrawIcon
	.word	PAU_forecastWindowExtRightTSA
	.word	PAU_forecastWindowExtLeftTSA
	.word	gTSA_BattleForecastExtended
	.size	PAU_forecastDrawContentsExtended, .-PAU_forecastDrawContentsExtended
	.align	1
	.global	PAU_forecastDrawContents
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawContents, %function
PAU_forecastDrawContents:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r0
	movs	r3, #0
	adds	r2, r2, #52
	push	{r4, lr}
	str	r3, [r0, #44]
	strb	r3, [r2]
	movs	r3, r0
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #1
	beq	.L760
	cmp	r3, #2
	beq	.L761
.L759:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L760:
	ldr	r3, .L763
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L759
.L761:
	ldr	r3, .L763
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L759
.L764:
	.align	2
.L763:
	.word	BKSEL_SetupHitAndSuchStats
	.size	PAU_forecastDrawContents, .-PAU_forecastDrawContents
	.align	1
	.global	PAU_forecastOnNewBattle
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastOnNewBattle, %function
PAU_forecastOnNewBattle:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, lr}
	movs	r4, r0
	bl	PAU_forecastDrawContents
	ldr	r3, .L768
	bl	.L25
	movs	r3, r4
	lsls	r0, r0, #24
	adds	r3, r3, #53
	movs	r2, r4
	asrs	r0, r0, #24
	strb	r0, [r3]
	movs	r3, #0
	adds	r2, r2, #54
	strb	r3, [r2]
	cmp	r0, r3
	blt	.L766
	adds	r3, r3, #20
.L766:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L768+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L769:
	.align	2
.L768:
	.word	GetBattleForecastPanelSide
	.word	InitBattleForecastFramePalettes
	.size	PAU_forecastOnNewBattle, .-PAU_forecastOnNewBattle
	.align	1
	.global	PAU_forecastPutTilemaps
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastPutTilemaps, %function
PAU_forecastPutTilemaps:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r3, r4, r5, r6, r7, lr}
	movs	r3, r0
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r5, r0
	movs	r6, #16
	cmp	r3, #1
	beq	.L771
	adds	r6, r6, #4
.L771:
	ldr	r0, .L780
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L780+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L780+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L774
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L780+12
	ldr	r5, .L780+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L780+20
	ldr	r0, .L780+24
	bl	.L16
.L775:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L780+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L774:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L780+12
	ldr	r7, .L780+16
	bl	.L434
	ldr	r1, .L780+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L780+24
	adds	r1, r5, r1
	bl	.L434
	b	.L775
.L781:
	.align	2
.L780:
	.word	gBattleActor
	.word	gBattleTarget
	.word	gBg0MapBuffer
	.word	gpStatScreenPageBg0Map
	.word	BgMapCopyRect
	.word	gBg1MapBuffer
	.word	33571372
	.word	EnableBgSyncByMask
	.size	PAU_forecastPutTilemaps, .-PAU_forecastPutTilemaps
	.align	1
	.global	PAU_forecastPutWeaponTriangleArrows
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastPutWeaponTriangleArrows, %function
PAU_forecastPutWeaponTriangleArrows:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	adds	r3, r3, #53
	str	r3, [sp, #4]
	ldrb	r3, [r3]
	movs	r4, r0
	ldr	r7, .L798
	ldr	r6, .L798+4
	cmp	r3, #127
	bhi	.L783
.L785:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L784:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L786
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L786:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L789
	beq	.L790
	movs	r2, #2
.L789:
	subs	r2, r2, #2
	rsbs	r3, r2, #0
	adcs	r2, r2, r3
	movs	r0, #1
	movs	r3, r4
	movs	r1, #0
	adds	r3, r3, #49
	rsbs	r0, r0, #0
	ldrsb	r0, [r3, r0]
	ldrsb	r1, [r3, r1]
	adds	r0, r0, r5
	adds	r1, r1, #11
	lsls	r0, r0, #3
	ldr	r3, .L798+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L790:
	cmp	r7, #0
	beq	.L782
	movs	r0, #48
	movs	r1, #49
	ldrsb	r0, [r4, r0]
	ldrsb	r1, [r4, r1]
	adds	r0, r0, r5
	subs	r2, r7, #2
	adds	r1, r1, #1
	lsls	r0, r0, #3
	rsbs	r3, r2, #0
	adcs	r2, r2, r3
	lsls	r1, r1, #3
	ldr	r3, .L798+8
	adds	r0, r0, #19
	bl	.L25
.L782:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L783:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L784
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L785
	movs	r5, r0
	b	.L784
.L799:
	.align	2
.L798:
	.word	gBattleActor
	.word	gBattleTarget
	.word	UpdateStatArrowSprites
	.size	PAU_forecastPutWeaponTriangleArrows, .-PAU_forecastPutWeaponTriangleArrows
	.align	1
	.global	PAU_forecastPutMultipliers
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastPutMultipliers, %function
PAU_forecastPutMultipliers:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r6, r0
	adds	r6, r6, #53
	ldrb	r3, [r6]
	movs	r4, r0
	movs	r7, #0
	cmp	r3, #127
	bls	.L801
	ldr	r0, .L808
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L802
.L801:
	ldr	r0, .L808+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L802:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L808+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L808+12
	ldrsh	r2, [r3, r2]
	movs	r3, r4
	movs	r5, #0
	movs	r6, #1
	adds	r3, r3, #48
	ldrsb	r5, [r3, r5]
	ldrsb	r6, [r3, r6]
	adds	r3, r3, #32
	ldrb	r3, [r3]
	adds	r5, r5, r7
	lsls	r5, r5, #3
	asrs	r1, r1, #10
	asrs	r2, r2, #11
	subs	r5, r5, #3
	lsls	r6, r6, #3
	lsls	r3, r3, #24
	adds	r5, r5, r1
	adds	r6, r6, r2
	asrs	r3, r3, #24
	cmp	r3, #1
	ble	.L803
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L808+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L808+20
	ldr	r7, .L808+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L434
.L803:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L800
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L808+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L808+20
	ldr	r4, .L808+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L800:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L809:
	.align	2
.L808:
	.word	gBattleTarget
	.word	gBattleActor
	.word	gSinLookup
	.word	gCosLookup
	.word	8934
	.word	gObj_16x16
	.word	ObjInsertSafe
	.size	PAU_forecastPutMultipliers, .-PAU_forecastPutMultipliers
	.align	1
	.global	PAU_forecastLoopDisplay
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastLoopDisplay, %function
PAU_forecastLoopDisplay:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	ldr	r3, [r0, #44]
	adds	r3, r3, #1
	push	{r4, lr}
	str	r3, [r0, #44]
	movs	r3, r0
	adds	r3, r3, #52
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	movs	r4, r0
	asrs	r3, r3, #24
	beq	.L811
	ldr	r3, .L821
	bl	.L25
	cmp	r0, #0
	beq	.L812
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L812
	movs	r0, r4
	ldr	r3, .L821+4
.L820:
	bl	.L25
.L810:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L812:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L821+8
	bl	.L25
.L811:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L810
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L821+12
	b	.L820
.L822:
	.align	2
.L821:
	.word	GetBattleForecastPanelSide
	.word	BreakProcLoop
	.word	InitBattleForecastFramePalettes
	.word	UpdateBattleForecastEffectivenessPalettes
	.size	PAU_forecastLoopDisplay, .-PAU_forecastLoopDisplay
	.align	1
	.global	PAU_doesStatusSpellAffectGauge
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_doesStatusSpellAffectGauge, %function
PAU_doesStatusSpellAffectGauge:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r2, r0
	ldr	r3, .L828
.L824:
	movs	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bne	.L826
.L825:
	@ sp needed
	bx	lr
.L826:
	adds	r3, r3, #2
	cmp	r0, r2
	bne	.L824
	movs	r0, #1
	b	.L825
.L829:
	.align	2
.L828:
	.word	PAU_statusSpellAffectGaugeList
	.size	PAU_doesStatusSpellAffectGauge, .-PAU_doesStatusSpellAffectGauge
	.align	1
	.global	PAU_getBattleHitCount
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_getBattleHitCount, %function
PAU_getBattleHitCount:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L832
	movs	r6, r0
	movs	r4, #1
	bl	.L25
	lsls	r4, r4, r0
	movs	r0, r6
	lsls	r5, r4, #24
	lsrs	r5, r5, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L831
	bl	PAU_getBattleGauge
	ldr	r2, .L832+4
	ldrb	r2, [r2]
	adds	r3, r5, r0
	cmp	r3, r2
	blt	.L831
	adds	r5, r5, #1
	lsls	r5, r5, #24
	lsrs	r5, r5, #24
.L831:
	movs	r0, r5
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L833:
	.align	2
.L832:
	.word	BattleCheckBraveEffect
	.word	PAU_gaugeSize
	.size	PAU_getBattleHitCount, .-PAU_getBattleHitCount
	.align	1
	.global	PAU_battleGenerateRoundHits
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_battleGenerateRoundHits, %function
PAU_battleGenerateRoundHits:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	adds	r3, r3, #72
	ldrh	r3, [r3]
	movs	r4, r0
	movs	r5, r1
	cmp	r3, #0
	bne	.L835
.L844:
	movs	r0, #0
.L836:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L835:
	ldr	r7, .L860
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L837:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L844
	cmp	r6, #0
	beq	.L838
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L838
	bl	PAU_getBattleGauge
	ldr	r3, .L860+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L838
	ldr	r2, .L860+8
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L858:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L859:
	bl	PAU_setBattleGauge
.L839:
	ldr	r2, [r7]
	ldr	r1, [sp]
	ldr	r3, [r2]
	orrs	r1, r3
	lsls	r1, r1, #13
	lsrs	r3, r3, #19
	lsrs	r1, r1, #13
	lsls	r3, r3, #19
	orrs	r3, r1
	str	r3, [r2]
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L860+12
	bl	.L25
	cmp	r0, #0
	bne	.L845
	adds	r6, r6, #1
	b	.L837
.L838:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L840
	bl	PAU_getBattleGauge
	ldr	r3, .L860+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L840
	ldr	r2, .L860+16
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L858
.L840:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L841
.L842:
	bl	PAU_getBattleGauge
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L859
.L841:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L842
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L842
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L839
	b	.L842
.L845:
	movs	r0, #1
	b	.L836
.L861:
	.align	2
.L860:
	.word	gBattleHitIterator
	.word	PAU_gaugeSize
	.word	DualStrikeID
	.word	BattleGenerateHit
	.word	DualGuardID
	.size	PAU_battleGenerateRoundHits, .-PAU_battleGenerateRoundHits
	.align	1
	.global	PAU_clearRescueAndPairUpData
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_clearRescueAndPairUpData, %function
PAU_clearRescueAndPairUpData:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	bl	PAU_clearPairUpData
	movs	r4, #1
	movs	r5, #50
.L864:
	lsls	r0, r4, #24
	ldr	r3, .L872
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L863
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L863
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L872+4
	bl	.L25
.L863:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L864
	ldr	r3, .L872+8
	@ sp needed
	bl	.L25
	ldr	r3, .L872+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L873:
	.align	2
.L872:
	.word	GetUnit
	.word	SetUnitStatus
	.word	RefreshEntityBmMaps
	.word	SMS_UpdateFromGameData
	.size	PAU_clearRescueAndPairUpData, .-PAU_clearRescueAndPairUpData
	.align	1
	.global	PAU_minMov
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_minMov, %function
PAU_minMov:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	movs	r4, r0
	movs	r0, r1
	movs	r5, r1
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	cmp	r0, #1
	bhi	.L875
	ldr	r3, .L877
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L877+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L876
	adds	r2, r4, #0
.L876:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L875:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L878:
	.align	2
.L877:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC490:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC491:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_mapGaugeProcInstr
.LC492:
	.ascii	"PAU_MapGaugeProc\000"
	.global	PAU_swapMapSpriteProcInstr
.LC493:
	.ascii	"PAU_SwapMapSpriteProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC494:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC495:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC496:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC497:
	.ascii	"PAU_AISProc\000"
	.global	NOSFERATUSPELL
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 128
	.type	offsetLut.1, %object
	.size	offsetLut.1, 4
offsetLut.1:
	.ascii	"\006\010\011\012"
	.type	offsetLut.0, %object
	.size	offsetLut.0, 4
offsetLut.0:
	.ascii	"\011\010\006\000"
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 48
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC497
	.short	14
	.short	1
	.word	0
	.short	2
	.short	0
	.word	PAU_haltBAnims
	.short	11
	.short	0
	.word	0
	.short	3
	.short	0
	.word	PAU_adjustBAnimLocs
	.short	0
	.short	0
	.word	0
	.type	PAU_delayAISProcInstr, %object
	.size	PAU_delayAISProcInstr, 104
PAU_delayAISProcInstr:
	.short	1
	.short	0
	.word	.LC496
	.short	14
	.short	0
	.word	0
	.short	11
	.short	0
	.word	0
	.short	3
	.short	0
	.word	PAU_waitUntilCameraStops
	.short	14
	.short	10
	.word	0
	.short	2
	.short	0
	.word	PAU_applyStateMask
	.short	12
	.short	2
	.word	0
	.short	11
	.short	1
	.word	0
	.short	3
	.short	0
	.word	PAU_waitUntilCameraStops
	.short	14
	.short	10
	.word	0
	.short	2
	.short	0
	.word	PAU_enableAISes
	.short	11
	.short	2
	.word	0
	.short	0
	.short	0
	.word	0
.LC0:
	.short	1267
	.short	1260
	.short	1261
	.short	1263
	.short	1264
	.short	1262
	.short	1270
	.space	2
	.type	PAU_infoWindowDisplayProcInstr, %object
	.size	PAU_infoWindowDisplayProcInstr, 24
PAU_infoWindowDisplayProcInstr:
	.short	1
	.short	0
	.word	.LC491
	.short	3
	.short	0
	.word	PAU_infoWindowLoop
	.short	0
	.short	0
	.word	0
.LC1:
	.short	12595
	.short	8479
	.short	4202
	.short	9870
	.short	5033
	.short	3427
	.type	PAU_offsetMapSpriteProcInstr, %object
	.size	PAU_offsetMapSpriteProcInstr, 80
PAU_offsetMapSpriteProcInstr:
	.short	1
	.short	0
	.word	.LC494
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_puOffsetMSInit
	.short	3
	.short	0
	.word	PAU_puOffsetMSLoop
	.short	12
	.short	0
	.word	0
	.short	11
	.short	1
	.word	0
	.short	2
	.short	0
	.word	PAU_dropOffsetMSInit
	.short	3
	.short	0
	.word	PAU_dropOffsetMSLoop
	.short	11
	.short	0
	.word	0
	.short	0
	.short	0
	.word	0
	.type	ITEM_MONSTER_STONE, %object
	.size	ITEM_MONSTER_STONE, 1
ITEM_MONSTER_STONE:
	.byte	-75
	.space	3
	.type	PAU_forecastProcInstr, %object
	.size	PAU_forecastProcInstr, 128
PAU_forecastProcInstr:
	.short	1
	.short	0
	.word	.LC490
	.short	4
	.short	0
	.word	BKSEL_Destructor
	.short	2
	.short	0
	.word	ClearBG0BG1
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	BKSEL_InitGfx
	.short	11
	.short	0
	.word	0
	.short	20
	.short	0
	.word	MapEventEngineExists_
	.short	2
	.short	0
	.word	PAU_forecastOnNewBattle
	.short	3
	.short	0
	.word	PAU_forecastLoopSlideIn
	.short	2
	.short	0
	.word	134443749
	.short	3
	.short	0
	.word	PAU_forecastLoopDisplay
	.short	3
	.short	0
	.word	PAU_forecastLoopSlideOut
	.short	12
	.short	0
	.word	0
	.short	11
	.short	1
	.word	0
	.short	3
	.short	0
	.word	PAU_forecastLoopSlideOut
	.short	0
	.short	0
	.word	0
	.type	PAU_mapGaugeProcInstr, %object
	.size	PAU_mapGaugeProcInstr, 48
PAU_mapGaugeProcInstr:
	.short	1
	.short	0
	.word	.LC492
	.short	14
	.short	0
	.word	0
	.short	11
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_mapGaugeInit
	.short	16
	.short	0
	.word	0
	.short	0
	.short	0
	.word	0
	.type	PAU_swapMapSpriteProcInstr, %object
	.size	PAU_swapMapSpriteProcInstr, 160
PAU_swapMapSpriteProcInstr:
	.short	1
	.short	0
	.word	.LC493
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_swapMSInit
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_swapMSPlay
	.short	3
	.short	0
	.word	PAU_swapMSLoop
	.short	2
	.short	0
	.word	PAU_swapMSEnd
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	MapAnim_BeginSubjectFastAnim
	.short	12
	.short	0
	.word	0
	.short	11
	.short	1
	.word	0
	.short	14
	.short	16
	.word	0
	.short	2
	.short	0
	.word	MapAnimProc_MoveCameraOntoSubject
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_swapMSEnd
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	MapAnim_BeginSubjectFastAnim
	.short	11
	.short	0
	.word	0
	.short	14
	.short	0
	.word	0
	.short	0
	.short	0
	.word	0
	.type	PAU_bAnimGaugeProcInstr, %object
	.size	PAU_bAnimGaugeProcInstr, 64
PAU_bAnimGaugeProcInstr:
	.short	1
	.short	0
	.word	.LC495
	.short	14
	.short	0
	.word	0
	.short	11
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_bAnimGaugeAppearInit
	.short	3
	.short	0
	.word	PAU_bAnimGaugeAppearLoop
	.short	11
	.short	1
	.word	0
	.short	16
	.short	0
	.word	0
	.short	0
	.short	0
	.word	0
	.type	NOSFERATUSPELL, %object
	.size	NOSFERATUSPELL, 2
NOSFERATUSPELL:
	.short	30
	.ident	"GCC: (devkitARM release 55) 10.2.0"
	.text
	.code 16
	.align	1
.L25:
	bx	r3
.L20:
	bx	r4
.L16:
	bx	r5
.L99:
	bx	r6
.L434:
	bx	r7

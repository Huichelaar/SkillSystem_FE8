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
	ldr	r5, .L72
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L72+4
	bl	.L25
	cmp	r0, #0
	beq	.L57
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L57
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L57
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L57
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L57
	ldr	r1, .L72+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L72+12
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L61
.L62:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L72+16
	bl	.L20
.L57:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L61:
	ldr	r1, .L72+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L62
	b	.L57
.L73:
	.align	2
.L72:
	.word	gUnitSubject
	.word	AreAllegiancesAllied
	.word	DualStrikeID
	.word	SkillTester
	.word	AddTarget
	.word	DualGuardID
	.size	PAU_tryAddUnitToPairUpTargetList, .-PAU_tryAddUnitToPairUpTargetList
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
	ldr	r3, .L75
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #42
	ldrb	r1, [r3]
	ldr	r5, .L75+4
	str	r0, [sp]
	movs	r3, #0
	movs	r2, #8
	movs	r0, #2
	bl	.L16
	movs	r3, #140
	adds	r4, r4, #41
	ldrb	r1, [r4]
	lsls	r3, r3, #5
	str	r3, [sp]
	movs	r2, #8
	movs	r0, #0
	ldr	r3, .L75+8
	ldr	r4, .L75+12
	adds	r1, r1, #81
	bl	.L20
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.L76:
	.align	2
.L75:
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
	ldr	r4, .L87
	ldrb	r2, [r4]
	strh	r3, [r0, #42]
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	movs	r5, r0
	ldr	r3, .L87+4
	cmp	r2, #0
	beq	.L78
	movs	r2, r4
	adds	r2, r2, #76
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L78
	movs	r2, r4
	adds	r2, r2, #152
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L79
.L78:
	movs	r0, r5
	bl	.L25
.L77:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L79:
	ldr	r2, [r4, #72]
	str	r2, [r0, #64]
	movs	r2, r4
	adds	r2, r2, #148
	ldr	r0, [r2]
	adds	r4, r4, #224
	bl	.L25
	ldr	r3, [r4]
	movs	r1, r3
	ldr	r2, .L87+8
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r1, r1, #80
	str	r3, [r5, #68]
	strh	r2, [r1]
	ldr	r2, .L87+12
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r3, r3, #82
	strh	r2, [r3]
	b	.L77
.L88:
	.align	2
.L87:
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
	ldr	r3, .L90
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L91:
	.align	2
.L90:
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
	ldr	r3, .L93
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L94:
	.align	2
.L93:
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
	ldr	r3, .L96
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L97:
	.align	2
.L96:
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
	beq	.L99
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L99
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L99
	ldr	r4, .L114
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L114+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L100
	movs	r1, r4
	movs	r0, r5
	bl	.L116
	ldr	r1, .L114+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L116
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L99
.L101:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L100:
	ldr	r3, .L114+12
	movs	r0, r7
	bl	.L25
	movs	r1, r4
	movs	r5, r0
	bl	.L116
	movs	r2, #1
	cmp	r0, #0
	bne	.L101
	ldr	r1, .L114+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L116
	movs	r2, #2
	cmp	r0, #0
	bne	.L101
.L99:
	movs	r2, #0
	b	.L101
.L115:
	.align	2
.L114:
	.word	DualStrikeID
	.word	SkillTester
	.word	DualGuardID
	.word	GetUnit
	.size	PAU_isPairedUp, .-PAU_isPairedUp
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
	bl	.L116
	ldr	r3, .L130+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L130+8
.L129:
	bl	.L116
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
	bl	.L116
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
	bl	.L116
	ldr	r3, .L145+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L145+8
.L144:
	bl	.L116
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
	bl	.L116
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
	ldr	r3, .L148
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L149:
	.align	2
.L148:
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
	ldr	r1, .L151
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
.L152:
	.align	2
.L151:
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
	ldr	r3, .L154
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L155:
	.align	2
.L154:
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
	@ link register save eliminated.
	ldr	r3, .L158
	ldr	r1, [r3]
	ldr	r3, .L158+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L157
	adds	r3, r0, #0
.L157:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L159:
	.align	2
.L158:
	.word	PAU_pairUpBattleGaugeRAMAddress
	.word	PAU_gaugeSize
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
	ldr	r3, .L184
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
	ldr	r3, .L184+4
	bl	.L25
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L174:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1306
	b	.L162	@long jump
.LCB1306:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L163
	cmp	r2, #0
	bne	.L164
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L165
	ldr	r3, .L184+8
	movs	r0, r1
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L166
	ldr	r3, .L184+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L166:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L173
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L183:
	ldr	r3, .L184+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L173:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L181:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L164:
	cmp	r2, #1
	bne	.L165
	cmp	r3, #0
	bne	.L165
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L165
	ldr	r3, .L184+8
	ldr	r0, [sp, #4]
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L169
	ldr	r3, .L184+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L169:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L170
	ldr	r3, .L184+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L170:
	ldrh	r3, [r6, #2]
.L165:
	adds	r6, r6, #4
	b	.L174
.L163:
	cmp	r2, #0
	bne	.L171
	ldr	r3, .L184+8
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L172
	ldr	r3, .L184+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L172:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L173
	ldrb	r0, [r6]
	ldr	r3, .L184+4
	bl	.L25
	b	.L183
.L171:
	cmp	r2, #1
	bne	.L165
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L165
	cmp	r0, #9
	beq	.L165
	b	.L183
.L162:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L181
.L185:
	.align	2
.L184:
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
	beq	.L186
	movs	r3, #0
	ldr	r4, .L198
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L188
	cmp	r7, #0
	bne	.L189
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L198+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L116
	ldr	r3, .L198+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L196:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L197
.L188:
	cmp	r7, #0
	bne	.L191
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L198+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L116
	ldr	r3, .L198+8
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
.L197:
	movs	r0, #0
	bl	.L116
.L195:
	ldr	r3, .L198+12
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
	ldr	r3, .L198+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L198+20
	bl	.L25
.L186:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L189:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L198+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L116
	ldr	r3, .L198+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L196
.L191:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L198+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L198+8
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
	ldr	r5, .L198+4
	asrs	r4, r4, #16
	bl	.L16
	b	.L195
.L199:
	.align	2
.L198:
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
	bne	.LCB1651
	b	.L200	@long jump
.LCB1651:
	ldrb	r0, [r5, #27]
	ldr	r3, .L225
	bl	.L25
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L225+4
	ldr	r2, .L225+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1671
	b	.L200	@long jump
.LCB1671:
	ldr	r0, .L225+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1677
	b	.L200	@long jump
.LCB1677:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L225+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L225+20
	cmp	r2, #255
	beq	.L202
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L202:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L225+24
	str	r2, [sp, #20]
	bl	.L25
	ldr	r3, .L225+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L203
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L203:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L225+32
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
	beq	.L204
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L204:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L225+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L225+20
	cmp	r3, #255
	beq	.L205
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L205:
	ldr	r3, .L225+24
	bl	.L25
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L225+32
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
	ldr	r3, .L225+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L225+40
	bl	.L25
	movs	r4, r0
	cmp	r0, r6
	bne	.L206
	ldr	r3, .L225+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L225+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L225+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L225+56
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
.L206:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L225+60
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
	beq	.L207
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
	ldr	r3, .L225+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L224:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L225+68
	bl	.L25
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L225+72
	bl	.L25
	adds	r4, r4, #84
	strh	r0, [r4]
.L200:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L207:
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
	ldr	r3, .L225+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L224
.L226:
	.align	2
.L225:
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
	ldr	r7, .L238
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L238+4
	adds	r0, r0, #8
	bl	.L25
	subs	r4, r0, #0
	bne	.L228
	movs	r0, r5
	ldr	r3, .L238+8
	bl	.L25
.L227:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L228:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L238+12
	bl	.L25
	ldr	r3, .L238+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L238+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L230
	ldr	r3, .L238+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L230
	ldr	r3, .L238+28
	movs	r0, r5
	bl	.L25
	movs	r1, #1
	ldr	r3, .L238+32
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r7
	ldr	r3, .L238+36
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
.L231:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L238+40
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
	b	.L227
.L230:
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
	beq	.L231
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L238+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L16
	b	.L231
.L239:
	.align	2
.L238:
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
	ldr	r6, .L251
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L251+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L25
	subs	r5, r0, #0
	bne	.L241
	movs	r0, r4
	ldr	r3, .L251+8
	bl	.L25
.L240:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L241:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L251+12
	bl	.L25
	movs	r7, r5
	ldr	r3, .L251+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L251+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L243
	ldr	r3, .L251+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L243
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L251+28
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L251+32
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
	ldr	r3, .L251+36
	movs	r0, r4
	bl	.L25
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L244:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L251+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L251+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L240
.L243:
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
	beq	.L244
	ldr	r3, .L251+36
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
	ldr	r6, .L251+48
	bl	.L116
	b	.L244
.L252:
	.align	2
.L251:
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
	ldr	r5, .L264
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L264+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L264+8
	bl	.L25
	cmp	r0, #0
	beq	.L253
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L256
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L256:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L253
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L253:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L265:
	.align	2
.L264:
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
	ldr	r3, .L302
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L267
	ldr	r2, .L302+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L268
.L298:
	ldrb	r0, [r5, #27]
	ldr	r3, .L302+8
	bl	.L25
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L268
.L267:
	ldr	r2, .L302+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L298
.L268:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L269
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
	ldr	r3, .L302+16
	bl	.L25
.L269:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2469
	b	.L270	@long jump
.LCB2469:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L302+20
	bl	.L16
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L271
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
	ldr	r3, .L302+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L302+28
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
	ldr	r3, .L302+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L301:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L302+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L302+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L266:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L271:
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
	ldr	r3, .L302+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L302+28
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
	ldr	r3, .L302+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L301
.L270:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L302+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L302+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L302+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L302+48
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
	beq	.L273
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L274
.L299:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L274
.L273:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L299
.L274:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L275
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L302+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L276
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2717
	b	.L277	@long jump
.LCB2717:
	lsls	r3, r3, #28
	bmi	.LCB2723
	b	.L278	@long jump
.LCB2723:
.L276:
	movs	r0, r7
	ldr	r3, .L302+56
	bl	.L25
	ldr	r3, .L302+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L25
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L302+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2742
	b	.L280	@long jump
.LCB2742:
	ldr	r3, .L302+60
	movs	r0, r7
	bl	.L25
	ldr	r3, .L302+64
	bl	.L25
	cmp	r0, #0
	bne	.LCB2750
	b	.L280	@long jump
.LCB2750:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L302+68
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L302+72
	movs	r1, r4
	ldr	r3, .L302+76
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L302+80
	bl	.L25
.L275:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L302+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L302+88
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
	beq	.L281
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
.L300:
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
	b	.L266
.L277:
	lsls	r3, r3, #30
	bpl	.LCB2850
	b	.L276	@long jump
.LCB2850:
.L278:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L279
	movs	r1, r3
.L279:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2866
	b	.L276	@long jump
.LCB2866:
	movs	r5, r3
	b	.L276
.L303:
	.align	2
.L302:
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
.L280:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L304
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L304+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L304+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L275
.L281:
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
	b	.L300
.L305:
	.align	2
.L304:
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
	beq	.L307
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L308
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L307:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L306
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L311
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L306:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L308:
	ldr	r2, .L319
	ldrh	r5, [r2]
	ldr	r2, .L319+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L309
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L307
.L309:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L307
.L311:
	ldr	r3, .L319
	ldr	r1, .L319+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L312
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L306
.L312:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L306
.L320:
	.align	2
.L319:
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
	bne	.L322
.L328:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L323
.L324:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L335
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L322:
	movs	r2, r0
	ldr	r1, .L335+4
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
	ldr	r7, .L335+8
	lsrs	r3, r3, #16
.L325:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L328
	cmp	r2, #0
	beq	.L332
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L326:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L325
.L332:
	movs	r5, #1
	b	.L326
.L323:
	ldr	r1, .L335+4
	ldrb	r5, [r1]
	ldr	r1, .L335+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L335+16
	lsrs	r3, r3, #16
.L329:
	cmp	r5, r1
	ble	.L324
	cmp	r2, #0
	beq	.L333
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L330:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L329
.L333:
	movs	r4, #1
	b	.L330
.L336:
	.align	2
.L335:
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
	bls	.L338
	movs	r2, #240
	ldr	r3, .L346
	strh	r2, [r3, #44]
	ldr	r2, .L346+4
	ldr	r1, .L346+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L346+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L339:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L342
	ldr	r3, .L346+16
	ldr	r0, .L346+20
	bl	.L25
	ldr	r1, .L346+24
	movs	r2, #32
	ldr	r3, .L346+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L346+32
	bl	PAU_bAnimGaugeScrEntries
.L342:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L338:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L340
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L340:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L341
	movs	r0, r4
	ldr	r3, .L346+36
	bl	.L25
	b	.L339
.L341:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L346+40
	bl	.L25
	b	.L339
.L347:
	.align	2
.L346:
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
	beq	.L349
	movs	r2, #0
	movs	r1, #56
.L349:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L358
	movs	r0, #1
	bl	.L116
	ldr	r3, .L358+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L348
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L351
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L351:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L352
	ldr	r3, .L358+8
.L357:
	bl	.L25
.L348:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L352:
	ldr	r3, .L358+12
	b	.L357
.L359:
	.align	2
.L358:
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
	ldr	r3, .L387
	ldr	r2, .L387+4
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
	ldr	r5, .L387+8
	ldr	r2, .L387+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L361
	ldr	r5, .L387+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L362
	cmp	r4, #0
	beq	.L384
.L366:
	cmp	r3, r2
	beq	.L364
.L365:
	ldr	r2, .L387+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L376
	adds	r3, r3, #1
	b	.L386
.L362:
	cmp	r4, #0
	beq	.L366
.L384:
	cmp	r3, r1
	bne	.L365
.L364:
	movs	r3, #0
.L386:
	strb	r3, [r5]
.L376:
	cmp	r6, #0
	bne	.L374
	b	.L368
.L361:
	cmp	r6, #0
	beq	.L368
	ldr	r5, .L387+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L369
	cmp	r4, #0
	beq	.L380
.L382:
	cmp	r3, r2
	beq	.L371
.L374:
	movs	r2, r0
	ldr	r1, .L387+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L372
.L368:
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
	ldr	r3, .L387+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L369:
	cmp	r4, #0
	beq	.L382
.L380:
	cmp	r3, r1
	bne	.L374
.L371:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L368
.L372:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L368
.L388:
	.align	2
.L387:
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
	ldr	r3, .L423
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L389
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L389
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L423+4
	cmp	r4, #3
	bne	.L393
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L389
	movs	r3, #17
	ldr	r2, .L423+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L389
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L423+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	adds	r0, r0, r3
	ldr	r3, .L423+16
	bl	.L25
	movs	r2, #17
	movs	r3, #0
	ldrsb	r2, [r5, r2]
	ldrsb	r3, [r7, r3]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L423+20
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r7, .L423+24
	movs	r0, r5
	bl	.L425
	ldr	r3, .L423+28
	bl	.L25
	ldr	r3, .L423+32
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
	bl	.L425
	lsls	r3, r0, #3
	ldr	r0, .L423+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L422:
	lsls	r1, r2, #23
	bpl	.L396
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L396:
	lsls	r3, r2, #7
	bpl	.L395
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L395:
	str	r4, [r5, #60]
.L389:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L393:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L389
	movs	r0, #17
	ldr	r3, .L423+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L389
	ldr	r3, .L423+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L423+40
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L423+44
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r6, .L423+24
	movs	r0, r5
	bl	.L116
	ldr	r3, .L423+28
	bl	.L25
	ldr	r3, .L423+32
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
	bl	.L116
	lsls	r3, r0, #3
	ldr	r0, .L423+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L422
.L424:
	.align	2
.L423:
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
	bhi	.L427
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L428
	bl	.L25
.L427:
	@ sp needed
	movs	r0, #0
	ldrh	r6, [r4, #44]
	ldr	r3, .L428+4
	ldr	r5, .L428+8
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	ldr	r7, [r4, #52]
	ldrh	r3, [r7, #4]
	adds	r0, r0, r3
	strh	r0, [r7, #4]
	movs	r0, #0
	ldr	r3, .L428+12
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	ldrh	r3, [r7, #6]
	adds	r0, r0, r3
	strh	r0, [r7, #6]
	movs	r0, #0
	ldr	r3, .L428+16
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
	ldr	r3, .L428+20
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
.L429:
	.align	2
.L428:
	.word	BreakProcLoop
	.word	PAU_mapFrontOffsX
	.word	__aeabi_idiv
	.word	PAU_mapFrontOffsY
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.size	PAU_puOffsetMSLoop, .-PAU_puOffsetMSLoop
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
	ldr	r3, .L437
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L437+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L437+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L430
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L430
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L430
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L437+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	rsbs	r3, r3, #0
	movs	r0, r6
	ldr	r1, [sp, #12]
	ldr	r6, .L437+16
	bl	.L116
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	movs	r2, r5
	ldr	r3, .L437+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r2, #80
	lsls	r3, r3, #4
	strh	r3, [r2]
	ldr	r3, .L437+24
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	strh	r3, [r2, #2]
	movs	r2, r0
	ldr	r3, .L437+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r2, r2, #80
	strh	r3, [r2]
	ldr	r3, .L437+32
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r0, r0, #82
	strh	r3, [r0]
.L430:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L438:
	.align	2
.L437:
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
	bl	.L116
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
	ldr	r3, .L476
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L476+4
	adds	r3, r3, #94
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L446
	movs	r4, r3
	cmp	r3, #2
	bne	.L448
	ldr	r2, .L476+8
	ldr	r2, [r2]
	ldr	r1, [r2]
	movs	r2, #128
	movs	r5, r1
	lsls	r2, r2, #3
	ands	r5, r2
	adds	r4, r4, #2
	tst	r1, r2
	bne	.L448
	ldr	r2, .L476+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L448
	movs	r6, #20
.L450:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L476+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L449
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L449
	adds	r4, r4, #1
.L449:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L450
.L448:
	movs	r3, #0
.L453:
	cmp	r3, r4
	bne	.L454
	movs	r5, #0
	add	r3, sp, #28
.L455:
	subs	r2, r4, #1
	cmp	r2, r5
	bgt	.L460
	movs	r3, #0
	movs	r1, #20
.L461:
	cmp	r3, r4
	beq	.LCB4052
	b	.L462	@long jump
.LCB4052:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L446:
	ldr	r2, .L476+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L448
	movs	r5, #0
	movs	r6, #20
.L452:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L476+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L451
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L451
	adds	r4, r4, #1
.L451:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L452
	b	.L448
.L454:
	add	r2, sp, #28
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	b	.L453
.L460:
	movs	r2, r3
	adds	r5, r5, #1
	str	r5, [sp]
.L456:
	ldr	r1, [sp]
	cmp	r1, r4
	bne	.L459
	adds	r3, r3, #1
	b	.L455
.L459:
	movs	r0, #20
	ldrb	r1, [r3]
	muls	r0, r1
	str	r1, [sp, #4]
	ldr	r1, .L476+4
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
	ldr	r6, .L476+4
	ldr	r6, [r1, r6]
	ldrsb	r7, [r6, r7]
	cmp	ip, r7
	bgt	.L457
	blt	.L458
	ldr	r7, .L476+4
	adds	r0, r7, r0
	ldr	r0, [r0, #8]
	movs	r7, r0
	str	r0, [sp, #16]
	adds	r7, r7, #82
	movs	r0, #0
	ldrsh	r7, [r7, r0]
	ldr	r0, .L476+4
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
	bgt	.L457
	blt	.L458
	movs	r7, #16
	ldr	r0, [sp, #8]
	ldrb	r6, [r6, #16]
	ldrsb	r7, [r0, r7]
	lsls	r6, r6, #24
	asrs	r6, r6, #24
	cmp	r7, r6
	bgt	.L457
	blt	.L458
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	adds	r0, r0, #80
	adds	r1, r1, #80
	movs	r6, #0
	ldrsh	r0, [r0, r6]
	movs	r6, #0
	ldrsh	r1, [r1, r6]
	cmp	r0, r1
	ble	.L458
.L457:
	ldr	r1, [sp, #12]
	strb	r1, [r3]
	ldr	r1, [sp, #4]
	strb	r1, [r2, #1]
.L458:
	ldr	r1, [sp]
	adds	r1, r1, #1
	str	r1, [sp]
	adds	r2, r2, #1
	b	.L456
.L462:
	add	r2, sp, #28
	ldrb	r2, [r2, r3]
	muls	r2, r1
	ldr	r0, .L476+4
	adds	r2, r0, r2
	ldr	r2, [r2, #8]
	add	r0, sp, #24
	ldrb	r0, [r3, r0]
	ldr	r2, [r2, #48]
	adds	r3, r3, #1
	strh	r0, [r2, #30]
	b	.L461
.L477:
	.align	2
.L476:
	.word	117967114
	.word	gMapAnimData
	.word	battleBuffer
	.word	PAU_showBothMapSprites
	.size	PAU_muSortObjLayers, .-PAU_muSortObjLayers
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
	ldr	r5, .L485
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
	ldr	r7, .L485+4
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
	ldr	r5, .L485+8
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
	bne	.L479
	adds	r2, r2, #78
	ldrh	r3, [r2]
	subs	r3, r3, #1
	strh	r3, [r2]
	bl	PAU_muSortObjLayers
	ldrb	r3, [r7]
	muls	r6, r3
	adds	r6, r5, r6
	ldr	r3, [r6, #8]
	adds	r3, r3, #78
	ldrh	r2, [r3]
	adds	r2, r2, #1
	strh	r2, [r3]
.L479:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcc	.L478
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]
	movs	r3, #20
	muls	r2, r3
	adds	r2, r5, r2
	ldr	r2, [r2, #8]
	movs	r0, r2
	ldr	r1, .L485+12
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L485+16
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
	ldr	r1, .L485+20
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L485+24
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
	bmi	.L481
	adds	r5, r5, #88
.L484:
	mvns	r3, r3
	strb	r2, [r5]
	lsls	r3, r3, #30
	bne	.L483
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L485+28
	bl	.L25
.L483:
	movs	r0, r4
	ldr	r3, .L485+32
	bl	.L25
.L478:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L481:
	adds	r5, r5, #89
	b	.L484
.L486:
	.align	2
.L485:
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
	ldr	r3, .L495
	ldrb	r3, [r3]
	movs	r4, r3
	subs	r5, r3, #0
	beq	.L488
	movs	r4, #0
	subs	r0, r0, #1
	lsls	r0, r0, #24
	movs	r5, r4
	lsrs	r0, r0, #24
	cmp	r0, #1
	bhi	.L488
	movs	r5, #0
	movs	r4, #0
	ldr	r3, .L495+4
	ldrsb	r5, [r3, r5]
	ldr	r3, .L495+8
	ldrsb	r4, [r3, r4]
.L488:
	adds	r1, r5, #2
	lsls	r3, r7, #31
	bmi	.L494
	subs	r1, r5, #2
.L494:
	lsls	r1, r1, #16
	movs	r2, r4
	movs	r0, r6
	ldr	r3, .L495+12
	asrs	r1, r1, #16
	bl	.L25
	cmp	r7, #11
	bls	.L487
	movs	r0, r6
	ldr	r3, .L495+12
	movs	r2, r4
	movs	r1, r5
	bl	.L25
	ldr	r0, [sp, #4]
	ldr	r3, .L495+16
	bl	.L25
.L487:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L496:
	.align	2
.L495:
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
	ldr	r3, .L506
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L498
	movs	r5, #255
	ldr	r3, .L506+4
	ldr	r3, [r3, #80]
	subs	r3, r3, #8
	ldr	r2, .L506+8
	ldrb	r0, [r3, #4]
	ands	r2, r5
	cmp	r0, r2
	bne	.L499
	ldr	r0, .L506+12
	ldr	r3, .L506+16
	bl	.L25
.L505:
	adds	r0, r0, #41
	strb	r4, [r0]
	movs	r4, #0
.L500:
	@ sp needed
	movs	r0, r4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L499:
	ldr	r3, .L506+20
	ands	r3, r5
	cmp	r0, r3
	bne	.L498
	ldr	r3, .L506+16
	ldr	r0, .L506+12
	bl	.L25
	movs	r3, #2
	orrs	r4, r3
	b	.L505
.L498:
	cmp	r4, #0
	beq	.L501
	ldr	r3, .L506+24
	bl	.L25
	movs	r4, #1
	b	.L500
.L501:
	movs	r0, r1
	ldr	r3, .L506+28
	bl	.L25
	b	.L500
.L507:
	.align	2
.L506:
	.word	PAU_showBothMapSprites
	.word	gMapAnimData
	.word	DualStrikeID
	.word	PAU_swapMapSpriteProcInstr
	.word	ProcStartBlocking
	.word	DualGuardID
	.word	MapAnim_BeginSubjectFastAnim
	.word	EndProc
	.size	PAU_startSwapMSProc, .-PAU_startSwapMSProc
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
	ldr	r3, .L509
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L509+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L509+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L509+12
	ldr	r3, .L509+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L510:
	.align	2
.L509:
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
	ldr	r3, .L515
	movs	r5, r1
	bl	.L25
	ldr	r3, .L515+4
	bl	.L25
	cmp	r0, #39
	bhi	.L512
	ldr	r3, .L515+8
.L514:
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
.L512:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L514
.L516:
	.align	2
.L515:
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
	ldr	r1, .L534
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L534+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L534+8
	ldr	r3, .L534+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L534+16
	bl	.L25
	ldr	r3, .L534+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L518
	ldr	r3, .L534+24
	str	r3, [sp, #4]
.L518:
	movs	r7, #0
	ldr	r3, .L534+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L523:
	movs	r0, r5
	ldr	r3, .L534+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L534+36
	bl	.L25
	ldr	r3, .L534+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L534+44
	bl	.L25
	cmp	r7, #6
	bne	.L519
	ldr	r6, .L534+48
	ldr	r0, [sp, #8]
	bl	.L116
	ldr	r3, .L534+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L116
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L520
	adds	r3, r0, #0
.L520:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L521:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L525
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L526
	cmp	r4, #0
	blt	.L527
	movs	r2, #21
	cmp	r4, #0
	beq	.L528
	movs	r6, #4
	cmp	r4, #9
	ble	.L532
	cmp	r4, #99
	ble	.L530
.L533:
	movs	r0, #5
.L522:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L534+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L534+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L534+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L523
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L519:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L521
.L525:
	movs	r2, #20
	movs	r6, #3
	b	.L533
.L526:
	movs	r2, #20
	movs	r6, #3
.L530:
	movs	r0, #6
	b	.L522
.L527:
	movs	r2, #20
	movs	r6, #3
.L532:
	movs	r0, #7
	b	.L522
.L528:
	movs	r6, r4
	b	.L532
.L535:
	.align	2
.L534:
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
	ldr	r5, .L539
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L539+4
	adds	r0, r0, #48
	bl	.L25
	ldr	r3, .L539+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L539+12
	adds	r0, r0, #44
	bl	.L425
	movs	r6, #52
.L537:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L425
	cmp	r6, #108
	bne	.L537
	ldr	r0, .L539+16
	lsls	r0, r0, #16
	ldr	r3, .L539+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L539+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L539+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L539+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r1, #136
	movs	r2, #32
	ldr	r0, .L539+36
	lsls	r1, r1, #2
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L540:
	.align	2
.L539:
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
	ldr	r3, .L548
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L548+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L548+8
	movs	r5, r0
	bl	.L25
	ldr	r3, [r4, #60]
	lsls	r2, r0, #3
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L548+12
	str	r0, [sp]
	bl	.L25
	ldr	r7, .L548+16
	ldr	r0, .L548+20
	movs	r1, r7
	ldr	r3, .L548+24
	bl	.L25
	ldr	r3, [sp]
	ldr	r0, .L548+28
	lsls	r6, r3, #1
	movs	r1, r7
	movs	r2, #0
	ldr	r3, .L548+32
	adds	r0, r6, r0
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L548+36
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
	ldr	r3, .L548+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L548+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L548+48
	movs	r0, r7
	bl	.L25
	movs	r1, r6
	ldr	r0, [r4, #60]
	ldr	r7, .L548+52
	adds	r1, r1, #70
	ldr	r3, .L548+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	ldr	r1, [sp]
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L548+60
	ldr	r3, .L548+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L548+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L542
	movs	r5, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r5, r5, #3
.L543:
	adds	r6, r6, #212
	adds	r6, r7, r6
	movs	r1, r5
	movs	r2, #0
	movs	r0, r6
	ldr	r3, .L548+72
	bl	.L25
	adds	r3, r5, #1
	movs	r1, r3
	movs	r2, #0
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r3, .L548+72
	bl	.L25
	movs	r0, r4
	ldr	r3, .L548+76
	bl	.L25
	movs	r3, #2
	ldr	r1, .L548+80
	movs	r2, r3
	ldr	r4, .L548+84
	bl	.L20
	movs	r0, r5
	ldr	r5, .L548+88
	bl	.L16
	movs	r4, r0
	ldr	r0, [sp, #4]
	bl	.L16
	ldr	r3, .L548+92
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
.L544:
	adds	r3, r3, #1
	adds	r6, r6, #64
	cmp	r2, r3
	bge	.L547
	@ sp needed
	movs	r0, #3
	ldr	r3, .L548+96
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L542:
	ldr	r4, .L548+100
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r5, .L548+104
	lsrs	r4, r4, #16
	b	.L543
.L547:
	cmp	r2, r3
	ble	.L545
	strh	r5, [r6]
	strh	r4, [r6, #2]
	b	.L544
.L545:
	strh	r0, [r6]
	strh	r1, [r6, #2]
	b	.L544
.L549:
	.align	2
.L548:
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
	.word	100741120
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
	ldr	r3, .L551
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L551+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L551+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L551+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L551+16
	ldr	r3, .L551+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L552:
	.align	2
.L551:
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
	ldr	r0, .L554
	ldr	r3, .L554+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L554+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L555:
	.align	2
.L554:
	.word	gPal_UIFont
	.word	CopyToPaletteBuffer
	.word	GenericSelection_BackToUM
	.size	PAU_selectionOnCancel, .-PAU_selectionOnCancel
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
	@ link register save eliminated.
	movs	r0, #0
	@ sp needed
	bx	lr
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
	ldr	r6, .L564
	ldr	r5, .L564+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L564+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L564+12
	ldrsb	r0, [r5, r0]
	bl	.L116
	movs	r6, r0
	ldr	r3, .L564+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L564+20
	bl	.L116
	ldr	r3, .L564+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L559
	ldr	r0, .L564+28
	ldr	r3, .L564+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L559
	ldr	r0, .L564+36
	ldr	r3, .L564+40
	adds	r0, r0, #84
	bl	.L25
.L559:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L564+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L564+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L565:
	.align	2
.L564:
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
	ldr	r3, .L568
	ldrb	r2, [r3, #17]
	ldr	r3, .L568+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L566
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L566:
	@ sp needed
	bx	lr
.L569:
	.align	2
.L568:
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
	ldr	r4, .L578
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L571
	ldr	r1, .L578+4
	lsls	r1, r1, #24
	ldr	r5, .L578+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L572
.L574:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L578+12
	bl	.L25
	cmp	r0, #0
	beq	.L571
	movs	r0, #1
.L573:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L572:
	ldr	r1, .L578+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L574
.L571:
	movs	r0, #3
	b	.L573
.L579:
	.align	2
.L578:
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
	ldr	r3, .L581
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L581+4
	ldr	r3, .L581+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L582:
	.align	2
.L581:
	.word	gActiveUnit
	.word	PAU_targetSelectionDefinition
	.word	StartTargetSelection
	.size	PAU_pairUpEffect, .-PAU_pairUpEffect
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
	push	{r0, r1, r4, r5, r6, lr}
	mov	r3, sp
	adds	r4, r3, #6
	movs	r3, #0
	movs	r5, r0
	movs	r6, r1
	strh	r3, [r4]
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L584
	movs	r3, #128
	strh	r3, [r4]
.L584:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L588
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4]
	ldr	r2, [r2]
	ldrb	r0, [r2]
	lsls	r0, r0, #8
	orrs	r3, r0
	movs	r2, r6
	movs	r1, r5
	strh	r3, [r4]
	movs	r0, r4
	ldr	r3, .L588+4
	bl	.L25
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L589:
	.align	2
.L588:
	.word	PAU_pairUpBattleGaugeRAMAddress
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
	ldr	r3, .L591
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L591+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L591+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L592:
	.align	2
.L591:
	.word	ReadSramFast
	.word	PAU_pairUpBitsRAMAddress
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_loadPairUpData, .-PAU_loadPairUpData
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
	bge	.L594
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L593:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L594:
	ldr	r3, .L596
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
	b	.L593
.L597:
	.align	2
.L596:
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
	ldr	r3, .L605
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
.L599:
	ldr	r3, .L605+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L603
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L603:
	cmp	r4, #0
	beq	.L604
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L600:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L601
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L602:
	adds	r5, r5, #1
	b	.L599
.L604:
	movs	r7, #1
	b	.L600
.L601:
	movs	r2, r6
	ldr	r3, .L605+8
	bl	.L25
	b	.L602
.L606:
	.align	2
.L605:
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
	beq	.L607
	bl	PAU_forecastDrawGaugeIcons.part.0
.L607:
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
	ldr	r0, .L640
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L640+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L640+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB5752
	b	.L613	@long jump
.LCB5752:
	cmp	r0, #0
	bne	.LCB5754
	b	.L614	@long jump
.LCB5754:
	ldr	r1, .L640+12
	ldr	r0, .L640+16
	bl	.L25
	movs	r1, #12
.L638:
	movs	r3, #1
	str	r3, [sp, #4]
.L615:
	ldr	r6, .L640+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L640+24
	bl	.L425
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L640
	ldr	r3, .L640+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L617
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L617:
	movs	r3, #159
	ldr	r4, .L640+4
	lsls	r3, r3, #2
	ldr	r6, .L640+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L640+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L618
	ldr	r3, .L640+32
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
.L618:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L640+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB5835
	b	.L619	@long jump
.LCB5835:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB5842
	b	.L619	@long jump
.LCB5842:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L620:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L640+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L640+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L622
	movs	r2, #255
.L622:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L640+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L640+4
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
	ldr	r3, .L640
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L640
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L640+44
	bl	.L116
	movs	r4, #255
	cmp	r0, #181
	beq	.L624
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L624:
	ldr	r3, .L640
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L640
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L116
	movs	r6, #255
	cmp	r0, #181
	beq	.L626
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L626:
	movs	r0, r7
	ldr	r3, .L640
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L640+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L628
	movs	r2, #255
.L628:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L640+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L640+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L640
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L640+48
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
	ldr	r4, .L640+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L640+56
	adds	r1, r1, r5
	ldr	r0, .L640+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L640+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L640+68
	bl	.L20
	ldr	r3, .L640+4
	adds	r3, r3, #74
	ldr	r6, .L640+72
	ldrh	r0, [r3]
	bl	.L116
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L640+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L640
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L116
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
.L614:
	ldr	r1, .L640+80
	ldr	r0, .L640+16
	bl	.L25
	movs	r1, #11
.L639:
	str	r5, [sp, #4]
	b	.L615
.L613:
	cmp	r0, #0
	beq	.L616
	ldr	r1, .L640+84
	ldr	r0, .L640+16
	bl	.L25
	movs	r1, #11
	b	.L638
.L616:
	ldr	r1, .L640+88
	ldr	r0, .L640+16
	bl	.L25
	movs	r1, #10
	b	.L639
.L619:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L640
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L620
.L641:
	.align	2
.L640:
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
	ldr	r7, .L663
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L663+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB6122
	b	.L643	@long jump
.LCB6122:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB6126
	b	.L644	@long jump
.LCB6126:
	ldr	r1, .L663+8
	ldr	r0, .L663+12
	ldr	r3, .L663+16
	bl	.L25
	movs	r1, #12
.L662:
	movs	r3, #1
.L660:
	ldr	r6, .L663+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L663+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L663
	ldr	r3, .L663+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L647
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L647:
	movs	r3, #223
	ldr	r5, .L663+4
	ldr	r6, .L663+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L663+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L648
	ldr	r3, .L663+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L663+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L648:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L663+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L649
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L649
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
.L649:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L663+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L663+44
	cmp	r2, #99
	bls	.L650
	movs	r2, #255
.L650:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L663+4
	ldr	r6, .L663+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L663+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L663+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L663+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L663+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L663+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L663+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L663+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L663
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L652
	movs	r2, #255
.L652:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L663+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L663+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L116
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L116
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L663+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L116
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L663+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L116
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L663+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L116
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L663+68
	bl	.L116
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L663+72
	adds	r1, r1, r5
	ldr	r0, .L663+76
	bl	.L116
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L663+80
	bl	.L116
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L663+84
	bl	.L116
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L663+88
	bl	.L116
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L663+92
	bl	.L116
	ldr	r3, .L663+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L663+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L663+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L116
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L663+96
	bl	.L25
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L116
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L644:
	ldr	r1, .L663+104
	ldr	r0, .L663+12
	ldr	r3, .L663+16
	bl	.L25
	movs	r1, #11
.L661:
	ldr	r3, [sp]
	b	.L660
.L643:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L646
	ldr	r1, .L663+108
	ldr	r0, .L663+12
	ldr	r3, .L663+16
	bl	.L25
	movs	r1, #11
	b	.L662
.L646:
	ldr	r1, .L663+112
	ldr	r0, .L663+12
	ldr	r3, .L663+16
	bl	.L25
	movs	r1, #10
	b	.L661
.L664:
	.align	2
.L663:
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
	beq	.L666
	cmp	r3, #2
	beq	.L667
.L665:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L666:
	ldr	r3, .L669
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L665
.L667:
	ldr	r3, .L669
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L665
.L670:
	.align	2
.L669:
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
	ldr	r3, .L674
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
	blt	.L672
	adds	r3, r3, #20
.L672:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L674+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L675:
	.align	2
.L674:
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
	beq	.L677
	adds	r6, r6, #4
.L677:
	ldr	r0, .L686
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L686+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L686+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L680
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L686+12
	ldr	r5, .L686+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L686+20
	ldr	r0, .L686+24
	bl	.L16
.L681:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L686+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L680:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L686+12
	ldr	r7, .L686+16
	bl	.L425
	ldr	r1, .L686+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L686+24
	adds	r1, r5, r1
	bl	.L425
	b	.L681
.L687:
	.align	2
.L686:
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
	ldr	r7, .L704
	ldr	r6, .L704+4
	cmp	r3, #127
	bhi	.L689
.L691:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L690:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L692
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L692:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L695
	beq	.L696
	movs	r2, #2
.L695:
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
	ldr	r3, .L704+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L696:
	cmp	r7, #0
	beq	.L688
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
	ldr	r3, .L704+8
	adds	r0, r0, #19
	bl	.L25
.L688:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L689:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L690
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L691
	movs	r5, r0
	b	.L690
.L705:
	.align	2
.L704:
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
	bls	.L707
	ldr	r0, .L714
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L708
.L707:
	ldr	r0, .L714+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L708:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L714+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L714+12
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
	ble	.L709
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L714+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L714+20
	ldr	r7, .L714+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L425
.L709:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L706
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L714+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L714+20
	ldr	r4, .L714+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L706:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L715:
	.align	2
.L714:
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
	beq	.L717
	ldr	r3, .L727
	bl	.L25
	cmp	r0, #0
	beq	.L718
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L718
	movs	r0, r4
	ldr	r3, .L727+4
.L726:
	bl	.L25
.L716:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L718:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L727+8
	bl	.L25
.L717:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L716
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L727+12
	b	.L726
.L728:
	.align	2
.L727:
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
	ldr	r3, .L734
.L730:
	movs	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bne	.L732
.L731:
	@ sp needed
	bx	lr
.L732:
	adds	r3, r3, #2
	cmp	r0, r2
	bne	.L730
	movs	r0, #1
	b	.L731
.L735:
	.align	2
.L734:
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
	ldr	r3, .L738
	movs	r6, r0
	movs	r5, #1
	bl	.L25
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L737
	ldr	r3, .L738+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L738+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L737
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L737:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L739:
	.align	2
.L738:
	.word	BattleCheckBraveEffect
	.word	PAU_pairUpBattleGaugeRAMAddress
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
	bne	.L741
.L750:
	movs	r0, #0
.L742:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L741:
	ldr	r7, .L766
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L743:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L750
	cmp	r6, #0
	beq	.L744
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L744
	ldr	r3, .L766+4
	ldr	r2, .L766+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L744
	ldr	r2, .L766+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L764:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L765:
	bl	PAU_setBattleGauge
.L745:
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
	ldr	r3, .L766+16
	bl	.L25
	cmp	r0, #0
	bne	.L751
	adds	r6, r6, #1
	b	.L743
.L744:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L746
	ldr	r3, .L766+4
	ldr	r2, .L766+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L746
	ldr	r2, .L766+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L764
.L746:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L747
.L748:
	ldr	r3, .L766+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L765
.L747:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L748
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L748
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L745
	b	.L748
.L751:
	movs	r0, #1
	b	.L742
.L767:
	.align	2
.L766:
	.word	gBattleHitIterator
	.word	PAU_pairUpBattleGaugeRAMAddress
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
.L770:
	lsls	r0, r4, #24
	ldr	r3, .L778
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L769
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L769
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L778+4
	bl	.L25
.L769:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L770
	ldr	r3, .L778+8
	@ sp needed
	bl	.L25
	ldr	r3, .L778+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L779:
	.align	2
.L778:
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
	bhi	.L781
	ldr	r3, .L783
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L783+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L782
	adds	r2, r4, #0
.L782:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L781:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L784:
	.align	2
.L783:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC455:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC456:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_swapMapSpriteProcInstr
.LC457:
	.ascii	"PAU_SwapMapSpriteProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC458:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC459:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC460:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC461:
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
	.word	.LC461
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
	.word	.LC460
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
	.word	.LC456
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
	.word	.LC458
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
	.word	.LC455
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
	.type	PAU_swapMapSpriteProcInstr, %object
	.size	PAU_swapMapSpriteProcInstr, 160
PAU_swapMapSpriteProcInstr:
	.short	1
	.short	0
	.word	.LC457
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
	.word	.LC459
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
.L116:
	bx	r6
.L425:
	bx	r7

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
	bhi	.L27
	ldr	r3, .L28
	bl	.L25
.L27:
	@ sp needed
	movs	r6, #0
	ldr	r3, .L28+4
	ldrh	r7, [r4, #44]
	ldrsb	r6, [r3, r6]
	ldr	r5, [r4, #64]
	movs	r1, r7
	movs	r0, r6
	ldr	r3, .L28+8
	bl	.L25
	movs	r2, r5
	adds	r2, r2, #80
	ldrh	r3, [r2]
	lsls	r0, r0, #20
	lsrs	r0, r0, #16
	subs	r3, r3, r0
	strh	r3, [r2]
	adds	r5, r5, #82
	ldrh	r3, [r5]
	ldr	r4, [r4, #68]
	subs	r0, r3, r0
	strh	r0, [r5]
	movs	r1, r7
	ldr	r3, .L28+8
	rsbs	r0, r6, #0
	bl	.L25
	movs	r2, r4
	adds	r2, r2, #80
	ldrh	r3, [r2]
	lsls	r0, r0, #20
	lsrs	r0, r0, #16
	subs	r3, r3, r0
	strh	r3, [r2]
	adds	r4, r4, #82
	ldrh	r3, [r4]
	subs	r0, r3, r0
	strh	r0, [r4]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L29:
	.align	2
.L28:
	.word	BreakProcLoop
	.word	PAU_mapOffs
	.word	__aeabi_idiv
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
	movs	r3, #0
	strh	r3, [r0, #42]
	adds	r3, r3, #8
	strh	r3, [r0, #44]
	ldr	r3, [r0, #28]
	movs	r4, r0
	cmp	r3, #0
	bne	.L36
	ldr	r3, [r0, #32]
	cmp	r3, #0
	bne	.L36
	movs	r3, r0
	adds	r3, r3, #41
	ldrb	r3, [r3]
	lsls	r3, r3, #29
	bpl	.L37
	ldr	r3, .L39
.L38:
	bl	.L25
.L36:
	@ sp needed
	movs	r3, r4
	movs	r5, #0
	movs	r7, #1
	adds	r3, r3, #50
	ldrsb	r5, [r3, r5]
	ldrsb	r7, [r3, r7]
	ldr	r6, .L39+4
	rsbs	r1, r7, #0
	movs	r0, r5
	bl	.L41
	movs	r3, r4
	asrs	r0, r0, #8
	adds	r3, r3, #48
	movs	r1, r7
	strb	r0, [r3]
	rsbs	r0, r5, #0
	bl	.L41
	adds	r4, r4, #49
	asrs	r0, r0, #8
	strb	r0, [r4]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L37:
	ldr	r3, .L39+8
	b	.L38
.L40:
	.align	2
.L39:
	.word	MapAnimProc_MoveCameraOntoTarget
	.word	ArcTan2
	.word	MapAnimProc_MoveCameraOntoSubject
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
	adds	r3, r3, #41
	ldrb	r3, [r3]
	lsls	r2, r3, #28
	bmi	.L42
	movs	r2, #20
	adds	r0, r0, #46
	ldrb	r1, [r0]
	muls	r1, r2
	ldr	r2, .L50
	adds	r2, r2, r1
	movs	r1, #16
	ldr	r2, [r2, #4]
	ldrsb	r1, [r2, r1]
	ldr	r2, .L50+4
	ldrh	r2, [r2, #12]
	lsls	r1, r1, #4
	subs	r1, r1, r2
	lsls	r2, r3, #31
	bpl	.L44
	ldr	r2, .L50+8
	lsls	r3, r3, #30
	bmi	.L45
	ldr	r3, .L50+12
.L49:
	ldrh	r0, [r3]
	bl	.L52
.L42:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L45:
	ldr	r3, .L50+16
	b	.L49
.L44:
	ldr	r3, .L50+20
	movs	r0, #0
	ldrsh	r0, [r3, r0]
	adds	r3, r0, #1
	beq	.L42
	lsls	r0, r0, #16
	ldr	r3, .L50+8
	lsrs	r0, r0, #16
	bl	.L25
	b	.L42
.L51:
	.align	2
.L50:
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
	ldr	r3, .L54
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #42
	ldrb	r1, [r3]
	ldr	r5, .L54+4
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
	ldr	r3, .L54+8
	ldr	r4, .L54+12
	adds	r1, r1, #81
	bl	.L20
	pop	{r0, r1, r2, r4, r5}
	pop	{r0}
	bx	r0
.L55:
	.align	2
.L54:
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
	ldr	r4, .L66
	ldrb	r2, [r4]
	strh	r3, [r0, #42]
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	movs	r5, r0
	ldr	r3, .L66+4
	cmp	r2, #0
	beq	.L57
	movs	r2, r4
	adds	r2, r2, #76
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L57
	movs	r2, r4
	adds	r2, r2, #152
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L58
.L57:
	movs	r0, r5
	bl	.L25
.L56:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L58:
	ldr	r2, [r4, #72]
	str	r2, [r0, #64]
	movs	r2, r4
	adds	r2, r2, #148
	ldr	r0, [r2]
	adds	r4, r4, #224
	bl	.L25
	ldr	r2, [r4]
	movs	r1, r2
	ldr	r3, .L66+8
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	rsbs	r3, r3, #0
	str	r2, [r5, #68]
	lsls	r3, r3, #4
	adds	r1, r1, #80
	adds	r2, r2, #82
	strh	r3, [r1]
	strh	r3, [r2]
	b	.L56
.L67:
	.align	2
.L66:
	.word	gMoveUnitExtraDataArray
	.word	EndProc
	.word	PAU_mapOffs
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
	ldr	r3, .L69
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L70:
	.align	2
.L69:
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
	ldr	r3, .L72
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L73:
	.align	2
.L72:
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
	ldr	r3, .L75
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L76:
	.align	2
.L75:
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
	beq	.L78
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L78
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L78
	ldr	r4, .L93
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L93+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L79
	movs	r1, r4
	movs	r0, r5
	bl	.L41
	ldr	r1, .L93+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L41
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L78
.L80:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L79:
	ldr	r3, .L93+12
	movs	r0, r7
	bl	.L25
	movs	r1, r4
	movs	r5, r0
	bl	.L41
	movs	r2, #1
	cmp	r0, #0
	bne	.L80
	ldr	r1, .L93+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L41
	movs	r2, #2
	cmp	r0, #0
	bne	.L80
.L78:
	movs	r2, #0
	b	.L80
.L94:
	.align	2
.L93:
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
	ldr	r5, .L110
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L110+4
	bl	.L25
	cmp	r0, #0
	beq	.L95
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L95
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L95
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L95
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L95
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.L95
	ldr	r1, .L110+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L110+12
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L99
.L100:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L110+16
	bl	.L20
.L95:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L99:
	ldr	r1, .L110+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L100
	b	.L95
.L111:
	.align	2
.L110:
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
	beq	.L113
	adds	r5, r5, #4
.L113:
	ldr	r6, .L125
	ldr	r4, .L125+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L125+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L125+12
	bl	.L25
	ldr	r3, [sp, #4]
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L125+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r0, .L125+20
	ldrsb	r7, [r2, r3]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L125+24
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
	bls	.L116
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L125+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L125+32
	bl	.L41
	ldr	r3, .L125+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L125+8
.L124:
	bl	.L41
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L118
	strb	r3, [r2]
.L112:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L116:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L125+28
	ldr	r6, .L125+32
	bl	.L41
	ldr	r3, .L125+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L125+36
	movs	r3, r5
	b	.L124
.L118:
	movs	r3, #0
	ldr	r0, [sp, #4]
	strb	r3, [r2]
	ldr	r3, .L125+40
	bl	.L25
	b	.L112
.L126:
	.align	2
.L125:
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
	beq	.L128
	adds	r5, r5, #4
.L128:
	ldr	r6, .L140
	ldr	r4, .L140+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L140+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L140+12
	bl	.L25
	movs	r2, #54
	movs	r7, #4
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, r2]
	ldr	r3, .L140+16
	ldr	r0, .L140+20
	adds	r3, r3, r2
	ldrsb	r7, [r3, r7]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L140+24
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
	bls	.L131
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L140+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L140+32
	bl	.L41
	ldr	r3, .L140+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L140+8
.L139:
	bl	.L41
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L133
	strb	r3, [r2]
.L127:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L131:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L140+28
	ldr	r6, .L140+32
	bl	.L41
	ldr	r3, .L140+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L140+36
	movs	r3, r5
	b	.L139
.L133:
	movs	r4, #0
	ldr	r0, [sp, #4]
	strb	r4, [r2]
	ldr	r3, .L140+40
	bl	.L25
	movs	r1, r4
	ldr	r0, .L140
	ldr	r5, .L140+4
	bl	.L16
	movs	r1, r4
	ldr	r0, .L140+8
	bl	.L16
	b	.L127
.L141:
	.align	2
.L140:
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
	ldr	r3, .L143
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L144:
	.align	2
.L143:
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
	ldr	r3, .L146
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L147:
	.align	2
.L146:
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
	ldr	r3, .L149
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L150:
	.align	2
.L149:
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
	ldr	r3, .L152
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L153:
	.align	2
.L152:
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
	ldr	r1, .L155
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
.L156:
	.align	2
.L155:
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
	ldr	r3, .L158
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L159:
	.align	2
.L158:
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
	ldr	r3, .L162
	ldrb	r3, [r3]
	adds	r1, r3, #0
	cmp	r3, r0
	bls	.L161
	adds	r1, r0, #0
.L161:
	movs	r4, #127
	@ sp needed
	ldr	r3, .L162+4
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
.L163:
	.align	2
.L162:
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
	ldr	r3, .L188
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
	ldr	r3, .L188+4
	bl	.L25
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L178:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1335
	b	.L166	@long jump
.LCB1335:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L167
	cmp	r2, #0
	bne	.L168
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L169
	ldr	r3, .L188+8
	movs	r0, r1
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L170
	ldr	r3, .L188+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L170:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L177
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L187:
	ldr	r3, .L188+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L177:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L185:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L168:
	cmp	r2, #1
	bne	.L169
	cmp	r3, #0
	bne	.L169
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L169
	ldr	r3, .L188+8
	ldr	r0, [sp, #4]
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L173
	ldr	r3, .L188+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L173:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L174
	ldr	r3, .L188+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L174:
	ldrh	r3, [r6, #2]
.L169:
	adds	r6, r6, #4
	b	.L178
.L167:
	cmp	r2, #0
	bne	.L175
	ldr	r3, .L188+8
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L176
	ldr	r3, .L188+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L176:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L177
	ldrb	r0, [r6]
	ldr	r3, .L188+4
	bl	.L25
	b	.L187
.L175:
	cmp	r2, #1
	bne	.L169
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L169
	cmp	r0, #9
	beq	.L169
	b	.L187
.L166:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L185
.L189:
	.align	2
.L188:
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
	beq	.L190
	movs	r3, #0
	ldr	r4, .L202
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L192
	cmp	r7, #0
	bne	.L193
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L202+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L41
	ldr	r3, .L202+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L200:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L201
.L192:
	cmp	r7, #0
	bne	.L195
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L202+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L41
	ldr	r3, .L202+8
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
.L201:
	movs	r0, #0
	bl	.L41
.L199:
	ldr	r3, .L202+12
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
	ldr	r3, .L202+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L202+20
	bl	.L25
.L190:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L193:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L202+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L41
	ldr	r3, .L202+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L200
.L195:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L202+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L202+8
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
	ldr	r5, .L202+4
	asrs	r4, r4, #16
	bl	.L16
	b	.L199
.L203:
	.align	2
.L202:
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
	bne	.LCB1680
	b	.L204	@long jump
.LCB1680:
	ldrb	r0, [r5, #27]
	ldr	r3, .L229
	bl	.L25
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L229+4
	ldr	r2, .L229+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1700
	b	.L204	@long jump
.LCB1700:
	ldr	r0, .L229+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1706
	b	.L204	@long jump
.LCB1706:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L229+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L229+20
	cmp	r2, #255
	beq	.L206
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L206:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L229+24
	str	r2, [sp, #20]
	bl	.L25
	ldr	r3, .L229+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L207
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L207:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L229+32
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
	beq	.L208
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L208:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L229+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L229+20
	cmp	r3, #255
	beq	.L209
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L209:
	ldr	r3, .L229+24
	bl	.L25
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L229+32
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
	ldr	r3, .L229+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L229+40
	bl	.L25
	movs	r4, r0
	cmp	r0, r6
	bne	.L210
	ldr	r3, .L229+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L229+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L229+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L229+56
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
.L210:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L229+60
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
	beq	.L211
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
	ldr	r3, .L229+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L228:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L229+68
	bl	.L25
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L229+72
	bl	.L25
	adds	r4, r4, #84
	strh	r0, [r4]
.L204:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L211:
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
	ldr	r3, .L229+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L228
.L230:
	.align	2
.L229:
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
	ldr	r7, .L242
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L242+4
	adds	r0, r0, #8
	bl	.L25
	subs	r4, r0, #0
	bne	.L232
	movs	r0, r5
	ldr	r3, .L242+8
	bl	.L25
.L231:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L232:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L242+12
	bl	.L25
	ldr	r3, .L242+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L242+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L234
	ldr	r3, .L242+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L234
	ldr	r3, .L242+28
	movs	r0, r5
	bl	.L25
	movs	r1, #1
	ldr	r3, .L242+32
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r7
	ldr	r3, .L242+36
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
.L235:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L242+40
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
	b	.L231
.L234:
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
	beq	.L235
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L242+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L16
	b	.L235
.L243:
	.align	2
.L242:
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
	ldr	r6, .L255
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L255+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L25
	subs	r5, r0, #0
	bne	.L245
	movs	r0, r4
	ldr	r3, .L255+8
	bl	.L25
.L244:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L245:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L255+12
	bl	.L25
	movs	r7, r5
	ldr	r3, .L255+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L255+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L247
	ldr	r3, .L255+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L247
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L255+28
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L255+32
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
	ldr	r3, .L255+36
	movs	r0, r4
	bl	.L25
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L248:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L255+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L255+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L244
.L247:
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
	beq	.L248
	ldr	r3, .L255+36
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
	ldr	r6, .L255+48
	bl	.L41
	b	.L248
.L256:
	.align	2
.L255:
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
	ldr	r5, .L268
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L268+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L268+8
	bl	.L25
	cmp	r0, #0
	beq	.L257
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L260
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L260:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L257
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L257:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L269:
	.align	2
.L268:
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
	ldr	r3, .L306
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L271
	ldr	r2, .L306+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L272
.L302:
	ldrb	r0, [r5, #27]
	ldr	r3, .L306+8
	bl	.L25
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L272
.L271:
	ldr	r2, .L306+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L302
.L272:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L273
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
	ldr	r3, .L306+16
	bl	.L25
.L273:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2498
	b	.L274	@long jump
.LCB2498:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L306+20
	bl	.L16
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L275
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
	ldr	r3, .L306+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L306+28
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
	ldr	r3, .L306+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L305:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L306+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L306+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L270:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L275:
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
	ldr	r3, .L306+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L306+28
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
	ldr	r3, .L306+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L305
.L274:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L306+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L306+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L306+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L306+48
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
	beq	.L277
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L278
.L303:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L278
.L277:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L303
.L278:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L279
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L306+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L280
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2746
	b	.L281	@long jump
.LCB2746:
	lsls	r3, r3, #28
	bmi	.LCB2752
	b	.L282	@long jump
.LCB2752:
.L280:
	movs	r0, r7
	ldr	r3, .L306+56
	bl	.L25
	ldr	r3, .L306+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L25
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L306+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2771
	b	.L284	@long jump
.LCB2771:
	ldr	r3, .L306+60
	movs	r0, r7
	bl	.L25
	ldr	r3, .L306+64
	bl	.L25
	cmp	r0, #0
	bne	.LCB2779
	b	.L284	@long jump
.LCB2779:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L306+68
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L306+72
	movs	r1, r4
	ldr	r3, .L306+76
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L306+80
	bl	.L25
.L279:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L306+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L306+88
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
	beq	.L285
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
.L304:
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
	b	.L270
.L281:
	lsls	r3, r3, #30
	bpl	.LCB2879
	b	.L280	@long jump
.LCB2879:
.L282:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L283
	movs	r1, r3
.L283:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2895
	b	.L280	@long jump
.LCB2895:
	movs	r5, r3
	b	.L280
.L307:
	.align	2
.L306:
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
.L284:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L308
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L308+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L308+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L279
.L285:
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
	b	.L304
.L309:
	.align	2
.L308:
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
	beq	.L311
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L312
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L311:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L310
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L315
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L310:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L312:
	ldr	r2, .L323
	ldrh	r5, [r2]
	ldr	r2, .L323+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L313
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L311
.L313:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L311
.L315:
	ldr	r3, .L323
	ldr	r1, .L323+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L316
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L310
.L316:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L310
.L324:
	.align	2
.L323:
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
	bne	.L326
.L332:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L327
.L328:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L339
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L326:
	movs	r2, r0
	ldr	r1, .L339+4
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
	ldr	r7, .L339+8
	lsrs	r3, r3, #16
.L329:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L332
	cmp	r2, #0
	beq	.L336
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L330:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L329
.L336:
	movs	r5, #1
	b	.L330
.L327:
	ldr	r1, .L339+4
	ldrb	r5, [r1]
	ldr	r1, .L339+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L339+16
	lsrs	r3, r3, #16
.L333:
	cmp	r5, r1
	ble	.L328
	cmp	r2, #0
	beq	.L337
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L334:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L333
.L337:
	movs	r4, #1
	b	.L334
.L340:
	.align	2
.L339:
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
	bls	.L342
	movs	r2, #240
	ldr	r3, .L350
	strh	r2, [r3, #44]
	ldr	r2, .L350+4
	ldr	r1, .L350+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L350+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L343:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L346
	ldr	r3, .L350+16
	ldr	r0, .L350+20
	bl	.L25
	ldr	r1, .L350+24
	movs	r2, #32
	ldr	r3, .L350+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L350+32
	bl	PAU_bAnimGaugeScrEntries
.L346:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L342:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L344
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L344:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L345
	movs	r0, r4
	ldr	r3, .L350+36
	bl	.L25
	b	.L343
.L345:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L350+40
	bl	.L25
	b	.L343
.L351:
	.align	2
.L350:
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
	beq	.L353
	movs	r2, #0
	movs	r1, #56
.L353:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L362
	movs	r0, #1
	bl	.L41
	ldr	r3, .L362+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L352
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L355
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L355:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L356
	ldr	r3, .L362+8
.L361:
	bl	.L25
.L352:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L356:
	ldr	r3, .L362+12
	b	.L361
.L363:
	.align	2
.L362:
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
	ldr	r3, .L391
	ldr	r2, .L391+4
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
	ldr	r5, .L391+8
	ldr	r2, .L391+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L365
	ldr	r5, .L391+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L366
	cmp	r4, #0
	beq	.L388
.L370:
	cmp	r3, r2
	beq	.L368
.L369:
	ldr	r2, .L391+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L380
	adds	r3, r3, #1
	b	.L390
.L366:
	cmp	r4, #0
	beq	.L370
.L388:
	cmp	r3, r1
	bne	.L369
.L368:
	movs	r3, #0
.L390:
	strb	r3, [r5]
.L380:
	cmp	r6, #0
	bne	.L378
	b	.L372
.L365:
	cmp	r6, #0
	beq	.L372
	ldr	r5, .L391+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L373
	cmp	r4, #0
	beq	.L384
.L386:
	cmp	r3, r2
	beq	.L375
.L378:
	movs	r2, r0
	ldr	r1, .L391+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L376
.L372:
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
	ldr	r3, .L391+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L373:
	cmp	r4, #0
	beq	.L386
.L384:
	cmp	r3, r1
	bne	.L378
.L375:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L372
.L376:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L372
.L392:
	.align	2
.L391:
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
	ldr	r3, .L427
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L393
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L393
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L427+4
	cmp	r4, #3
	bne	.L397
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L393
	movs	r3, #17
	ldr	r2, .L427+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L393
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L427+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	subs	r0, r0, r3
	ldr	r3, .L427+16
	bl	.L25
	movs	r3, #0
	movs	r2, #17
	ldrsb	r3, [r7, r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #4
	subs	r2, r2, r3
	strh	r2, [r0, #6]
	movs	r2, #16
	ldrsb	r2, [r5, r2]
	lsls	r2, r2, #4
	subs	r3, r2, r3
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r7, .L427+20
	movs	r0, r5
	bl	.L429
	ldr	r3, .L427+24
	bl	.L25
	ldr	r3, .L427+28
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
	bl	.L429
	lsls	r3, r0, #3
	ldr	r0, .L427+32
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L426:
	lsls	r1, r2, #23
	bpl	.L400
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L400:
	lsls	r3, r2, #7
	bpl	.L399
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L399:
	str	r4, [r5, #60]
.L393:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L397:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L393
	movs	r0, #17
	ldr	r3, .L427+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L393
	ldr	r3, .L427+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L427+12
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	ldrsb	r2, [r5, r2]
	asrs	r3, r3, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #4
	adds	r2, r3, r2
	strh	r2, [r0, #6]
	movs	r2, #16
	ldrsb	r2, [r5, r2]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r6, .L427+20
	movs	r0, r5
	bl	.L41
	ldr	r3, .L427+24
	bl	.L25
	ldr	r3, .L427+28
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
	bl	.L41
	lsls	r3, r0, #3
	ldr	r0, .L427+32
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L426
.L428:
	.align	2
.L427:
	.word	GetUnit
	.word	513
	.word	gMapUnit
	.word	PAU_mapOffs
	.word	SMS_GetNewInfoStruct
	.word	GetUnitSMSId
	.word	SMS_RegisterUsage
	.word	GetUnitBattleMapSpritePaletteIndex
	.word	gStandingMapSpriteData
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
	bhi	.L431
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L432
	bl	.L25
.L431:
	@ sp needed
	movs	r5, #0
	ldr	r3, .L432+4
	ldrh	r7, [r4, #44]
	ldrsb	r5, [r3, r5]
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L432+8
	bl	.L25
	ldr	r6, [r4, #52]
	lsls	r0, r0, #16
	ldrh	r3, [r6, #4]
	lsrs	r0, r0, #16
	adds	r3, r0, r3
	strh	r3, [r6, #4]
	ldrh	r3, [r6, #6]
	ldr	r4, [r4, #64]
	adds	r0, r0, r3
	strh	r0, [r6, #6]
	movs	r1, r7
	ldr	r3, .L432+8
	rsbs	r0, r5, #0
	bl	.L25
	movs	r2, r4
	adds	r2, r2, #80
	ldrh	r3, [r2]
	lsls	r0, r0, #20
	lsrs	r0, r0, #16
	adds	r3, r0, r3
	strh	r3, [r2]
	adds	r4, r4, #82
	ldrh	r3, [r4]
	adds	r0, r0, r3
	strh	r0, [r4]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L433:
	.align	2
.L432:
	.word	BreakProcLoop
	.word	PAU_mapOffs
	.word	__aeabi_idiv
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
	ldr	r4, .L438
.L436:
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L435
	movs	r1, r7
	movs	r0, r4
	bl	.L41
.L435:
	ldr	r3, .L438+4
	adds	r4, r4, #108
	cmp	r4, r3
	bne	.L436
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L439:
	.align	2
.L438:
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
	ldr	r2, .L455
	ldr	r3, .L455+4
	add	r1, sp, #16
	add	r0, sp, #12
	str	r5, [sp, #12]
	movs	r4, r5
	bl	.L25
.L442:
	movs	r0, r5
	ldr	r3, .L455+8
	bl	.L25
	cmp	r0, #0
	beq	.L441
	movs	r1, #8
	add	r2, sp, #8
	lsls	r3, r4, #2
	adds	r2, r2, r1
	str	r0, [r2, r3]
	adds	r4, r4, #1
.L441:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L442
	movs	r0, #0
	subs	r2, r4, #1
	str	r2, [sp, #4]
	add	r3, sp, #16
.L443:
	ldr	r2, [sp, #4]
	cmp	r2, r0
	bgt	.L448
	movs	r3, #0
	movs	r2, #10
.L449:
	cmp	r4, r3
	bne	.L450
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L448:
	movs	r5, r3
	adds	r0, r0, #1
	str	r0, [sp]
.L444:
	ldr	r2, [sp]
	cmp	r4, r2
	bne	.L447
	adds	r3, r3, #4
	b	.L443
.L447:
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
	bgt	.L445
	blt	.L446
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
	bgt	.L445
	blt	.L446
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
	bgt	.L445
	blt	.L446
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
	ble	.L446
.L445:
	str	r1, [r3]
	str	r2, [r5, #4]
.L446:
	ldr	r2, [sp]
	adds	r2, r2, #1
	str	r2, [sp]
	adds	r5, r5, #4
	b	.L444
.L450:
	movs	r5, #8
	add	r0, sp, #8
	lsls	r1, r3, #2
	adds	r0, r0, r5
	ldr	r1, [r0, r1]
	ldr	r1, [r1, #48]
	subs	r0, r2, r3
	strh	r0, [r1, #30]
	adds	r3, r3, #1
	b	.L449
.L456:
	.align	2
.L455:
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
	ldr	r3, .L464
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L464+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L464+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L457
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L457
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L457
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L464+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	ldr	r1, [sp, #12]
	movs	r0, r6
	rsbs	r3, r3, #0
	ldr	r6, .L464+16
	bl	.L41
	movs	r3, r0
	movs	r2, #0
	movs	r1, r5
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	ldr	r3, .L464+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r2, r3, #4
	adds	r1, r1, #80
	strh	r2, [r1]
	strh	r2, [r1, #2]
	movs	r2, r0
	rsbs	r3, r3, #0
	lsls	r3, r3, #4
	adds	r2, r2, #80
	adds	r0, r0, #82
	strh	r3, [r2]
	strh	r3, [r0]
	bl	PAU_muSortObjLayers
.L457:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L465:
	.align	2
.L464:
	.word	MU_Create
	.word	GetUnit
	.word	PAU_showBothMapSprites
	.word	GetUnitMapSpritePaletteIndex
	.word	MU_CreateInternal
	.word	PAU_mapOffs
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
	ldr	r3, .L497
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L497+4
	adds	r3, r3, #94
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L467
	movs	r4, r3
	cmp	r3, #2
	bne	.L469
	ldr	r2, .L497+8
	ldr	r2, [r2]
	ldr	r1, [r2]
	movs	r2, #128
	movs	r5, r1
	lsls	r2, r2, #3
	ands	r5, r2
	adds	r4, r4, #2
	tst	r1, r2
	bne	.L469
	ldr	r2, .L497+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L469
	movs	r6, #20
.L471:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L497+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L470
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L470
	adds	r4, r4, #1
.L470:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L471
.L469:
	movs	r3, #0
.L474:
	cmp	r3, r4
	bne	.L475
	movs	r5, #0
	add	r3, sp, #28
.L476:
	subs	r2, r4, #1
	cmp	r2, r5
	bgt	.L481
	movs	r3, #0
	movs	r1, #20
.L482:
	cmp	r3, r4
	beq	.LCB4202
	b	.L483	@long jump
.LCB4202:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L467:
	ldr	r2, .L497+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L469
	movs	r5, #0
	movs	r6, #20
.L473:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L497+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L472
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L472
	adds	r4, r4, #1
.L472:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L473
	b	.L469
.L475:
	add	r2, sp, #28
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	b	.L474
.L481:
	movs	r2, r3
	adds	r5, r5, #1
	str	r5, [sp]
.L477:
	ldr	r1, [sp]
	cmp	r1, r4
	bne	.L480
	adds	r3, r3, #1
	b	.L476
.L480:
	movs	r0, #20
	ldrb	r1, [r3]
	muls	r0, r1
	str	r1, [sp, #4]
	ldr	r1, .L497+4
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
	ldr	r6, .L497+4
	ldr	r6, [r1, r6]
	ldrsb	r7, [r6, r7]
	cmp	ip, r7
	bgt	.L478
	blt	.L479
	ldr	r7, .L497+4
	adds	r0, r7, r0
	ldr	r0, [r0, #8]
	movs	r7, r0
	str	r0, [sp, #16]
	adds	r7, r7, #82
	movs	r0, #0
	ldrsh	r7, [r7, r0]
	ldr	r0, .L497+4
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
	bgt	.L478
	blt	.L479
	movs	r7, #16
	ldr	r0, [sp, #8]
	ldrb	r6, [r6, #16]
	ldrsb	r7, [r0, r7]
	lsls	r6, r6, #24
	asrs	r6, r6, #24
	cmp	r7, r6
	bgt	.L478
	blt	.L479
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	adds	r0, r0, #80
	adds	r1, r1, #80
	movs	r6, #0
	ldrsh	r0, [r0, r6]
	movs	r6, #0
	ldrsh	r1, [r1, r6]
	cmp	r0, r1
	ble	.L479
.L478:
	ldr	r1, [sp, #12]
	strb	r1, [r3]
	ldr	r1, [sp, #4]
	strb	r1, [r2, #1]
.L479:
	ldr	r1, [sp]
	adds	r1, r1, #1
	str	r1, [sp]
	adds	r2, r2, #1
	b	.L477
.L483:
	add	r2, sp, #28
	ldrb	r2, [r2, r3]
	muls	r2, r1
	ldr	r0, .L497+4
	adds	r2, r0, r2
	ldr	r2, [r2, #8]
	add	r0, sp, #24
	ldrb	r0, [r3, r0]
	ldr	r2, [r2, #48]
	adds	r3, r3, #1
	strh	r0, [r2, #30]
	b	.L482
.L498:
	.align	2
.L497:
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
	movs	r3, r0
	push	{r4, r5, r6, r7, lr}
	movs	r6, #0
	movs	r7, #1
	ldrh	r5, [r0, #42]
	adds	r5, r5, #1
	lsls	r5, r5, #16
	lsrs	r5, r5, #16
	strh	r5, [r0, #42]
	adds	r3, r3, #50
	ldrsb	r6, [r3, r6]
	ldrsb	r7, [r3, r7]
	sub	sp, sp, #20
	subs	r3, r3, #4
	str	r3, [sp, #12]
	ldrb	r2, [r3]
	movs	r3, #20
	muls	r2, r3
	ldr	r1, .L516
	adds	r2, r1, r2
	ldr	r2, [r2, #8]
	str	r2, [sp, #4]
	movs	r2, r0
	adds	r2, r2, #47
	ldrb	r2, [r2]
	muls	r3, r2
	adds	r3, r1, r3
	ldr	r3, [r3, #8]
	str	r3, [sp, #8]
	movs	r3, r0
	adds	r3, r3, #52
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	movs	r4, r0
	asrs	r3, r3, #24
	cmp	r3, r6
	bne	.L500
	movs	r1, #0
	ldr	r3, .L516+4
	ldrsb	r1, [r3, r1]
	lsls	r0, r5, #3
	ldr	r3, .L516+8
	lsls	r1, r1, #1
	bl	.L25
	subs	r3, r7, r0
	cmp	r7, #0
	bge	.L502
	adds	r3, r0, r7
.L502:
	ldr	r2, [sp, #4]
	lsls	r1, r3, #4
	adds	r2, r2, #82
	strh	r1, [r2]
	ldr	r2, [sp, #8]
	rsbs	r3, r3, #0
	lsls	r3, r3, #4
	adds	r2, r2, #82
.L514:
	strh	r3, [r2]
.L503:
	ldrh	r3, [r4, #44]
	subs	r5, r5, #1
	lsrs	r3, r3, #1
	cmp	r5, r3
	bne	.L507
	bl	PAU_battleMuSortObjLayers
.L507:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcc	.L499
	movs	r1, #20
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]
	muls	r3, r1
	ldr	r0, .L516
	adds	r3, r0, r3
	ldr	r0, [r3, #8]
	movs	r2, #52
	movs	r3, r0
	ldrsb	r2, [r4, r2]
	adds	r3, r3, #80
	lsls	r5, r2, #4
	strh	r5, [r3]
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r5, r3, #4
	adds	r0, r0, #82
	strh	r5, [r0]
	movs	r5, r4
	adds	r5, r5, #47
	ldrb	r0, [r5]
	muls	r1, r0
	ldr	r0, .L516
	adds	r1, r0, r1
	ldr	r1, [r1, #8]
	movs	r0, r1
	rsbs	r2, r2, #0
	rsbs	r3, r3, #0
	lsls	r2, r2, #4
	lsls	r3, r3, #4
	adds	r0, r0, #80
	adds	r1, r1, #82
	strh	r2, [r0]
	strh	r3, [r1]
	bl	PAU_battleMuSortObjLayers
	movs	r3, r4
	adds	r3, r3, #41
	ldrb	r2, [r3]
	lsls	r3, r2, #28
	bmi	.L510
	ldrb	r1, [r5]
	lsls	r3, r2, #30
	bmi	.L511
	ldr	r3, .L516
	adds	r3, r3, #88
.L515:
	mvns	r2, r2
	strb	r1, [r3]
	lsls	r3, r2, #30
	bne	.L510
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L516+12
	bl	.L25
.L510:
	movs	r0, r4
	ldr	r3, .L516+16
	bl	.L25
.L499:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L500:
	movs	r3, r0
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r7
	bne	.L504
	movs	r1, #0
	ldr	r3, .L516+4
	ldrsb	r1, [r3, r1]
	lsls	r0, r5, #3
	ldr	r3, .L516+8
	lsls	r1, r1, #1
	bl	.L25
	subs	r3, r6, r0
	cmp	r6, #0
	bge	.L506
	adds	r3, r0, r6
.L506:
	ldr	r2, [sp, #4]
	lsls	r1, r3, #4
	adds	r2, r2, #80
	strh	r1, [r2]
	ldr	r2, [sp, #8]
	rsbs	r3, r3, #0
	lsls	r3, r3, #4
	adds	r2, r2, #80
	b	.L514
.L504:
	movs	r3, r0
	movs	r6, #255
	adds	r3, r3, #48
	ldrb	r3, [r3]
	lsls	r2, r5, #4
	ands	r2, r6
	adds	r3, r3, r2
	ldr	r1, .L516+20
	ands	r3, r6
	lsls	r3, r3, #1
	mov	ip, r1
	ldrsh	r7, [r3, r1]
	movs	r1, r0
	adds	r1, r1, #49
	ldrb	r1, [r1]
	adds	r2, r1, r2
	ands	r2, r6
	ldr	r6, .L516+24
	lsls	r2, r2, #1
	ldrsh	r1, [r2, r6]
	mov	r0, ip
	ldrsh	r2, [r2, r0]
	ldrsh	r3, [r3, r6]
	ldr	r0, [sp, #4]
	asrs	r3, r3, #6
	adds	r0, r0, #80
	strh	r3, [r0]
	ldr	r3, [sp, #4]
	rsbs	r7, r7, #0
	adds	r3, r3, #82
	asrs	r7, r7, #6
	strh	r7, [r3]
	ldr	r3, [sp, #8]
	asrs	r1, r1, #6
	adds	r3, r3, #80
	strh	r1, [r3]
	ldr	r3, [sp, #8]
	rsbs	r2, r2, #0
	asrs	r2, r2, #6
	adds	r3, r3, #82
	strh	r2, [r3]
	b	.L503
.L511:
	ldr	r3, .L516
	adds	r3, r3, #89
	b	.L515
.L517:
	.align	2
.L516:
	.word	gMapAnimData
	.word	PAU_mapOffs
	.word	__aeabi_idiv
	.word	ProcGoto
	.word	BreakProcLoop
	.word	gSinLookup
	.word	gCosLookup
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
	movs	r3, r0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	adds	r3, r3, #48
	ldrb	r4, [r3]
	adds	r4, r4, #1
	ldr	r7, [r0, #44]
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
	strb	r4, [r3]
	movs	r3, r7
	adds	r3, r3, #80
	movs	r1, #0
	ldrsh	r1, [r3, r1]
	asrs	r3, r1, #4
	str	r3, [sp]
	movs	r3, r7
	adds	r3, r3, #82
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	asrs	r3, r3, #4
	movs	r6, r0
	movs	r5, #4
	str	r3, [sp, #4]
	lsls	r3, r4, #31
	bmi	.L519
	subs	r5, r5, #8
.L519:
	cmp	r4, #1
	bne	.L520
	movs	r5, #2
.L520:
	ldr	r3, [sp]
	movs	r0, r7
	adds	r1, r5, r3
	ldr	r2, [sp, #4]
	ldr	r3, .L524
	bl	.L25
	cmp	r4, #11
	bls	.L518
	ldr	r3, [sp]
	asrs	r1, r5, #1
	movs	r0, r7
	adds	r1, r1, r3
	ldr	r2, [sp, #4]
	ldr	r3, .L524
	bl	.L25
	movs	r0, r6
	ldr	r3, .L524+4
	bl	.L25
.L518:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L525:
	.align	2
.L524:
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L575
	ldrb	r3, [r3]
	sub	sp, sp, #28
	str	r0, [sp, #4]
	str	r1, [sp, #20]
	cmp	r3, #0
	bne	.L527
.L530:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.LCB4726
	b	.L573	@long jump
.LCB4726:
	ldr	r3, .L575+4
	bl	.L25
	movs	r3, #1
.L574:
	str	r3, [sp, #4]
	b	.L553
.L527:
	ldr	r3, .L575+8
	ldr	r3, [r3]
	ldr	r2, [r3]
	movs	r3, #128
	movs	r7, r2
	lsls	r3, r3, #3
	ands	r7, r3
	tst	r2, r3
	bne	.L530
	ldr	r5, .L575+12
	movs	r3, r5
	adds	r3, r3, #88
	ldrb	r3, [r3]
	str	r3, [sp, #16]
	movs	r3, r5
	movs	r6, #20
	adds	r3, r3, #89
	ldrb	r3, [r3]
	str	r3, [sp, #12]
	ldr	r3, [sp, #16]
	muls	r3, r6
	ldr	r0, [r3, r5]
	movs	r6, r3
	bl	PAU_isPairedUp
	movs	r3, #8
	subs	r4, r0, #0
	str	r3, [sp, #8]
	bne	.LCB4767
	b	.L531	@long jump
.LCB4767:
	adds	r0, r5, r6
	ldr	r3, [r0, #8]
	movs	r2, r3
	adds	r3, r3, #82
	adds	r2, r2, #80
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, #0
	ldrsh	r3, [r3, r1]
	ldr	r1, [r6, r5]
	asrs	r2, r2, #4
	asrs	r3, r3, #4
.L534:
	ldr	r4, [r5]
	cmp	r4, r1
	beq	.L532
	ldr	r4, [r5, #4]
	ldr	r6, [r0, #4]
	cmp	r4, r6
	beq	.L533
.L532:
	adds	r7, r7, #1
	adds	r5, r5, #20
	cmp	r7, #4
	bne	.L534
.L533:
	movs	r0, #20
	ldr	r4, [sp, #12]
	muls	r4, r0
	movs	r0, r4
	ldr	r4, .L575+12
	movs	r6, #16
	ldr	r0, [r0, r4]
	movs	r4, #16
	ldrsb	r6, [r0, r6]
	ldrsb	r4, [r1, r4]
	cmp	r6, r4
	bgt	.LCB4809
	b	.L535	@long jump
.LCB4809:
	movs	r5, #0
	ldr	r4, .L575+16
	ldrsb	r5, [r4, r5]
.L536:
	ldrb	r0, [r0, #17]
	ldrb	r1, [r1, #17]
	lsls	r0, r0, #24
	lsls	r1, r1, #24
	asrs	r0, r0, #24
	asrs	r1, r1, #24
	cmp	r0, r1
	bgt	.LCB4822
	b	.L537	@long jump
.LCB4822:
	movs	r6, #0
	ldr	r1, .L575+16
	ldrsb	r6, [r1, r6]
.L538:
	ldr	r1, .L575+12
	ldr	r0, [sp, #4]
	ldr	r1, [r1, #80]
	cmp	r0, #0
	bne	.L539
	ldrb	r0, [r1, #2]
	lsrs	r0, r0, #3
	lsls	r0, r0, #27
	bpl	.L539
	movs	r5, #0
	ldr	r0, .L575+16
	ldrsb	r5, [r0, r5]
	movs	r6, r5
.L539:
	movs	r4, #8
	subs	r1, r1, #8
	ldrb	r0, [r1, #4]
	ldr	r1, .L575+20
	lsls	r1, r1, #24
	str	r4, [sp, #8]
	lsrs	r1, r1, #24
	cmp	r0, r1
	bne	.L540
	movs	r1, #0
	str	r1, [sp, #8]
	rsbs	r5, r5, #0
	rsbs	r6, r6, #0
.L540:
	cmp	r5, r2
	bne	.L541
	movs	r4, #0
	cmp	r6, r3
	beq	.L531
.L541:
	ldr	r1, [sp, #20]
	ldr	r3, .L575+24
	ldr	r0, .L575+28
	bl	.L25
	movs	r2, r0
	ldr	r1, [sp, #4]
	ldr	r3, [sp, #8]
	adds	r2, r2, #41
	orrs	r3, r1
	strb	r3, [r2]
	movs	r3, r0
	ldr	r2, [sp, #16]
	adds	r3, r3, #46
	strb	r2, [r3]
	movs	r2, #20
	strb	r7, [r3, #1]
	ldr	r3, [sp, #16]
	muls	r3, r2
	movs	r2, r3
	ldr	r3, .L575+12
	adds	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, r3
	adds	r2, r2, #80
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, r0
	asrs	r2, r2, #4
	adds	r1, r1, #50
	strb	r2, [r1]
	adds	r3, r3, #82
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r0
	asrs	r3, r3, #4
	adds	r2, r2, #51
	strb	r3, [r2]
	movs	r3, r0
	movs	r4, r0
	adds	r3, r3, #52
	strb	r5, [r3]
	strb	r6, [r3, #1]
.L531:
	movs	r6, #20
	ldr	r3, [sp, #12]
	muls	r3, r6
	ldr	r5, .L575+12
	ldr	r0, [r3, r5]
	movs	r6, r3
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.LCB4921
	b	.L542	@long jump
.LCB4921:
	adds	r1, r5, r6
	ldr	r3, [r1, #8]
	movs	r2, r3
	movs	r7, #0
	adds	r2, r2, #80
	movs	r0, #0
	ldrsh	r2, [r2, r0]
	adds	r3, r3, #82
	asrs	r2, r2, #4
	mov	ip, r2
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [r6, r5]
	asrs	r3, r3, #4
.L545:
	ldr	r0, [r5]
	cmp	r0, r2
	beq	.L543
	ldr	r0, [r5, #4]
	ldr	r6, [r1, #4]
	cmp	r0, r6
	beq	.L544
.L543:
	adds	r7, r7, #1
	adds	r5, r5, #20
	cmp	r7, #4
	bne	.L545
.L544:
	movs	r1, #20
	ldr	r0, [sp, #16]
	muls	r0, r1
	movs	r1, r0
	ldr	r0, .L575+12
	movs	r6, #16
	ldr	r1, [r1, r0]
	movs	r0, #16
	ldrsb	r6, [r1, r6]
	ldrsb	r0, [r2, r0]
	cmp	r6, r0
	ble	.L546
	movs	r5, #0
	ldr	r0, .L575+16
	ldrsb	r5, [r0, r5]
.L547:
	ldrb	r1, [r1, #17]
	ldrb	r2, [r2, #17]
	lsls	r1, r1, #24
	lsls	r2, r2, #24
	asrs	r1, r1, #24
	asrs	r2, r2, #24
	cmp	r1, r2
	ble	.L548
	movs	r6, #0
	ldr	r2, .L575+16
	ldrsb	r6, [r2, r6]
.L549:
	ldr	r2, .L575+12
	ldr	r1, [sp, #4]
	ldr	r2, [r2, #80]
	cmp	r1, #0
	bne	.L550
	ldrb	r1, [r2, #2]
	lsrs	r1, r1, #3
	lsls	r1, r1, #27
	bpl	.L550
	movs	r5, #0
	ldr	r1, .L575+16
	ldrsb	r5, [r1, r5]
	movs	r6, r5
.L550:
	subs	r2, r2, #8
	ldrb	r1, [r2, #4]
	ldr	r2, .L575+32
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r1, r2
	bne	.L551
	movs	r2, #2
	str	r2, [sp, #8]
	rsbs	r5, r5, #0
	rsbs	r6, r6, #0
.L551:
	cmp	r5, ip
	bne	.L552
	cmp	r6, r3
	beq	.L542
.L552:
	ldr	r1, [sp, #20]
	ldr	r3, .L575+24
	ldr	r0, .L575+28
	bl	.L25
	ldr	r2, [sp, #4]
	ldr	r3, [sp, #8]
	orrs	r3, r2
	movs	r2, #4
	orrs	r3, r2
	movs	r2, r0
	adds	r2, r2, #41
	strb	r3, [r2]
	movs	r3, r0
	ldr	r2, [sp, #12]
	adds	r3, r3, #46
	strb	r2, [r3]
	movs	r2, #20
	strb	r7, [r3, #1]
	ldr	r3, [sp, #12]
	muls	r3, r2
	movs	r2, r3
	ldr	r3, .L575+12
	adds	r3, r3, r2
	ldr	r3, [r3, #8]
	movs	r2, r3
	adds	r2, r2, #80
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, r0
	asrs	r2, r2, #4
	adds	r1, r1, #50
	strb	r2, [r1]
	adds	r3, r3, #82
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r0
	asrs	r3, r3, #4
	adds	r2, r2, #51
	strb	r3, [r2]
	movs	r3, r0
	adds	r0, r0, #53
	adds	r3, r3, #52
	strb	r5, [r3]
	strb	r6, [r0]
.L561:
	movs	r3, #0
	b	.L574
.L535:
	movs	r5, r2
	cmp	r6, r4
	blt	.LCB5074
	b	.L536	@long jump
.LCB5074:
	movs	r5, #0
	ldr	r4, .L575+16
	ldrsb	r5, [r4, r5]
	rsbs	r5, r5, #0
	b	.L536
.L537:
	movs	r6, r3
	cmp	r0, r1
	blt	.LCB5085
	b	.L538	@long jump
.LCB5085:
	movs	r6, #0
	ldr	r1, .L575+16
	ldrsb	r6, [r1, r6]
	rsbs	r6, r6, #0
	b	.L538
.L546:
	mov	r5, ip
	cmp	r6, r0
	bge	.L547
	movs	r5, #0
	ldr	r0, .L575+16
	ldrsb	r5, [r0, r5]
	rsbs	r5, r5, #0
	b	.L547
.L548:
	movs	r6, r3
	cmp	r1, r2
	bge	.L549
	movs	r6, #0
	ldr	r2, .L575+16
	ldrsb	r6, [r2, r6]
	rsbs	r6, r6, #0
	b	.L549
.L542:
	cmp	r4, #0
	bne	.LCB5117
	b	.L530	@long jump
.LCB5117:
	b	.L561
.L573:
	ldr	r0, [sp, #20]
	ldr	r3, .L575+36
	bl	.L25
.L553:
	ldr	r0, [sp, #4]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L576:
	.align	2
.L575:
	.word	PAU_showBothMapSprites
	.word	MapAnim_BeginSubjectFastAnim
	.word	battleBuffer
	.word	gMapAnimData
	.word	PAU_mapOffs
	.word	DualStrikeID
	.word	ProcStartBlocking
	.word	PAU_swapMapSpriteProcInstr
	.word	DualGuardID
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
	ldr	r3, .L593
	ldr	r0, .L593+4
	sub	sp, sp, #20
	bl	.L25
	ldr	r3, .L593+8
	adds	r3, r3, #94
	ldrb	r2, [r3]
	ldr	r3, [r4, #52]
	adds	r3, r3, #46
	cmp	r2, #1
	bne	.L578
	ldrb	r1, [r3]
	subs	r1, r1, #1
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	str	r1, [sp, #4]
.L579:
	movs	r3, r4
	adds	r3, r3, #47
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L580
.L587:
	movs	r3, r4
	adds	r3, r3, #46
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L581
.L582:
	movs	r0, #1
	ldr	r3, .L593+12
	bl	.L25
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L578:
	ldrb	r3, [r3]
	movs	r1, r3
	subs	r1, r1, #10
	lsls	r1, r1, #16
	adds	r3, r3, #5
	str	r3, [sp, #4]
	lsrs	r1, r1, #16
	b	.L579
.L580:
	movs	r6, r4
	adds	r6, r6, #49
	str	r6, [sp, #12]
	ldr	r6, .L593+16
	movs	r5, #0
	mov	ip, r6
	ldr	r3, .L593+20
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
.L583:
	ldr	r6, [sp, #8]
	cmp	r6, r5
	ble	.L587
	ldr	r6, [sp, #12]
	ldrb	r7, [r6]
	ldr	r6, [r4, #52]
	adds	r6, r6, #47
	cmp	r7, r5
	bgt	.L584
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r2, [r7, r6]
.L585:
	adds	r5, r5, #1
	b	.L583
.L584:
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r3, [r7, r6]
	b	.L585
.L581:
	ldr	r3, .L593+20
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
	ldr	r5, .L593+16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	adds	r7, r7, #48
.L588:
	cmp	r6, r2
	ble	.L582
	ldrb	r0, [r7]
	mov	ip, r0
	ldr	r0, [r4, #52]
	adds	r0, r0, #47
	ldrb	r0, [r0]
	lsls	r0, r0, #5
	cmp	ip, r2
	bgt	.L589
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r3, [r5, r0]
.L590:
	adds	r2, r2, #1
	b	.L588
.L589:
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r1, [r5, r0]
	b	.L590
.L594:
	.align	2
.L593:
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
	ldr	r3, .L597
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L597+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L597+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L597+12
	ldr	r3, .L597+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L598:
	.align	2
.L597:
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
	ldr	r3, .L603
	movs	r5, r1
	bl	.L25
	ldr	r3, .L603+4
	bl	.L25
	cmp	r0, #39
	bhi	.L600
	ldr	r3, .L603+8
.L602:
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
.L600:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L602
.L604:
	.align	2
.L603:
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
	ldr	r1, .L622
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L622+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L622+8
	ldr	r3, .L622+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L622+16
	bl	.L25
	ldr	r3, .L622+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L606
	ldr	r3, .L622+24
	str	r3, [sp, #4]
.L606:
	movs	r7, #0
	ldr	r3, .L622+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L611:
	movs	r0, r5
	ldr	r3, .L622+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L622+36
	bl	.L25
	ldr	r3, .L622+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L622+44
	bl	.L25
	cmp	r7, #6
	bne	.L607
	ldr	r6, .L622+48
	ldr	r0, [sp, #8]
	bl	.L41
	ldr	r3, .L622+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L41
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L608
	adds	r3, r0, #0
.L608:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L609:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L613
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L614
	cmp	r4, #0
	blt	.L615
	movs	r2, #21
	cmp	r4, #0
	beq	.L616
	movs	r6, #4
	cmp	r4, #9
	ble	.L620
	cmp	r4, #99
	ble	.L618
.L621:
	movs	r0, #5
.L610:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L622+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L622+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L622+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L611
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L607:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L609
.L613:
	movs	r2, #20
	movs	r6, #3
	b	.L621
.L614:
	movs	r2, #20
	movs	r6, #3
.L618:
	movs	r0, #6
	b	.L610
.L615:
	movs	r2, #20
	movs	r6, #3
.L620:
	movs	r0, #7
	b	.L610
.L616:
	movs	r6, r4
	b	.L620
.L623:
	.align	2
.L622:
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
	ldr	r5, .L627
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L627+4
	adds	r0, r0, #48
	bl	.L25
	ldr	r3, .L627+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L627+12
	adds	r0, r0, #44
	bl	.L429
	movs	r6, #52
.L625:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L429
	cmp	r6, #108
	bne	.L625
	ldr	r0, .L627+16
	lsls	r0, r0, #16
	ldr	r3, .L627+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L627+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L627+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L627+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r1, #136
	movs	r2, #32
	ldr	r0, .L627+36
	lsls	r1, r1, #2
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L628:
	.align	2
.L627:
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
	ldr	r3, .L636
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L636+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L636+8
	movs	r5, r0
	bl	.L25
	ldr	r3, [r4, #60]
	lsls	r2, r0, #3
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L636+12
	str	r0, [sp]
	bl	.L25
	ldr	r7, .L636+16
	ldr	r0, .L636+20
	movs	r1, r7
	ldr	r3, .L636+24
	bl	.L25
	ldr	r3, [sp]
	ldr	r0, .L636+28
	lsls	r6, r3, #1
	movs	r1, r7
	movs	r2, #0
	ldr	r3, .L636+32
	adds	r0, r6, r0
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L636+36
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
	ldr	r3, .L636+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L636+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L636+48
	movs	r0, r7
	bl	.L25
	movs	r1, r6
	ldr	r0, [r4, #60]
	ldr	r7, .L636+52
	adds	r1, r1, #70
	ldr	r3, .L636+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	ldr	r1, [sp]
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L636+60
	ldr	r3, .L636+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L636+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L630
	movs	r5, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r5, r5, #3
.L631:
	adds	r6, r6, #212
	adds	r6, r7, r6
	movs	r1, r5
	movs	r2, #0
	movs	r0, r6
	ldr	r3, .L636+72
	bl	.L25
	adds	r3, r5, #1
	movs	r1, r3
	movs	r2, #0
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r3, .L636+72
	bl	.L25
	movs	r0, r4
	ldr	r3, .L636+76
	bl	.L25
	movs	r3, #2
	ldr	r1, .L636+80
	movs	r2, r3
	ldr	r4, .L636+84
	bl	.L20
	movs	r0, r5
	ldr	r5, .L636+88
	bl	.L16
	movs	r4, r0
	ldr	r0, [sp, #4]
	bl	.L16
	ldr	r3, .L636+92
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
.L632:
	adds	r3, r3, #1
	adds	r6, r6, #64
	cmp	r2, r3
	bge	.L635
	@ sp needed
	movs	r0, #3
	ldr	r3, .L636+96
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L630:
	ldr	r4, .L636+100
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r5, .L636+104
	lsrs	r4, r4, #16
	b	.L631
.L635:
	cmp	r2, r3
	ble	.L633
	strh	r5, [r6]
	strh	r4, [r6, #2]
	b	.L632
.L633:
	strh	r0, [r6]
	strh	r1, [r6, #2]
	b	.L632
.L637:
	.align	2
.L636:
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
	ldr	r3, .L639
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L639+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L639+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L639+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L639+16
	ldr	r3, .L639+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L640:
	.align	2
.L639:
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
	ldr	r0, .L642
	ldr	r3, .L642+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L642+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L643:
	.align	2
.L642:
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
	ldr	r1, .L648
	ldr	r3, .L648+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L648+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L648+12
	cmp	r0, #0
	bne	.L647
	ldr	r2, .L648+16
.L647:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L649:
	.align	2
.L648:
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
	ldr	r1, .L654
	ldr	r3, .L654+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L654+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L654+12
	cmp	r0, #0
	bne	.L653
	ldr	r2, .L654+16
.L653:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L655:
	.align	2
.L654:
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
	ldr	r3, .L657
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r3, [r4, #60]
	adds	r3, r3, #41
	ldrb	r2, [r3]
	movs	r1, r4
	movs	r3, #0
	ldr	r0, .L657+4
	ldr	r4, .L657+8
	lsrs	r2, r2, #3
	bl	.L20
	movs	r0, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L658:
	.align	2
.L657:
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
	ldr	r6, .L666
	ldr	r5, .L666+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L666+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L666+12
	ldrsb	r0, [r5, r0]
	bl	.L41
	movs	r6, r0
	ldr	r3, .L666+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L666+20
	bl	.L41
	ldr	r3, .L666+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L661
	ldr	r0, .L666+28
	ldr	r3, .L666+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L661
	ldr	r0, .L666+36
	ldr	r3, .L666+40
	adds	r0, r0, #84
	bl	.L25
.L661:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L666+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L666+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L667:
	.align	2
.L666:
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
	ldr	r3, .L670
	ldrb	r2, [r3, #17]
	ldr	r3, .L670+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L668
	movs	r3, #64
	ldr	r2, [r0, #12]
	bics	r2, r3
	subs	r3, r3, #29
	orrs	r3, r2
	str	r3, [r0, #12]
.L668:
	@ sp needed
	bx	lr
.L671:
	.align	2
.L670:
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
	ldr	r4, .L680
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L673
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.L673
	ldr	r1, .L680+4
	lsls	r1, r1, #24
	ldr	r0, [r4]
	ldr	r5, .L680+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L674
.L676:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L680+12
	bl	.L25
	cmp	r0, #0
	beq	.L673
	movs	r0, #1
.L675:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L674:
	ldr	r1, .L680+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L676
.L673:
	movs	r0, #3
	b	.L675
.L681:
	.align	2
.L680:
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
	ldr	r3, .L683
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L683+4
	ldr	r3, .L683+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L684:
	.align	2
.L683:
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
	bne	.L686
	ldr	r4, .L696
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L686
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #3
	beq	.L686
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	movs	r3, #132
	lsls	r3, r3, #4
	movs	r0, #1
	tst	r2, r3
	beq	.L687
.L686:
	movs	r0, #3
.L687:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L697:
	.align	2
.L696:
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
	push	{r3, r4, r5, r6, r7, lr}
	ldr	r5, .L701
	ldr	r6, [r5]
	ldr	r3, .L701+4
	ldrb	r0, [r6, #27]
	bl	.L25
	movs	r2, #16
	movs	r1, #35
	ldr	r3, [r6, #12]
	bics	r3, r2
	orrs	r3, r1
	str	r3, [r6, #12]
	ldr	r3, [r0, #12]
	bics	r3, r1
	orrs	r2, r3
	str	r2, [r0, #12]
	movs	r4, r0
	ldr	r7, .L701+8
	movs	r0, #0
	bl	.L429
	movs	r6, r0
	movs	r0, #1
	bl	.L429
	movs	r2, r6
	movs	r1, r0
	adds	r2, r2, #80
	adds	r1, r1, #80
	ldrh	r7, [r1]
	ldrh	r3, [r2]
	eors	r3, r7
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r2]
	ldrh	r7, [r1]
	eors	r3, r7
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r1]
	ldrh	r1, [r2]
	eors	r3, r1
	strh	r3, [r2]
	adds	r0, r0, #82
	adds	r6, r6, #82
	ldrh	r2, [r0]
	ldrh	r3, [r6]
	eors	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r6]
	ldrh	r2, [r0]
	eors	r3, r2
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r0]
	ldrh	r2, [r6]
	eors	r3, r2
	strh	r3, [r6]
	bl	PAU_muSortObjLayers
	str	r4, [r5]
	ldr	r3, .L701+12
	ldrb	r2, [r4, #11]
	strb	r2, [r3, #12]
	strb	r2, [r3, #13]
	ldr	r3, .L701+16
	bl	.L25
	bl	PAU_getSwitchFlag
	cmp	r0, #0
	beq	.L699
	bl	PAU_unsetSwitchFlag
.L700:
	@ sp needed
	movs	r0, #23
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L699:
	bl	PAU_setSwitchFlag
	ldr	r3, .L701+20
	movs	r2, #28
	ldrsh	r1, [r3, r2]
	movs	r2, #12
	ldrsh	r3, [r3, r2]
	ldr	r4, .L701+24
	subs	r1, r1, r3
	movs	r2, #1
	movs	r3, #20
	ldr	r0, .L701+28
	bl	.L20
	b	.L700
.L702:
	.align	2
.L701:
	.word	gActiveUnit
	.word	GetUnit
	.word	MU_GetByIndex
	.word	gActionData
	.word	Text_ResetTileAllocation
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
	beq	.L704
	movs	r3, #128
	strh	r3, [r5]
.L704:
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
	ldr	r3, .L708
	movs	r0, r5
	strh	r4, [r5]
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L709:
	.align	2
.L708:
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
	ldr	r3, .L711
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L711+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L711+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L712:
	.align	2
.L711:
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
	ldr	r3, .L728
	ldr	r0, .L728+4
	bl	.L25
	subs	r5, r0, #0
	beq	.L714
	movs	r4, #52
	ldrsb	r4, [r0, r4]
	cmp	r4, #0
	bne	.L714
	movs	r7, r0
	adds	r7, r7, #53
	ldrb	r3, [r7]
	cmp	r3, #127
	bls	.L715
	ldr	r0, .L728+8
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r7]
	movs	r4, r0
	cmp	r3, #127
	bhi	.L716
.L715:
	ldr	r0, .L728+12
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r4, r4, r0
.L716:
	ldrb	r3, [r7]
	movs	r0, #0
	cmp	r3, #127
	bhi	.L717
	adds	r0, r0, #20
.L717:
	movs	r1, #1
	ldr	r3, .L728+16
	adds	r4, r0, r4
	rsbs	r1, r1, #0
	movs	r0, #0
	adds	r5, r5, #50
	bl	.L25
	ldrb	r3, [r5]
	cmp	r3, #1
	beq	.L718
	cmp	r3, #2
	beq	.L719
.L714:
	@ sp needed
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L718:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L728+20
.L727:
	ldr	r4, .L728+24
	bl	.L20
	b	.L714
.L719:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L728+28
	b	.L727
.L729:
	.align	2
.L728:
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
	bge	.L731
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L730:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L731:
	ldr	r3, .L733
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
	b	.L730
.L734:
	.align	2
.L733:
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
	ldr	r3, .L742
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
.L736:
	ldr	r3, .L742+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L740
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L740:
	cmp	r4, #0
	beq	.L741
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L737:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L738
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L739:
	adds	r5, r5, #1
	b	.L736
.L741:
	movs	r7, #1
	b	.L737
.L738:
	movs	r2, r6
	ldr	r3, .L742+8
	bl	.L25
	b	.L739
.L743:
	.align	2
.L742:
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
	beq	.L744
	bl	PAU_forecastDrawGaugeIcons.part.0
.L744:
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
	ldr	r0, .L777
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L777+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L777+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB6911
	b	.L750	@long jump
.LCB6911:
	cmp	r0, #0
	bne	.LCB6913
	b	.L751	@long jump
.LCB6913:
	ldr	r1, .L777+12
	ldr	r0, .L777+16
	bl	.L25
	movs	r1, #12
.L775:
	movs	r3, #1
	str	r3, [sp, #4]
.L752:
	ldr	r6, .L777+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L777+24
	bl	.L429
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L777
	ldr	r3, .L777+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L754
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L754:
	movs	r3, #159
	ldr	r4, .L777+4
	lsls	r3, r3, #2
	ldr	r6, .L777+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L777+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L755
	ldr	r3, .L777+32
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
.L755:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L777+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB6994
	b	.L756	@long jump
.LCB6994:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB7001
	b	.L756	@long jump
.LCB7001:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L757:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L777+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L777+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L759
	movs	r2, #255
.L759:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L777+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L777+4
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
	ldr	r3, .L777
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L777
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L777+44
	bl	.L41
	movs	r4, #255
	cmp	r0, #181
	beq	.L761
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L761:
	ldr	r3, .L777
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L777
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L41
	movs	r6, #255
	cmp	r0, #181
	beq	.L763
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L763:
	movs	r0, r7
	ldr	r3, .L777
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L777+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L765
	movs	r2, #255
.L765:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L777+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L777+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L777
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L777+48
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
	ldr	r4, .L777+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L777+56
	adds	r1, r1, r5
	ldr	r0, .L777+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L777+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L777+68
	bl	.L20
	ldr	r3, .L777+4
	adds	r3, r3, #74
	ldr	r6, .L777+72
	ldrh	r0, [r3]
	bl	.L41
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L777+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L777
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L41
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
.L751:
	ldr	r1, .L777+80
	ldr	r0, .L777+16
	bl	.L25
	movs	r1, #11
.L776:
	str	r5, [sp, #4]
	b	.L752
.L750:
	cmp	r0, #0
	beq	.L753
	ldr	r1, .L777+84
	ldr	r0, .L777+16
	bl	.L25
	movs	r1, #11
	b	.L775
.L753:
	ldr	r1, .L777+88
	ldr	r0, .L777+16
	bl	.L25
	movs	r1, #10
	b	.L776
.L756:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L777
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L757
.L778:
	.align	2
.L777:
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
	ldr	r7, .L800
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L800+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB7281
	b	.L780	@long jump
.LCB7281:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB7285
	b	.L781	@long jump
.LCB7285:
	ldr	r1, .L800+8
	ldr	r0, .L800+12
	ldr	r3, .L800+16
	bl	.L25
	movs	r1, #12
.L799:
	movs	r3, #1
.L797:
	ldr	r6, .L800+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L800+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L800
	ldr	r3, .L800+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L784
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L784:
	movs	r3, #223
	ldr	r5, .L800+4
	ldr	r6, .L800+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L800+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L785
	ldr	r3, .L800+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L800+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L785:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L800+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L786
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L786
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
.L786:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L800+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L800+44
	cmp	r2, #99
	bls	.L787
	movs	r2, #255
.L787:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L800+4
	ldr	r6, .L800+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L800+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L800+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L800+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L800+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L800+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L800+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L800+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L800
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L789
	movs	r2, #255
.L789:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L800+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L800+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L800+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L800+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L800+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L800+68
	bl	.L41
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L800+72
	adds	r1, r1, r5
	ldr	r0, .L800+76
	bl	.L41
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L800+80
	bl	.L41
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L800+84
	bl	.L41
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L800+88
	bl	.L41
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L800+92
	bl	.L41
	ldr	r3, .L800+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L800+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L800+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L800+96
	bl	.L25
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L41
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L781:
	ldr	r1, .L800+104
	ldr	r0, .L800+12
	ldr	r3, .L800+16
	bl	.L25
	movs	r1, #11
.L798:
	ldr	r3, [sp]
	b	.L797
.L780:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L783
	ldr	r1, .L800+108
	ldr	r0, .L800+12
	ldr	r3, .L800+16
	bl	.L25
	movs	r1, #11
	b	.L799
.L783:
	ldr	r1, .L800+112
	ldr	r0, .L800+12
	ldr	r3, .L800+16
	bl	.L25
	movs	r1, #10
	b	.L798
.L801:
	.align	2
.L800:
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
	beq	.L803
	cmp	r3, #2
	beq	.L804
.L802:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L803:
	ldr	r3, .L806
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L802
.L804:
	ldr	r3, .L806
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L802
.L807:
	.align	2
.L806:
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
	ldr	r3, .L811
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
	blt	.L809
	adds	r3, r3, #20
.L809:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L811+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L812:
	.align	2
.L811:
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
	beq	.L814
	adds	r6, r6, #4
.L814:
	ldr	r0, .L823
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L823+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L823+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L817
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L823+12
	ldr	r5, .L823+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L823+20
	ldr	r0, .L823+24
	bl	.L16
.L818:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L823+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L817:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L823+12
	ldr	r7, .L823+16
	bl	.L429
	ldr	r1, .L823+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L823+24
	adds	r1, r5, r1
	bl	.L429
	b	.L818
.L824:
	.align	2
.L823:
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
	ldr	r7, .L841
	ldr	r6, .L841+4
	cmp	r3, #127
	bhi	.L826
.L828:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L827:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L829
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L829:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L832
	beq	.L833
	movs	r2, #2
.L832:
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
	ldr	r3, .L841+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L833:
	cmp	r7, #0
	beq	.L825
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
	ldr	r3, .L841+8
	adds	r0, r0, #19
	bl	.L25
.L825:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L826:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L827
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L828
	movs	r5, r0
	b	.L827
.L842:
	.align	2
.L841:
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
	bls	.L844
	ldr	r0, .L851
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L845
.L844:
	ldr	r0, .L851+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L845:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L851+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L851+12
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
	ble	.L846
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L851+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L851+20
	ldr	r7, .L851+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L429
.L846:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L843
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L851+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L851+20
	ldr	r4, .L851+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L843:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L852:
	.align	2
.L851:
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
	beq	.L854
	ldr	r3, .L864
	bl	.L25
	cmp	r0, #0
	beq	.L855
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L855
	movs	r0, r4
	ldr	r3, .L864+4
.L863:
	bl	.L25
.L853:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L855:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L864+8
	bl	.L25
.L854:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L853
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L864+12
	b	.L863
.L865:
	.align	2
.L864:
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
	ldr	r3, .L871
.L867:
	movs	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bne	.L869
.L868:
	@ sp needed
	bx	lr
.L869:
	adds	r3, r3, #2
	cmp	r0, r2
	bne	.L867
	movs	r0, #1
	b	.L868
.L872:
	.align	2
.L871:
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
	ldr	r3, .L875
	movs	r6, r0
	movs	r4, #1
	bl	.L25
	lsls	r4, r4, r0
	movs	r0, r6
	lsls	r5, r4, #24
	lsrs	r5, r5, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L874
	bl	PAU_getBattleGauge
	ldr	r2, .L875+4
	ldrb	r2, [r2]
	adds	r3, r5, r0
	cmp	r3, r2
	blt	.L874
	adds	r5, r5, #1
	lsls	r5, r5, #24
	lsrs	r5, r5, #24
.L874:
	movs	r0, r5
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L876:
	.align	2
.L875:
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
	bne	.L878
.L887:
	movs	r0, #0
.L879:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L878:
	ldr	r7, .L903
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L880:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L887
	cmp	r6, #0
	beq	.L881
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L881
	bl	PAU_getBattleGauge
	ldr	r3, .L903+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L881
	ldr	r2, .L903+8
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L901:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L902:
	bl	PAU_setBattleGauge
.L882:
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
	ldr	r3, .L903+12
	bl	.L25
	cmp	r0, #0
	bne	.L888
	adds	r6, r6, #1
	b	.L880
.L881:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L883
	bl	PAU_getBattleGauge
	ldr	r3, .L903+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L883
	ldr	r2, .L903+16
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L901
.L883:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L884
.L885:
	bl	PAU_getBattleGauge
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L902
.L884:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L885
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L885
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L882
	b	.L885
.L888:
	movs	r0, #1
	b	.L879
.L904:
	.align	2
.L903:
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
.L907:
	lsls	r0, r4, #24
	ldr	r3, .L915
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L906
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L906
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L915+4
	bl	.L25
.L906:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L907
	ldr	r3, .L915+8
	@ sp needed
	bl	.L25
	ldr	r3, .L915+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L916:
	.align	2
.L915:
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
	bhi	.L918
	ldr	r3, .L920
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L920+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L919
	adds	r2, r4, #0
.L919:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L918:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L921:
	.align	2
.L920:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC470:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC471:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_mapGaugeProcInstr
.LC472:
	.ascii	"PAU_MapGaugeProc\000"
	.global	PAU_swapMapSpriteProcInstr
.LC473:
	.ascii	"PAU_SwapMapSpriteProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC474:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC475:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC476:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC477:
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
	.word	.LC477
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
	.word	.LC476
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
	.word	.LC471
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
	.word	.LC474
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
	.word	.LC470
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
	.word	.LC472
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
	.word	.LC473
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
	.word	.LC475
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
.L52:
	bx	r2
.L25:
	bx	r3
.L20:
	bx	r4
.L16:
	bx	r5
.L41:
	bx	r6
.L429:
	bx	r7

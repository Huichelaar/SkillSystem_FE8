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
	str	r1, [sp, #16]
	adds	r2, r2, #41
	ldrb	r3, [r2]
	adds	r3, r3, #1
	strb	r3, [r2]
	ldr	r3, .L313
	ldr	r6, [r3]
	lsls	r3, r6, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #20]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L271
	ldr	r2, .L313+4
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #48]
	str	r2, [sp, #12]
	ldr	r2, [r0, #64]
	ldr	r5, [r0, #44]
	ldr	r7, [r0, #60]
	str	r2, [sp, #8]
	lsls	r3, r3, #30
	bmi	.L272
.L308:
	ldr	r3, [sp, #24]
	ldrb	r0, [r3, #27]
	ldr	r3, .L313+8
	bl	.L25
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	str	r3, [sp, #12]
	movs	r3, r7
	str	r0, [sp, #24]
	movs	r7, r5
	str	r2, [sp, #8]
	movs	r5, r3
	b	.L272
.L271:
	ldr	r2, .L313+12
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #56]
	str	r2, [sp, #12]
	ldr	r2, [r0, #72]
	ldr	r5, [r0, #52]
	ldr	r7, [r0, #68]
	str	r2, [sp, #8]
	lsls	r3, r3, #28
	bpl	.L308
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
	ldrh	r3, [r7, #10]
	ldrh	r2, [r5, #10]
	strh	r2, [r7, #10]
	strh	r3, [r5, #10]
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	ldrh	r2, [r2, #10]
	ldr	r1, [sp, #8]
	ldrh	r3, [r3, #10]
	strh	r2, [r1, #10]
	ldr	r2, [sp, #12]
	strh	r3, [r2, #10]
	ldr	r3, .L313+16
	bl	.L25
.L273:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2502
	b	.L274	@long jump
.LCB2502:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r6, .L313+20
	bl	.L41
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #28]
	ldr	r3, [sp, #16]
	cmp	r3, #0
	bne	.LCB2517
	b	.L275	@long jump
.LCB2517:
	movs	r3, r4
	adds	r3, r3, #90
	ldrb	r3, [r3]
	ldr	r2, [sp, #28]
	adds	r3, r2, r3
	movs	r2, r4
	adds	r2, r2, #84
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	str	r2, [sp, #32]
	movs	r2, r4
	adds	r2, r2, #80
	ldrh	r2, [r2]
	ldr	r1, [sp, #20]
	lsls	r3, r3, #24
	subs	r6, r2, r1
	lsrs	r3, r3, #24
	lsls	r2, r6, #16
	lsls	r6, r3, #1
	ldr	r3, .L313+24
	lsrs	r2, r2, #16
	str	r2, [sp, #20]
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	bl	.L25
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	movs	r3, r4
	strh	r0, [r7, #2]
	adds	r3, r3, #82
	ldrh	r3, [r3]
	str	r3, [sp, #36]
	ldr	r3, .L313+32
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	rsbs	r0, r0, #0
	bl	.L25
	ldr	r3, [sp, #36]
	adds	r0, r3, r0
	movs	r3, r4
	strh	r0, [r7, #4]
	adds	r3, r3, #91
.L310:
	ldrb	r6, [r3]
	ldr	r3, [sp, #28]
	adds	r6, r3, r6
	lsls	r6, r6, #24
	ldr	r3, .L313+24
	lsrs	r6, r6, #24
	lsls	r6, r6, #1
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	bl	.L25
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L313+32
	strh	r0, [r5, #2]
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	rsbs	r0, r0, #0
	bl	.L25
	ldr	r3, [sp, #36]
	adds	r0, r3, r0
	movs	r3, r4
	strh	r0, [r5, #4]
	adds	r3, r3, #41
	ldrb	r2, [r3]
	adds	r3, r3, #1
	ldrb	r3, [r3]
	cmp	r2, r3
	bcs	.LCB2602
	b	.L270	@long jump
.LCB2602:
.L277:
	movs	r6, r4
	adds	r6, r6, #43
	ldrb	r3, [r6]
	lsls	r3, r3, #25
	bpl	.LCB2612
	b	.L270	@long jump
.LCB2612:
	movs	r2, #128
	ldr	r3, [sp, #16]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r5, [r3, r2]
	ldr	r1, [sp, #12]
	ldr	r2, .L313+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	ldr	r0, [sp, #24]
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #16]
	ldr	r2, .L313+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L313+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #16]
	ldr	r1, [r0, #12]
	ldr	r2, .L313+48
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	ldrh	r3, [r7, #16]
	strh	r3, [r5, #16]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldrh	r3, [r3, #16]
	strh	r3, [r2, #16]
	movs	r2, #8
	ldrh	r3, [r7]
	orrs	r3, r2
	strh	r3, [r7]
	ldr	r3, [sp, #8]
	ldrh	r3, [r3]
	ldr	r1, [sp, #8]
	orrs	r3, r2
	strh	r3, [r1]
	ldr	r1, [sp, #16]
	ldrb	r3, [r6]
	cmp	r1, #0
	bne	.LCB2658
	b	.L281	@long jump
.LCB2658:
	tst	r3, r2
	bne	.LCB2663
	b	.L282	@long jump
.LCB2663:
.L311:
	movs	r2, #16
	bics	r3, r2
	strb	r3, [r6]
	b	.L282
.L275:
	movs	r3, r4
	adds	r3, r3, #88
	ldrb	r3, [r3]
	ldr	r2, [sp, #28]
	adds	r3, r2, r3
	movs	r2, r4
	adds	r2, r2, #84
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	str	r2, [sp, #32]
	movs	r2, r4
	adds	r2, r2, #76
	ldrh	r2, [r2]
	ldr	r1, [sp, #20]
	lsls	r3, r3, #24
	subs	r6, r2, r1
	lsrs	r3, r3, #24
	lsls	r2, r6, #16
	lsls	r6, r3, #1
	ldr	r3, .L313+24
	lsrs	r2, r2, #16
	str	r2, [sp, #20]
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	bl	.L25
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	movs	r3, r4
	strh	r0, [r7, #2]
	adds	r3, r3, #78
	ldrh	r3, [r3]
	str	r3, [sp, #36]
	ldr	r3, .L313+32
	ldrsh	r0, [r6, r3]
	ldr	r1, [sp, #32]
	ldr	r3, .L313+28
	rsbs	r0, r0, #0
	bl	.L25
	ldr	r3, [sp, #36]
	adds	r0, r3, r0
	movs	r3, r4
	strh	r0, [r7, #4]
	adds	r3, r3, #89
	b	.L310
.L274:
	cmp	r3, r2
	bne	.L277
	ldr	r3, .L313+52
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L313+56
	asrs	r3, r3, #1
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	ldr	r0, [sp, #20]
	ldr	r1, [sp, #20]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	adds	r1, r1, r3
	subs	r6, r3, r0
	asrs	r2, r2, #1
	ldr	r3, [sp, #16]
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	lsls	r6, r6, #16
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	lsrs	r6, r6, #16
	cmp	r3, #0
	beq	.L278
	movs	r3, r4
	movs	r0, r4
	adds	r3, r3, #80
	ldrh	r3, [r3]
	adds	r6, r3, r6
	strh	r6, [r7, #2]
	adds	r0, r0, #82
	ldrh	r0, [r0]
	subs	r3, r3, r1
	adds	r6, r0, r2
	strh	r6, [r7, #4]
	strh	r3, [r5, #2]
	subs	r2, r0, r2
.L309:
	strh	r2, [r5, #4]
	movs	r2, #2
	ldrsh	r3, [r7, r2]
	ldr	r2, [sp, #8]
	strh	r3, [r2, #2]
	movs	r2, #4
	ldrsh	r3, [r7, r2]
	ldr	r2, [sp, #8]
	strh	r3, [r2, #4]
	movs	r2, #2
	ldrsh	r3, [r5, r2]
	ldr	r2, [sp, #12]
	strh	r3, [r2, #2]
	movs	r2, #4
	ldrsh	r3, [r5, r2]
	ldr	r2, [sp, #12]
	strh	r3, [r2, #4]
	b	.L277
.L278:
	movs	r3, r4
	adds	r3, r3, #76
	ldrh	r0, [r3]
	subs	r1, r0, r1
	strh	r1, [r7, #2]
	adds	r3, r3, #2
	ldrh	r3, [r3]
	adds	r6, r0, r6
	adds	r1, r3, r2
	strh	r1, [r7, #4]
	subs	r2, r3, r2
	strh	r6, [r5, #2]
	b	.L309
.L314:
	.align	2
.L313:
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
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
.L281:
	lsls	r2, r3, #30
	bpl	.LCB2826
	b	.L311	@long jump
.LCB2826:
.L282:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L283
	ldr	r2, [sp, #8]
	ldrb	r6, [r2, #18]
	ldr	r2, .L315
	ldrh	r2, [r2]
	ldrb	r1, [r7, #18]
	cmp	r2, #0
	bne	.L284
	ldr	r2, [sp, #16]
	cmp	r2, #0
	beq	.L285
	lsls	r3, r3, #28
	bpl	.L286
.L284:
	movs	r0, r5
	ldr	r3, .L315+4
	bl	.L25
	ldr	r3, .L315+4
	movs	r1, r6
	ldr	r0, [sp, #12]
	bl	.L25
	ldrh	r3, [r7, #14]
	strh	r3, [r5, #14]
	ldr	r3, [sp, #8]
	ldr	r2, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L315
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L288
	ldr	r3, .L315+8
	movs	r0, r5
	bl	.L25
	ldr	r3, .L315+12
	bl	.L25
	ldr	r3, .L315+16
	bl	.L25
	cmp	r0, #0
	beq	.L288
	movs	r1, #1
	movs	r0, r5
	ldr	r3, .L315+20
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L315+24
	movs	r1, r4
	ldr	r3, .L315+28
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L315+32
	bl	.L25
.L283:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, [sp, #16]
	adds	r4, r4, #43
	ldrb	r3, [r4]
	cmp	r2, #0
	beq	.L289
	movs	r2, #4
	bics	r3, r2
	movs	r2, r3
	movs	r3, #8
.L312:
	eors	r3, r2
	strb	r3, [r4]
.L270:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L285:
	lsls	r3, r3, #30
	bmi	.L284
.L286:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L287
	movs	r1, r3
.L287:
	subs	r3, r6, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L284
	movs	r6, r3
	b	.L284
.L288:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L315+36
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L315+40
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L315+44
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L283
.L289:
	movs	r2, #1
	bics	r3, r2
	movs	r2, r3
	movs	r3, #2
	b	.L312
.L316:
	.align	2
.L315:
	.word	gSomethingRelatedToAnimAndDistance
	.word	SwitchAISFrameDataFromBARoundType
	.word	GetOpponentFrontAIS
	.word	GetAISCurrentRoundType
	.word	IsRoundTypeOffensive
	.word	MoveBattleCameraOnto
	.word	.LANCHOR0
	.word	ProcStart
	.word	ProcGoto
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
	beq	.L318
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L319
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L318:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L317
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L322
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L317:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L319:
	ldr	r2, .L330
	ldrh	r5, [r2]
	ldr	r2, .L330+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L320
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L318
.L320:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L318
.L322:
	ldr	r3, .L330
	ldr	r1, .L330+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L323
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L317
.L323:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L317
.L331:
	.align	2
.L330:
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
	bne	.L333
.L339:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L334
.L335:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L346
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L333:
	movs	r2, r0
	ldr	r1, .L346+4
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
	ldr	r7, .L346+8
	lsrs	r3, r3, #16
.L336:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L339
	cmp	r2, #0
	beq	.L343
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L337:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L336
.L343:
	movs	r5, #1
	b	.L337
.L334:
	ldr	r1, .L346+4
	ldrb	r5, [r1]
	ldr	r1, .L346+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L346+16
	lsrs	r3, r3, #16
.L340:
	cmp	r5, r1
	ble	.L335
	cmp	r2, #0
	beq	.L344
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L341:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L340
.L344:
	movs	r4, #1
	b	.L341
.L347:
	.align	2
.L346:
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
	bls	.L349
	movs	r2, #240
	ldr	r3, .L357
	strh	r2, [r3, #44]
	ldr	r2, .L357+4
	ldr	r1, .L357+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L357+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L350:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L353
	ldr	r3, .L357+16
	ldr	r0, .L357+20
	bl	.L25
	ldr	r1, .L357+24
	movs	r2, #32
	ldr	r3, .L357+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L357+32
	bl	PAU_bAnimGaugeScrEntries
.L353:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L349:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L351
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L351:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L352
	movs	r0, r4
	ldr	r3, .L357+36
	bl	.L25
	b	.L350
.L352:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L357+40
	bl	.L25
	b	.L350
.L358:
	.align	2
.L357:
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
	beq	.L360
	movs	r2, #0
	movs	r1, #56
.L360:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L369
	movs	r0, #1
	bl	.L41
	ldr	r3, .L369+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L359
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L362
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L362:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L363
	ldr	r3, .L369+8
.L368:
	bl	.L25
.L359:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L363:
	ldr	r3, .L369+12
	b	.L368
.L370:
	.align	2
.L369:
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
	ldr	r3, .L398
	ldr	r2, .L398+4
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
	ldr	r5, .L398+8
	ldr	r2, .L398+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L372
	ldr	r5, .L398+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L373
	cmp	r4, #0
	beq	.L395
.L377:
	cmp	r3, r2
	beq	.L375
.L376:
	ldr	r2, .L398+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L387
	adds	r3, r3, #1
	b	.L397
.L373:
	cmp	r4, #0
	beq	.L377
.L395:
	cmp	r3, r1
	bne	.L376
.L375:
	movs	r3, #0
.L397:
	strb	r3, [r5]
.L387:
	cmp	r6, #0
	bne	.L385
	b	.L379
.L372:
	cmp	r6, #0
	beq	.L379
	ldr	r5, .L398+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L380
	cmp	r4, #0
	beq	.L391
.L393:
	cmp	r3, r2
	beq	.L382
.L385:
	movs	r2, r0
	ldr	r1, .L398+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L383
.L379:
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
	ldr	r3, .L398+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L380:
	cmp	r4, #0
	beq	.L393
.L391:
	cmp	r3, r1
	bne	.L385
.L382:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L379
.L383:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L379
.L399:
	.align	2
.L398:
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
	ldr	r3, .L434
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L400
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L400
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L434+4
	cmp	r4, #3
	bne	.L404
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L400
	movs	r3, #17
	ldr	r2, .L434+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L400
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L434+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	subs	r0, r0, r3
	ldr	r3, .L434+16
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
	ldr	r7, .L434+20
	movs	r0, r5
	bl	.L436
	ldr	r3, .L434+24
	bl	.L25
	ldr	r3, .L434+28
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
	bl	.L436
	lsls	r3, r0, #3
	ldr	r0, .L434+32
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L433:
	lsls	r1, r2, #23
	bpl	.L407
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L407:
	lsls	r3, r2, #7
	bpl	.L406
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L406:
	str	r4, [r5, #60]
.L400:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L404:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L400
	movs	r0, #17
	ldr	r3, .L434+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L400
	ldr	r3, .L434+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L434+12
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
	ldr	r6, .L434+20
	movs	r0, r5
	bl	.L41
	ldr	r3, .L434+24
	bl	.L25
	ldr	r3, .L434+28
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
	ldr	r0, .L434+32
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L433
.L435:
	.align	2
.L434:
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
	bhi	.L438
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L439
	bl	.L25
.L438:
	@ sp needed
	movs	r5, #0
	ldr	r3, .L439+4
	ldrh	r7, [r4, #44]
	ldrsb	r5, [r3, r5]
	movs	r1, r7
	movs	r0, r5
	ldr	r3, .L439+8
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
	ldr	r3, .L439+8
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
.L440:
	.align	2
.L439:
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
	ldr	r4, .L445
.L443:
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L442
	movs	r1, r7
	movs	r0, r4
	bl	.L41
.L442:
	ldr	r3, .L445+4
	adds	r4, r4, #108
	cmp	r4, r3
	bne	.L443
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L446:
	.align	2
.L445:
	.word	gProcStatePool
	.word	gProcStatePool+6912
	.size	PAU_ForEachProcExt, .-PAU_ForEachProcExt
	.align	1
	.global	PAU_mapStatusHealBothSMS
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_mapStatusHealBothSMS, %function
PAU_mapStatusHealBothSMS:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, r7, lr}
	ldr	r3, .L453
	ldrb	r3, [r3]
	sub	sp, sp, #20
	str	r0, [sp, #12]
	ldr	r7, .L453+4
	cmp	r3, #0
	bne	.L448
.L451:
	movs	r4, #0
.L449:
	movs	r2, #17
	ldr	r3, [r7]
	ldr	r1, .L453+8
	ldrsb	r2, [r3, r2]
	ldrh	r1, [r1, #14]
	lsls	r2, r2, #4
	subs	r2, r2, r1
	movs	r1, #16
	ldr	r0, .L453+8
	ldrsb	r1, [r3, r1]
	ldrh	r0, [r0, #12]
	str	r3, [sp]
	movs	r3, #160
	lsls	r1, r1, #4
	subs	r1, r1, r0
	adds	r2, r2, r4
	adds	r1, r1, r4
	lsls	r3, r3, #6
	movs	r0, #4
	ldr	r4, .L453+12
	bl	.L20
	ldr	r2, [sp, #12]
	adds	r2, r2, #76
	ldrh	r3, [r2]
	subs	r3, r3, #1
	lsls	r3, r3, #16
	asrs	r3, r3, #16
	strh	r3, [r2]
	bpl	.L447
	ldr	r0, [sp, #12]
	ldr	r3, .L453+16
	bl	.L25
.L447:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L448:
	ldr	r0, [r7]
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L450
	movs	r2, #0
	movs	r5, #16
	movs	r6, #17
	ldr	r3, .L453+20
	ldrsb	r2, [r3, r2]
	ldr	r3, [r7]
	ldr	r1, .L453+8
	ldrsb	r5, [r3, r5]
	ldrh	r1, [r1, #12]
	lsls	r5, r5, #4
	subs	r5, r5, r1
	ldr	r1, .L453+8
	ldrsb	r6, [r3, r6]
	ldrh	r1, [r1, #14]
	lsls	r6, r6, #4
	subs	r6, r6, r1
	ldrb	r0, [r3, #27]
	ldr	r3, .L453+24
	subs	r5, r5, r2
	movs	r4, r2
	subs	r6, r6, r2
	bl	.L25
	movs	r1, r5
	movs	r3, r0
	movs	r2, r6
	movs	r0, #4
	ldr	r5, .L453+28
	bl	.L16
	b	.L449
.L450:
	cmp	r0, #3
	bne	.L451
	movs	r4, #0
	ldr	r3, .L453+20
	ldrsb	r4, [r3, r4]
	rsbs	r4, r4, #0
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	b	.L449
.L454:
	.align	2
.L453:
	.word	PAU_showBothMapSprites
	.word	gActiveUnit
	.word	gGameState
	.word	SMS_DisplayWindowBlended
	.word	BreakProcLoop
	.word	PAU_mapOffs
	.word	GetUnit
	.word	PutUnitSprite
	.size	PAU_mapStatusHealBothSMS, .-PAU_mapStatusHealBothSMS
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
	ldr	r2, .L470
	ldr	r3, .L470+4
	add	r1, sp, #16
	add	r0, sp, #12
	str	r5, [sp, #12]
	movs	r4, r5
	bl	.L25
.L457:
	movs	r0, r5
	ldr	r3, .L470+8
	bl	.L25
	cmp	r0, #0
	beq	.L456
	movs	r1, #8
	add	r2, sp, #8
	lsls	r3, r4, #2
	adds	r2, r2, r1
	str	r0, [r2, r3]
	adds	r4, r4, #1
.L456:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L457
	movs	r0, #0
	subs	r2, r4, #1
	str	r2, [sp, #4]
	add	r3, sp, #16
.L458:
	ldr	r2, [sp, #4]
	cmp	r2, r0
	bgt	.L463
	movs	r3, #0
	movs	r2, #10
.L464:
	cmp	r4, r3
	bne	.L465
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L463:
	movs	r5, r3
	adds	r0, r0, #1
	str	r0, [sp]
.L459:
	ldr	r2, [sp]
	cmp	r4, r2
	bne	.L462
	adds	r3, r3, #4
	b	.L458
.L462:
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
	bgt	.L460
	blt	.L461
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
	bgt	.L460
	blt	.L461
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
	bgt	.L460
	blt	.L461
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
	ble	.L461
.L460:
	str	r1, [r3]
	str	r2, [r5, #4]
.L461:
	ldr	r2, [sp]
	adds	r2, r2, #1
	str	r2, [sp]
	adds	r5, r5, #4
	b	.L459
.L465:
	movs	r5, #8
	add	r0, sp, #8
	lsls	r1, r3, #2
	adds	r0, r0, r5
	ldr	r1, [r0, r1]
	ldr	r1, [r1, #48]
	subs	r0, r2, r3
	strh	r0, [r1, #30]
	adds	r3, r3, #1
	b	.L464
.L471:
	.align	2
.L470:
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
	ldr	r3, .L479
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L479+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L479+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L472
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L472
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L472
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L479+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	ldr	r1, [sp, #12]
	movs	r0, r6
	rsbs	r3, r3, #0
	ldr	r6, .L479+16
	bl	.L41
	movs	r3, r0
	movs	r2, #0
	movs	r1, r5
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	ldr	r3, .L479+20
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
.L472:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L480:
	.align	2
.L479:
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
	ldr	r3, .L512
	sub	sp, sp, #36
	str	r3, [sp, #24]
	ldr	r3, .L512+4
	adds	r3, r3, #94
	ldrb	r3, [r3]
	cmp	r3, #1
	beq	.L482
	movs	r4, r3
	cmp	r3, #2
	bne	.L484
	ldr	r2, .L512+8
	ldr	r2, [r2]
	ldr	r1, [r2]
	movs	r2, #128
	movs	r5, r1
	lsls	r2, r2, #3
	ands	r5, r2
	adds	r4, r4, #2
	tst	r1, r2
	bne	.L484
	ldr	r2, .L512+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L484
	movs	r6, #20
.L486:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L512+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L485
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L485
	adds	r4, r4, #1
.L485:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L486
.L484:
	movs	r3, #0
.L489:
	cmp	r3, r4
	bne	.L490
	movs	r5, #0
	add	r3, sp, #28
.L491:
	subs	r2, r4, #1
	cmp	r2, r5
	bgt	.L496
	movs	r3, #0
	movs	r1, #20
.L497:
	cmp	r3, r4
	beq	.LCB4361
	b	.L498	@long jump
.LCB4361:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L482:
	ldr	r2, .L512+12
	ldrb	r2, [r2]
	movs	r4, r3
	cmp	r2, #0
	beq	.L484
	movs	r5, #0
	movs	r6, #20
.L488:
	movs	r3, r6
	muls	r3, r5
	ldr	r2, .L512+4
	ldr	r0, [r2, r3]
	cmp	r0, #0
	beq	.L487
	bl	PAU_isPairedUp
	subs	r0, r0, #1
	cmp	r0, #1
	bhi	.L487
	adds	r4, r4, #1
.L487:
	adds	r5, r5, #1
	cmp	r5, #4
	bne	.L488
	b	.L484
.L490:
	add	r2, sp, #28
	strb	r3, [r2, r3]
	adds	r3, r3, #1
	b	.L489
.L496:
	movs	r2, r3
	adds	r5, r5, #1
	str	r5, [sp]
.L492:
	ldr	r1, [sp]
	cmp	r1, r4
	bne	.L495
	adds	r3, r3, #1
	b	.L491
.L495:
	movs	r0, #20
	ldrb	r1, [r3]
	muls	r0, r1
	str	r1, [sp, #4]
	ldr	r1, .L512+4
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
	ldr	r6, .L512+4
	ldr	r6, [r1, r6]
	ldrsb	r7, [r6, r7]
	cmp	ip, r7
	bgt	.L493
	blt	.L494
	ldr	r7, .L512+4
	adds	r0, r7, r0
	ldr	r0, [r0, #8]
	movs	r7, r0
	str	r0, [sp, #16]
	adds	r7, r7, #82
	movs	r0, #0
	ldrsh	r7, [r7, r0]
	ldr	r0, .L512+4
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
	bgt	.L493
	blt	.L494
	movs	r7, #16
	ldr	r0, [sp, #8]
	ldrb	r6, [r6, #16]
	ldrsb	r7, [r0, r7]
	lsls	r6, r6, #24
	asrs	r6, r6, #24
	cmp	r7, r6
	bgt	.L493
	blt	.L494
	ldr	r0, [sp, #16]
	ldr	r1, [sp, #20]
	adds	r0, r0, #80
	adds	r1, r1, #80
	movs	r6, #0
	ldrsh	r0, [r0, r6]
	movs	r6, #0
	ldrsh	r1, [r1, r6]
	cmp	r0, r1
	ble	.L494
.L493:
	ldr	r1, [sp, #12]
	strb	r1, [r3]
	ldr	r1, [sp, #4]
	strb	r1, [r2, #1]
.L494:
	ldr	r1, [sp]
	adds	r1, r1, #1
	str	r1, [sp]
	adds	r2, r2, #1
	b	.L492
.L498:
	add	r2, sp, #28
	ldrb	r2, [r2, r3]
	muls	r2, r1
	ldr	r0, .L512+4
	adds	r2, r0, r2
	ldr	r2, [r2, #8]
	add	r0, sp, #24
	ldrb	r0, [r3, r0]
	ldr	r2, [r2, #48]
	adds	r3, r3, #1
	strh	r0, [r2, #30]
	b	.L497
.L513:
	.align	2
.L512:
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
	ldr	r1, .L531
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
	bne	.L515
	movs	r1, #0
	ldr	r3, .L531+4
	ldrsb	r1, [r3, r1]
	lsls	r0, r5, #3
	ldr	r3, .L531+8
	lsls	r1, r1, #1
	bl	.L25
	subs	r3, r7, r0
	cmp	r7, #0
	bge	.L517
	adds	r3, r0, r7
.L517:
	ldr	r2, [sp, #4]
	lsls	r1, r3, #4
	adds	r2, r2, #82
	strh	r1, [r2]
	ldr	r2, [sp, #8]
	rsbs	r3, r3, #0
	lsls	r3, r3, #4
	adds	r2, r2, #82
.L529:
	strh	r3, [r2]
.L518:
	ldrh	r3, [r4, #44]
	subs	r5, r5, #1
	lsrs	r3, r3, #1
	cmp	r5, r3
	bne	.L522
	bl	PAU_battleMuSortObjLayers
.L522:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcc	.L514
	movs	r1, #20
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]
	muls	r3, r1
	ldr	r0, .L531
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
	ldr	r0, .L531
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
	bmi	.L525
	ldrb	r1, [r5]
	lsls	r3, r2, #30
	bmi	.L526
	ldr	r3, .L531
	adds	r3, r3, #88
.L530:
	mvns	r2, r2
	strb	r1, [r3]
	lsls	r3, r2, #30
	bne	.L525
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L531+12
	bl	.L25
.L525:
	movs	r0, r4
	ldr	r3, .L531+16
	bl	.L25
.L514:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L515:
	movs	r3, r0
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r7
	bne	.L519
	movs	r1, #0
	ldr	r3, .L531+4
	ldrsb	r1, [r3, r1]
	lsls	r0, r5, #3
	ldr	r3, .L531+8
	lsls	r1, r1, #1
	bl	.L25
	subs	r3, r6, r0
	cmp	r6, #0
	bge	.L521
	adds	r3, r0, r6
.L521:
	ldr	r2, [sp, #4]
	lsls	r1, r3, #4
	adds	r2, r2, #80
	strh	r1, [r2]
	ldr	r2, [sp, #8]
	rsbs	r3, r3, #0
	lsls	r3, r3, #4
	adds	r2, r2, #80
	b	.L529
.L519:
	movs	r3, r0
	movs	r6, #255
	adds	r3, r3, #48
	ldrb	r3, [r3]
	lsls	r2, r5, #4
	ands	r2, r6
	adds	r3, r3, r2
	ldr	r1, .L531+20
	ands	r3, r6
	lsls	r3, r3, #1
	mov	ip, r1
	ldrsh	r7, [r3, r1]
	movs	r1, r0
	adds	r1, r1, #49
	ldrb	r1, [r1]
	adds	r2, r1, r2
	ands	r2, r6
	ldr	r6, .L531+24
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
	b	.L518
.L526:
	ldr	r3, .L531
	adds	r3, r3, #89
	b	.L530
.L532:
	.align	2
.L531:
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
	bmi	.L534
	subs	r5, r5, #8
.L534:
	cmp	r4, #1
	bne	.L535
	movs	r5, #2
.L535:
	ldr	r3, [sp]
	movs	r0, r7
	adds	r1, r5, r3
	ldr	r2, [sp, #4]
	ldr	r3, .L539
	bl	.L25
	cmp	r4, #11
	bls	.L533
	ldr	r3, [sp]
	asrs	r1, r5, #1
	movs	r0, r7
	adds	r1, r1, r3
	ldr	r2, [sp, #4]
	ldr	r3, .L539
	bl	.L25
	movs	r0, r6
	ldr	r3, .L539+4
	bl	.L25
.L533:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L540:
	.align	2
.L539:
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
	ldr	r3, .L590
	ldrb	r3, [r3]
	sub	sp, sp, #28
	str	r0, [sp, #4]
	str	r1, [sp, #20]
	cmp	r3, #0
	bne	.L542
.L545:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	bne	.LCB4885
	b	.L588	@long jump
.LCB4885:
	ldr	r3, .L590+4
	bl	.L25
	movs	r3, #1
.L589:
	str	r3, [sp, #4]
	b	.L568
.L542:
	ldr	r3, .L590+8
	ldr	r3, [r3]
	ldr	r2, [r3]
	movs	r3, #128
	movs	r7, r2
	lsls	r3, r3, #3
	ands	r7, r3
	tst	r2, r3
	bne	.L545
	ldr	r5, .L590+12
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
	bne	.LCB4926
	b	.L546	@long jump
.LCB4926:
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
.L549:
	ldr	r4, [r5]
	cmp	r4, r1
	beq	.L547
	ldr	r4, [r5, #4]
	ldr	r6, [r0, #4]
	cmp	r4, r6
	beq	.L548
.L547:
	adds	r7, r7, #1
	adds	r5, r5, #20
	cmp	r7, #4
	bne	.L549
.L548:
	movs	r0, #20
	ldr	r4, [sp, #12]
	muls	r4, r0
	movs	r0, r4
	ldr	r4, .L590+12
	movs	r6, #16
	ldr	r0, [r0, r4]
	movs	r4, #16
	ldrsb	r6, [r0, r6]
	ldrsb	r4, [r1, r4]
	cmp	r6, r4
	bgt	.LCB4968
	b	.L550	@long jump
.LCB4968:
	movs	r5, #0
	ldr	r4, .L590+16
	ldrsb	r5, [r4, r5]
.L551:
	ldrb	r0, [r0, #17]
	ldrb	r1, [r1, #17]
	lsls	r0, r0, #24
	lsls	r1, r1, #24
	asrs	r0, r0, #24
	asrs	r1, r1, #24
	cmp	r0, r1
	bgt	.LCB4981
	b	.L552	@long jump
.LCB4981:
	movs	r6, #0
	ldr	r1, .L590+16
	ldrsb	r6, [r1, r6]
.L553:
	ldr	r1, .L590+12
	ldr	r0, [sp, #4]
	ldr	r1, [r1, #80]
	cmp	r0, #0
	bne	.L554
	ldrb	r0, [r1, #2]
	lsrs	r0, r0, #3
	lsls	r0, r0, #27
	bpl	.L554
	movs	r5, #0
	ldr	r0, .L590+16
	ldrsb	r5, [r0, r5]
	movs	r6, r5
.L554:
	movs	r4, #8
	subs	r1, r1, #8
	ldrb	r0, [r1, #4]
	ldr	r1, .L590+20
	lsls	r1, r1, #24
	str	r4, [sp, #8]
	lsrs	r1, r1, #24
	cmp	r0, r1
	bne	.L555
	movs	r1, #0
	str	r1, [sp, #8]
	rsbs	r5, r5, #0
	rsbs	r6, r6, #0
.L555:
	cmp	r5, r2
	bne	.L556
	movs	r4, #0
	cmp	r6, r3
	beq	.L546
.L556:
	ldr	r1, [sp, #20]
	ldr	r3, .L590+24
	ldr	r0, .L590+28
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
	ldr	r3, .L590+12
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
.L546:
	movs	r6, #20
	ldr	r3, [sp, #12]
	muls	r3, r6
	ldr	r5, .L590+12
	ldr	r0, [r3, r5]
	movs	r6, r3
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.LCB5080
	b	.L557	@long jump
.LCB5080:
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
.L560:
	ldr	r0, [r5]
	cmp	r0, r2
	beq	.L558
	ldr	r0, [r5, #4]
	ldr	r6, [r1, #4]
	cmp	r0, r6
	beq	.L559
.L558:
	adds	r7, r7, #1
	adds	r5, r5, #20
	cmp	r7, #4
	bne	.L560
.L559:
	movs	r1, #20
	ldr	r0, [sp, #16]
	muls	r0, r1
	movs	r1, r0
	ldr	r0, .L590+12
	movs	r6, #16
	ldr	r1, [r1, r0]
	movs	r0, #16
	ldrsb	r6, [r1, r6]
	ldrsb	r0, [r2, r0]
	cmp	r6, r0
	ble	.L561
	movs	r5, #0
	ldr	r0, .L590+16
	ldrsb	r5, [r0, r5]
.L562:
	ldrb	r1, [r1, #17]
	ldrb	r2, [r2, #17]
	lsls	r1, r1, #24
	lsls	r2, r2, #24
	asrs	r1, r1, #24
	asrs	r2, r2, #24
	cmp	r1, r2
	ble	.L563
	movs	r6, #0
	ldr	r2, .L590+16
	ldrsb	r6, [r2, r6]
.L564:
	ldr	r2, .L590+12
	ldr	r1, [sp, #4]
	ldr	r2, [r2, #80]
	cmp	r1, #0
	bne	.L565
	ldrb	r1, [r2, #2]
	lsrs	r1, r1, #3
	lsls	r1, r1, #27
	bpl	.L565
	movs	r5, #0
	ldr	r1, .L590+16
	ldrsb	r5, [r1, r5]
	movs	r6, r5
.L565:
	subs	r2, r2, #8
	ldrb	r1, [r2, #4]
	ldr	r2, .L590+32
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	cmp	r1, r2
	bne	.L566
	movs	r2, #2
	str	r2, [sp, #8]
	rsbs	r5, r5, #0
	rsbs	r6, r6, #0
.L566:
	cmp	r5, ip
	bne	.L567
	cmp	r6, r3
	beq	.L557
.L567:
	ldr	r1, [sp, #20]
	ldr	r3, .L590+24
	ldr	r0, .L590+28
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
	ldr	r3, .L590+12
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
.L576:
	movs	r3, #0
	b	.L589
.L550:
	movs	r5, r2
	cmp	r6, r4
	blt	.LCB5233
	b	.L551	@long jump
.LCB5233:
	movs	r5, #0
	ldr	r4, .L590+16
	ldrsb	r5, [r4, r5]
	rsbs	r5, r5, #0
	b	.L551
.L552:
	movs	r6, r3
	cmp	r0, r1
	blt	.LCB5244
	b	.L553	@long jump
.LCB5244:
	movs	r6, #0
	ldr	r1, .L590+16
	ldrsb	r6, [r1, r6]
	rsbs	r6, r6, #0
	b	.L553
.L561:
	mov	r5, ip
	cmp	r6, r0
	bge	.L562
	movs	r5, #0
	ldr	r0, .L590+16
	ldrsb	r5, [r0, r5]
	rsbs	r5, r5, #0
	b	.L562
.L563:
	movs	r6, r3
	cmp	r1, r2
	bge	.L564
	movs	r6, #0
	ldr	r2, .L590+16
	ldrsb	r6, [r2, r6]
	rsbs	r6, r6, #0
	b	.L564
.L557:
	cmp	r4, #0
	bne	.LCB5276
	b	.L545	@long jump
.LCB5276:
	b	.L576
.L588:
	ldr	r0, [sp, #20]
	ldr	r3, .L590+36
	bl	.L25
.L568:
	ldr	r0, [sp, #4]
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L591:
	.align	2
.L590:
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
	ldr	r3, .L608
	ldr	r0, .L608+4
	sub	sp, sp, #20
	bl	.L25
	ldr	r3, .L608+8
	adds	r3, r3, #94
	ldrb	r2, [r3]
	ldr	r3, [r4, #52]
	adds	r3, r3, #46
	cmp	r2, #1
	bne	.L593
	ldrb	r1, [r3]
	subs	r1, r1, #1
	lsls	r1, r1, #16
	lsrs	r1, r1, #16
	str	r1, [sp, #4]
.L594:
	movs	r3, r4
	adds	r3, r3, #47
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L595
.L602:
	movs	r3, r4
	adds	r3, r3, #46
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L596
.L597:
	movs	r0, #1
	ldr	r3, .L608+12
	bl	.L25
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L593:
	ldrb	r3, [r3]
	movs	r1, r3
	subs	r1, r1, #10
	lsls	r1, r1, #16
	adds	r3, r3, #5
	str	r3, [sp, #4]
	lsrs	r1, r1, #16
	b	.L594
.L595:
	movs	r6, r4
	adds	r6, r6, #49
	str	r6, [sp, #12]
	ldr	r6, .L608+16
	movs	r5, #0
	mov	ip, r6
	ldr	r3, .L608+20
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
.L598:
	ldr	r6, [sp, #8]
	cmp	r6, r5
	ble	.L602
	ldr	r6, [sp, #12]
	ldrb	r7, [r6]
	ldr	r6, [r4, #52]
	adds	r6, r6, #47
	cmp	r7, r5
	bgt	.L599
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r2, [r7, r6]
.L600:
	adds	r5, r5, #1
	b	.L598
.L599:
	ldrb	r7, [r6]
	adds	r6, r5, r1
	lsls	r7, r7, #5
	adds	r6, r6, r7
	mov	r7, ip
	lsls	r6, r6, #1
	strh	r3, [r7, r6]
	b	.L600
.L596:
	ldr	r3, .L608+20
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
	ldr	r5, .L608+16
	lsrs	r1, r1, #16
	lsrs	r3, r3, #16
	adds	r7, r7, #48
.L603:
	cmp	r6, r2
	ble	.L597
	ldrb	r0, [r7]
	mov	ip, r0
	ldr	r0, [r4, #52]
	adds	r0, r0, #47
	ldrb	r0, [r0]
	lsls	r0, r0, #5
	cmp	ip, r2
	bgt	.L604
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r3, [r5, r0]
.L605:
	adds	r2, r2, #1
	b	.L603
.L604:
	mov	ip, r0
	ldr	r0, [sp, #4]
	adds	r0, r0, r2
	add	r0, r0, ip
	lsls	r0, r0, #1
	strh	r1, [r5, r0]
	b	.L605
.L609:
	.align	2
.L608:
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
	ldr	r3, .L612
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L612+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L612+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L612+12
	ldr	r3, .L612+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L613:
	.align	2
.L612:
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
	ldr	r3, .L618
	movs	r5, r1
	bl	.L25
	ldr	r3, .L618+4
	bl	.L25
	cmp	r0, #39
	bhi	.L615
	ldr	r3, .L618+8
.L617:
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
.L615:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L617
.L619:
	.align	2
.L618:
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
	ldr	r1, .L637
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L637+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L637+8
	ldr	r3, .L637+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L637+16
	bl	.L25
	ldr	r3, .L637+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L621
	ldr	r3, .L637+24
	str	r3, [sp, #4]
.L621:
	movs	r7, #0
	ldr	r3, .L637+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L626:
	movs	r0, r5
	ldr	r3, .L637+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L637+36
	bl	.L25
	ldr	r3, .L637+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L637+44
	bl	.L25
	cmp	r7, #6
	bne	.L622
	ldr	r6, .L637+48
	ldr	r0, [sp, #8]
	bl	.L41
	ldr	r3, .L637+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L41
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L623
	adds	r3, r0, #0
.L623:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L624:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L628
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L629
	cmp	r4, #0
	blt	.L630
	movs	r2, #21
	cmp	r4, #0
	beq	.L631
	movs	r6, #4
	cmp	r4, #9
	ble	.L635
	cmp	r4, #99
	ble	.L633
.L636:
	movs	r0, #5
.L625:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L637+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L637+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L637+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L626
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L622:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L624
.L628:
	movs	r2, #20
	movs	r6, #3
	b	.L636
.L629:
	movs	r2, #20
	movs	r6, #3
.L633:
	movs	r0, #6
	b	.L625
.L630:
	movs	r2, #20
	movs	r6, #3
.L635:
	movs	r0, #7
	b	.L625
.L631:
	movs	r6, r4
	b	.L635
.L638:
	.align	2
.L637:
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
	ldr	r5, .L642
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L642+4
	adds	r0, r0, #48
	bl	.L25
	ldr	r3, .L642+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L642+12
	adds	r0, r0, #44
	bl	.L436
	movs	r6, #52
.L640:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L436
	cmp	r6, #108
	bne	.L640
	ldr	r0, .L642+16
	lsls	r0, r0, #16
	ldr	r3, .L642+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L642+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L642+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L642+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r1, #136
	movs	r2, #32
	ldr	r0, .L642+36
	lsls	r1, r1, #2
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L643:
	.align	2
.L642:
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
	ldr	r3, .L651
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L651+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L651+8
	movs	r5, r0
	bl	.L25
	ldr	r3, [r4, #60]
	lsls	r2, r0, #3
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L651+12
	str	r0, [sp]
	bl	.L25
	ldr	r7, .L651+16
	ldr	r0, .L651+20
	movs	r1, r7
	ldr	r3, .L651+24
	bl	.L25
	ldr	r3, [sp]
	ldr	r0, .L651+28
	lsls	r6, r3, #1
	movs	r1, r7
	movs	r2, #0
	ldr	r3, .L651+32
	adds	r0, r6, r0
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L651+36
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
	ldr	r3, .L651+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L651+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L651+48
	movs	r0, r7
	bl	.L25
	movs	r1, r6
	ldr	r0, [r4, #60]
	ldr	r7, .L651+52
	adds	r1, r1, #70
	ldr	r3, .L651+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	ldr	r1, [sp]
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L651+60
	ldr	r3, .L651+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L651+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L645
	movs	r5, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r5, r5, #3
.L646:
	adds	r6, r6, #212
	adds	r6, r7, r6
	movs	r1, r5
	movs	r2, #0
	movs	r0, r6
	ldr	r3, .L651+72
	bl	.L25
	adds	r3, r5, #1
	movs	r1, r3
	movs	r2, #0
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r3, .L651+72
	bl	.L25
	movs	r0, r4
	ldr	r3, .L651+76
	bl	.L25
	movs	r3, #2
	ldr	r1, .L651+80
	movs	r2, r3
	ldr	r4, .L651+84
	bl	.L20
	movs	r0, r5
	ldr	r5, .L651+88
	bl	.L16
	movs	r4, r0
	ldr	r0, [sp, #4]
	bl	.L16
	ldr	r3, .L651+92
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
.L647:
	adds	r3, r3, #1
	adds	r6, r6, #64
	cmp	r2, r3
	bge	.L650
	@ sp needed
	movs	r0, #3
	ldr	r3, .L651+96
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L645:
	ldr	r4, .L651+100
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r5, .L651+104
	lsrs	r4, r4, #16
	b	.L646
.L650:
	cmp	r2, r3
	ble	.L648
	strh	r5, [r6]
	strh	r4, [r6, #2]
	b	.L647
.L648:
	strh	r0, [r6]
	strh	r1, [r6, #2]
	b	.L647
.L652:
	.align	2
.L651:
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
	ldr	r3, .L654
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L654+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L654+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L654+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L654+16
	ldr	r3, .L654+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L655:
	.align	2
.L654:
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
	ldr	r0, .L657
	ldr	r3, .L657+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L657+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L658:
	.align	2
.L657:
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
	ldr	r1, .L663
	ldr	r3, .L663+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L663+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L663+12
	cmp	r0, #0
	bne	.L662
	ldr	r2, .L663+16
.L662:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L664:
	.align	2
.L663:
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
	ldr	r1, .L669
	ldr	r3, .L669+4
	lsls	r1, r1, #24
	push	{r4, lr}
	lsrs	r1, r1, #24
	movs	r4, r0
	ldr	r0, [r3]
	ldr	r3, .L669+8
	bl	.L25
	adds	r4, r4, #76
	ldr	r2, .L669+12
	cmp	r0, #0
	bne	.L668
	ldr	r2, .L669+16
.L668:
	@ sp needed
	strh	r2, [r4]
	pop	{r4}
	pop	{r0}
	bx	r0
.L670:
	.align	2
.L669:
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
	ldr	r3, .L672
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r3, [r4, #60]
	adds	r3, r3, #41
	ldrb	r2, [r3]
	movs	r1, r4
	movs	r3, #0
	ldr	r0, .L672+4
	ldr	r4, .L672+8
	lsrs	r2, r2, #3
	bl	.L20
	movs	r0, #0
	pop	{r4}
	pop	{r1}
	bx	r1
.L673:
	.align	2
.L672:
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
	ldr	r6, .L681
	ldr	r5, .L681+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L681+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L681+12
	ldrsb	r0, [r5, r0]
	bl	.L41
	movs	r6, r0
	ldr	r3, .L681+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L681+20
	bl	.L41
	ldr	r3, .L681+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L676
	ldr	r0, .L681+28
	ldr	r3, .L681+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L676
	ldr	r0, .L681+36
	ldr	r3, .L681+40
	adds	r0, r0, #84
	bl	.L25
.L676:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L681+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L681+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L682:
	.align	2
.L681:
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
	ldr	r3, .L685
	ldrb	r2, [r3, #17]
	ldr	r3, .L685+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L683
	movs	r3, #64
	ldr	r2, [r0, #12]
	bics	r2, r3
	subs	r3, r3, #29
	orrs	r3, r2
	str	r3, [r0, #12]
.L683:
	@ sp needed
	bx	lr
.L686:
	.align	2
.L685:
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
	ldr	r4, .L695
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L688
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.L688
	ldr	r1, .L695+4
	lsls	r1, r1, #24
	ldr	r0, [r4]
	ldr	r5, .L695+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L689
.L691:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L695+12
	bl	.L25
	cmp	r0, #0
	beq	.L688
	movs	r0, #1
.L690:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L689:
	ldr	r1, .L695+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L691
.L688:
	movs	r0, #3
	b	.L690
.L696:
	.align	2
.L695:
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
	ldr	r3, .L698
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L698+4
	ldr	r3, .L698+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L699:
	.align	2
.L698:
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
	bne	.L701
	ldr	r4, .L714
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L701
	ldr	r0, [r4]
	bl	PAU_isPairedUp
	cmp	r0, #3
	beq	.L701
	ldr	r3, [r4]
	ldrb	r0, [r3, #27]
	ldr	r3, .L714+4
	bl	.L25
	movs	r3, #17
	ldr	r2, [r4]
	ldr	r1, .L714+8
	ldrsb	r3, [r2, r3]
	ldr	r1, [r1]
	ldrb	r2, [r2, #16]
	lsls	r3, r3, #2
	ldr	r3, [r3, r1]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	ldrb	r1, [r3, r2]
	ldr	r3, .L714+12
	bl	.L25
	cmp	r0, #0
	beq	.L701
	ldr	r3, [r4]
	ldr	r2, [r3, #12]
	movs	r3, #132
	lsls	r3, r3, #4
	movs	r0, #1
	tst	r2, r3
	beq	.L702
.L701:
	movs	r0, #3
.L702:
	@ sp needed
	pop	{r4}
	pop	{r1}
	bx	r1
.L715:
	.align	2
.L714:
	.word	gActiveUnit
	.word	GetUnit
	.word	gMapTerrain
	.word	CanUnitCrossTerrain
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
	ldr	r5, .L721
	ldr	r6, [r5]
	ldr	r3, .L721+4
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
	ldr	r3, .L721+8
	ldrb	r3, [r3]
	movs	r4, r0
	str	r2, [r0, #12]
	ldr	r7, .L721+12
	movs	r0, r6
	cmp	r3, #0
	beq	.L717
	bl	.L436
	movs	r6, r0
	movs	r0, r4
	bl	.L436
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
	adds	r6, r6, #82
	adds	r0, r0, #82
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
.L718:
	str	r4, [r5]
	ldr	r3, .L721+16
	ldrb	r2, [r4, #11]
	strb	r2, [r3, #12]
	strb	r2, [r3, #13]
	ldr	r3, .L721+20
	bl	.L25
	bl	PAU_getSwitchFlag
	cmp	r0, #0
	beq	.L719
	bl	PAU_unsetSwitchFlag
.L720:
	@ sp needed
	movs	r0, #23
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L717:
	bl	.L436
	movs	r6, #66
	ldr	r3, .L721+24
	ldrsb	r6, [r0, r6]
	bl	.L25
	movs	r0, r4
	ldr	r3, .L721+28
	bl	.L25
	movs	r3, r0
	adds	r3, r3, #66
	strb	r6, [r3]
	movs	r1, r6
	ldr	r0, [r0, #48]
	ldr	r3, .L721+32
	bl	.L25
	b	.L718
.L719:
	bl	PAU_setSwitchFlag
	ldr	r3, .L721+36
	movs	r2, #28
	ldrsh	r1, [r3, r2]
	movs	r2, #12
	ldrsh	r3, [r3, r2]
	ldr	r4, .L721+40
	subs	r1, r1, r3
	movs	r2, #1
	movs	r3, #20
	ldr	r0, .L721+44
	bl	.L20
	b	.L720
.L722:
	.align	2
.L721:
	.word	gActiveUnit
	.word	GetUnit
	.word	PAU_showBothMapSprites
	.word	MU_GetByUnit
	.word	gActionData
	.word	Text_ResetTileAllocation
	.word	MU_End
	.word	MU_Create
	.word	AP_SetAnimation
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
	beq	.L724
	movs	r3, #128
	strh	r3, [r5]
.L724:
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
	ldr	r3, .L728
	movs	r0, r5
	strh	r4, [r5]
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L729:
	.align	2
.L728:
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
	ldr	r3, .L731
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L731+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L731+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L732:
	.align	2
.L731:
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
	ldr	r3, .L748
	ldr	r0, .L748+4
	bl	.L25
	subs	r5, r0, #0
	beq	.L734
	movs	r4, #52
	ldrsb	r4, [r0, r4]
	cmp	r4, #0
	bne	.L734
	movs	r7, r0
	adds	r7, r7, #53
	ldrb	r3, [r7]
	cmp	r3, #127
	bls	.L735
	ldr	r0, .L748+8
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r7]
	movs	r4, r0
	cmp	r3, #127
	bhi	.L736
.L735:
	ldr	r0, .L748+12
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r4, r4, r0
.L736:
	ldrb	r3, [r7]
	movs	r0, #0
	cmp	r3, #127
	bhi	.L737
	adds	r0, r0, #20
.L737:
	movs	r1, #1
	ldr	r3, .L748+16
	adds	r4, r0, r4
	rsbs	r1, r1, #0
	movs	r0, #0
	adds	r5, r5, #50
	bl	.L25
	ldrb	r3, [r5]
	cmp	r3, #1
	beq	.L738
	cmp	r3, #2
	beq	.L739
.L734:
	@ sp needed
	movs	r0, #0
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L738:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L748+20
.L747:
	ldr	r4, .L748+24
	bl	.L20
	b	.L734
.L739:
	movs	r3, #0
	movs	r2, r4
	movs	r1, r6
	ldr	r0, .L748+28
	b	.L747
.L749:
	.align	2
.L748:
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
	bge	.L751
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L750:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L751:
	ldr	r3, .L753
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
	b	.L750
.L754:
	.align	2
.L753:
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
	ldr	r3, .L762
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
.L756:
	ldr	r3, .L762+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L760
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L760:
	cmp	r4, #0
	beq	.L761
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L757:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L758
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L759:
	adds	r5, r5, #1
	b	.L756
.L761:
	movs	r7, #1
	b	.L757
.L758:
	movs	r2, r6
	ldr	r3, .L762+8
	bl	.L25
	b	.L759
.L763:
	.align	2
.L762:
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
	beq	.L764
	bl	PAU_forecastDrawGaugeIcons.part.0
.L764:
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
	ldr	r0, .L797
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L797+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L797+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB7123
	b	.L770	@long jump
.LCB7123:
	cmp	r0, #0
	bne	.LCB7125
	b	.L771	@long jump
.LCB7125:
	ldr	r1, .L797+12
	ldr	r0, .L797+16
	bl	.L25
	movs	r1, #12
.L795:
	movs	r3, #1
	str	r3, [sp, #4]
.L772:
	ldr	r6, .L797+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L797+24
	bl	.L436
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L797
	ldr	r3, .L797+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L774
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L774:
	movs	r3, #159
	ldr	r4, .L797+4
	lsls	r3, r3, #2
	ldr	r6, .L797+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L797+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L775
	ldr	r3, .L797+32
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
.L775:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L797+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB7206
	b	.L776	@long jump
.LCB7206:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB7213
	b	.L776	@long jump
.LCB7213:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L777:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L797+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L797+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L779
	movs	r2, #255
.L779:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L797+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L797+4
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
	ldr	r3, .L797
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L797
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L797+44
	bl	.L41
	movs	r4, #255
	cmp	r0, #181
	beq	.L781
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L781:
	ldr	r3, .L797
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L797
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L41
	movs	r6, #255
	cmp	r0, #181
	beq	.L783
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L783:
	movs	r0, r7
	ldr	r3, .L797
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L797+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L785
	movs	r2, #255
.L785:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L797+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L797+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L797
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L797+48
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
	ldr	r4, .L797+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L797+56
	adds	r1, r1, r5
	ldr	r0, .L797+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L797+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L797+68
	bl	.L20
	ldr	r3, .L797+4
	adds	r3, r3, #74
	ldr	r6, .L797+72
	ldrh	r0, [r3]
	bl	.L41
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L797+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L797
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
.L771:
	ldr	r1, .L797+80
	ldr	r0, .L797+16
	bl	.L25
	movs	r1, #11
.L796:
	str	r5, [sp, #4]
	b	.L772
.L770:
	cmp	r0, #0
	beq	.L773
	ldr	r1, .L797+84
	ldr	r0, .L797+16
	bl	.L25
	movs	r1, #11
	b	.L795
.L773:
	ldr	r1, .L797+88
	ldr	r0, .L797+16
	bl	.L25
	movs	r1, #10
	b	.L796
.L776:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L797
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L777
.L798:
	.align	2
.L797:
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
	ldr	r7, .L820
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L820+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB7493
	b	.L800	@long jump
.LCB7493:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB7497
	b	.L801	@long jump
.LCB7497:
	ldr	r1, .L820+8
	ldr	r0, .L820+12
	ldr	r3, .L820+16
	bl	.L25
	movs	r1, #12
.L819:
	movs	r3, #1
.L817:
	ldr	r6, .L820+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L820+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L820
	ldr	r3, .L820+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L804
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L804:
	movs	r3, #223
	ldr	r5, .L820+4
	ldr	r6, .L820+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L820+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L805
	ldr	r3, .L820+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L820+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L805:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L820+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L806
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L806
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
.L806:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L820+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L820+44
	cmp	r2, #99
	bls	.L807
	movs	r2, #255
.L807:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L820+4
	ldr	r6, .L820+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L820+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L820+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L820+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L820+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L820+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L820+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L820+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L820
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L809
	movs	r2, #255
.L809:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L820+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L820+44
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
	ldr	r3, .L820+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L820+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L820+64
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
	ldr	r6, .L820+68
	bl	.L41
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L820+72
	adds	r1, r1, r5
	ldr	r0, .L820+76
	bl	.L41
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L820+80
	bl	.L41
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L820+84
	bl	.L41
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L820+88
	bl	.L41
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L820+92
	bl	.L41
	ldr	r3, .L820+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L820+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L820+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L41
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L820+96
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
.L801:
	ldr	r1, .L820+104
	ldr	r0, .L820+12
	ldr	r3, .L820+16
	bl	.L25
	movs	r1, #11
.L818:
	ldr	r3, [sp]
	b	.L817
.L800:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L803
	ldr	r1, .L820+108
	ldr	r0, .L820+12
	ldr	r3, .L820+16
	bl	.L25
	movs	r1, #11
	b	.L819
.L803:
	ldr	r1, .L820+112
	ldr	r0, .L820+12
	ldr	r3, .L820+16
	bl	.L25
	movs	r1, #10
	b	.L818
.L821:
	.align	2
.L820:
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
	beq	.L823
	cmp	r3, #2
	beq	.L824
.L822:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L823:
	ldr	r3, .L826
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L822
.L824:
	ldr	r3, .L826
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L822
.L827:
	.align	2
.L826:
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
	ldr	r3, .L831
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
	blt	.L829
	adds	r3, r3, #20
.L829:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L831+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L832:
	.align	2
.L831:
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
	beq	.L834
	adds	r6, r6, #4
.L834:
	ldr	r0, .L843
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L843+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L843+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L837
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L843+12
	ldr	r5, .L843+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L843+20
	ldr	r0, .L843+24
	bl	.L16
.L838:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L843+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L837:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L843+12
	ldr	r7, .L843+16
	bl	.L436
	ldr	r1, .L843+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L843+24
	adds	r1, r5, r1
	bl	.L436
	b	.L838
.L844:
	.align	2
.L843:
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
	ldr	r7, .L861
	ldr	r6, .L861+4
	cmp	r3, #127
	bhi	.L846
.L848:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L847:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L849
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L849:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L852
	beq	.L853
	movs	r2, #2
.L852:
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
	ldr	r3, .L861+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L853:
	cmp	r7, #0
	beq	.L845
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
	ldr	r3, .L861+8
	adds	r0, r0, #19
	bl	.L25
.L845:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L846:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L847
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L848
	movs	r5, r0
	b	.L847
.L862:
	.align	2
.L861:
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
	bls	.L864
	ldr	r0, .L871
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L865
.L864:
	ldr	r0, .L871+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L865:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L871+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L871+12
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
	ble	.L866
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L871+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L871+20
	ldr	r7, .L871+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L436
.L866:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L863
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L871+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L871+20
	ldr	r4, .L871+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L863:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L872:
	.align	2
.L871:
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
	beq	.L874
	ldr	r3, .L884
	bl	.L25
	cmp	r0, #0
	beq	.L875
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L875
	movs	r0, r4
	ldr	r3, .L884+4
.L883:
	bl	.L25
.L873:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L875:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L884+8
	bl	.L25
.L874:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L873
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L884+12
	b	.L883
.L885:
	.align	2
.L884:
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
	ldr	r3, .L891
.L887:
	movs	r1, #0
	ldrsh	r0, [r3, r1]
	cmp	r0, #0
	bne	.L889
.L888:
	@ sp needed
	bx	lr
.L889:
	adds	r3, r3, #2
	cmp	r0, r2
	bne	.L887
	movs	r0, #1
	b	.L888
.L892:
	.align	2
.L891:
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
	ldr	r3, .L895
	movs	r6, r0
	movs	r4, #1
	bl	.L25
	lsls	r4, r4, r0
	movs	r0, r6
	lsls	r5, r4, #24
	lsrs	r5, r5, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L894
	bl	PAU_getBattleGauge
	ldr	r2, .L895+4
	ldrb	r2, [r2]
	adds	r3, r5, r0
	cmp	r3, r2
	blt	.L894
	adds	r5, r5, #1
	lsls	r5, r5, #24
	lsrs	r5, r5, #24
.L894:
	movs	r0, r5
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L896:
	.align	2
.L895:
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
	bne	.L898
.L907:
	movs	r0, #0
.L899:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L898:
	ldr	r7, .L923
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L900:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L907
	cmp	r6, #0
	beq	.L901
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L901
	bl	PAU_getBattleGauge
	ldr	r3, .L923+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L901
	ldr	r2, .L923+8
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L921:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L922:
	bl	PAU_setBattleGauge
.L902:
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
	ldr	r3, .L923+12
	bl	.L25
	cmp	r0, #0
	bne	.L908
	adds	r6, r6, #1
	b	.L900
.L901:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L903
	bl	PAU_getBattleGauge
	ldr	r3, .L923+4
	ldrb	r3, [r3]
	cmp	r3, r0
	bhi	.L903
	ldr	r2, .L923+16
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L921
.L903:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L904
.L905:
	bl	PAU_getBattleGauge
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L922
.L904:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L905
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L905
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L902
	b	.L905
.L908:
	movs	r0, #1
	b	.L899
.L924:
	.align	2
.L923:
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
.L927:
	lsls	r0, r4, #24
	ldr	r3, .L935
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L926
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L926
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L935+4
	bl	.L25
.L926:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L927
	ldr	r3, .L935+8
	@ sp needed
	bl	.L25
	ldr	r3, .L935+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L936:
	.align	2
.L935:
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
	bhi	.L938
	ldr	r3, .L940
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L940+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L939
	adds	r2, r4, #0
.L939:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L938:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L941:
	.align	2
.L940:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC486:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC487:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_mapGaugeProcInstr
.LC488:
	.ascii	"PAU_MapGaugeProc\000"
	.global	PAU_swapMapSpriteProcInstr
.LC489:
	.ascii	"PAU_SwapMapSpriteProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC490:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC491:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC492:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC493:
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
	.word	.LC493
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
	.word	.LC492
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
	.word	.LC487
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
	.word	.LC490
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
	.word	.LC486
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
	.word	.LC488
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
	.word	.LC489
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
	.word	.LC491
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
.L436:
	bx	r7

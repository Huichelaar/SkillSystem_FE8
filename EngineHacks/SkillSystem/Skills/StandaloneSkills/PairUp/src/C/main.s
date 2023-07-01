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
	.global	PAU_swapMSInit
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapMSInit, %function
PAU_swapMSInit:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, #0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	strh	r3, [r0, #42]
	adds	r3, r3, #8
	strh	r3, [r0, #44]
	movs	r3, r0
	adds	r3, r3, #41
	movs	r4, r0
	ldrb	r0, [r3]
	movs	r3, #2
	movs	r6, r0
	ands	r6, r3
	str	r6, [sp, #4]
	ldr	r7, .L47
	tst	r0, r3
	bne	.L31
	movs	r3, r7
	adds	r3, r3, #88
.L43:
	movs	r2, r4
	ldrb	r3, [r3]
	adds	r2, r2, #46
	strb	r3, [r2]
	movs	r2, #20
	mov	ip, r2
	movs	r1, r4
	mov	r2, ip
	muls	r2, r3
	adds	r2, r7, r2
	ldr	r5, [r2, #4]
	adds	r1, r1, #47
	cmp	r3, #1
	bhi	.L33
	adds	r2, r3, #2
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	movs	r6, r2
	strb	r2, [r1]
	mov	r2, ip
	muls	r2, r6
	adds	r2, r7, r2
	ldr	r2, [r2, #4]
	adds	r3, r3, #1
	cmp	r2, r5
	bne	.L44
.L35:
	movs	r1, #16
	ldr	r3, .L47+4
	ldrsb	r1, [r5, r1]
	ldrh	r3, [r3, #12]
	lsls	r1, r1, #4
	subs	r1, r1, r3
	lsls	r3, r0, #31
	bpl	.L37
	ldr	r2, [sp, #4]
	ldr	r3, .L47+8
	cmp	r2, #0
	bne	.L38
	ldr	r2, .L47+12
.L46:
	ldrh	r0, [r2]
.L45:
	bl	.L25
.L39:
	@ sp needed
	movs	r1, #0
	movs	r0, #0
	ldr	r3, .L47+16
	ldrsb	r1, [r3, r1]
	ldr	r3, .L47+20
	ldr	r5, .L47+24
	ldrsb	r0, [r3, r0]
	bl	.L16
	movs	r3, r4
	movs	r1, #0
	asrs	r0, r0, #8
	adds	r3, r3, #48
	strb	r0, [r3]
	movs	r0, #0
	ldr	r3, .L47+28
	ldrsb	r1, [r3, r1]
	ldr	r3, .L47+32
	ldrsb	r0, [r3, r0]
	bl	.L16
	adds	r4, r4, #49
	asrs	r0, r0, #8
	strb	r0, [r4]
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L31:
	movs	r3, r7
	adds	r3, r3, #89
	b	.L43
.L33:
	subs	r2, r3, #2
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
	movs	r6, r2
	strb	r2, [r1]
	mov	r2, ip
	muls	r2, r6
	adds	r2, r7, r2
	ldr	r2, [r2, #4]
	cmp	r2, r5
	beq	.L35
	subs	r3, r3, #1
.L44:
	strb	r3, [r1]
	b	.L35
.L38:
	ldr	r2, .L47+36
	b	.L46
.L37:
	ldr	r3, .L47+40
	movs	r0, #0
	ldrsh	r0, [r3, r0]
	adds	r3, r0, #1
	beq	.L39
	lsls	r0, r0, #16
	ldr	r3, .L47+8
	lsrs	r0, r0, #16
	b	.L45
.L48:
	.align	2
.L47:
	.word	gMapAnimData
	.word	gGameState
	.word	PlaySpacialSoundMaybe
	.word	PAU_dualStrikeSkillActivationSound
	.word	PAU_mapFrontOffsY
	.word	PAU_mapFrontOffsX
	.word	ArcTan2
	.word	PAU_mapBackOffsY
	.word	PAU_mapBackOffsX
	.word	PAU_dualGuardSkillActivationSound
	.word	PAU_swapBackActivationSound
	.size	PAU_swapMSInit, .-PAU_swapMSInit
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
	ldr	r5, .L56
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
	ldr	r7, .L56+4
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
	ldr	r5, .L56+8
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
	bne	.L50
	adds	r2, r2, #78
	ldrh	r3, [r2]
	adds	r3, r3, #1
	strh	r3, [r2]
	ldr	r3, .L56+12
	bl	.L25
	ldrb	r3, [r7]
	muls	r6, r3
	adds	r6, r5, r6
	ldr	r3, [r6, #8]
	adds	r3, r3, #78
	ldrh	r2, [r3]
	subs	r2, r2, #1
	strh	r2, [r3]
.L50:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcc	.L49
	ldr	r3, [sp, #4]
	ldrb	r2, [r3]
	movs	r3, #20
	muls	r2, r3
	adds	r2, r5, r2
	ldr	r2, [r2, #8]
	movs	r0, r2
	ldr	r1, .L56+16
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L56+20
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
	movs	r6, r4
	ldr	r1, .L56+24
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	lsls	r1, r1, #4
	adds	r0, r0, #80
	strh	r1, [r0]
	ldr	r1, .L56+28
	ldrb	r1, [r1]
	lsls	r1, r1, #24
	asrs	r1, r1, #24
	adds	r3, r3, #82
	lsls	r1, r1, #4
	strh	r1, [r3]
	adds	r6, r6, #41
	ldrb	r3, [r6]
	lsls	r3, r3, #30
	bmi	.L52
	adds	r5, r5, #88
.L55:
	ldr	r3, .L56+32
	movs	r0, r4
	strb	r2, [r5]
	bl	.L25
	ldrb	r3, [r6]
	lsls	r3, r3, #31
	bpl	.L54
	movs	r3, #8
	strh	r3, [r4, #36]
	ldr	r3, .L56+36
	str	r3, [r4, #12]
.L49:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L52:
	adds	r5, r5, #89
	b	.L55
.L54:
	ldr	r0, [r4, #20]
	ldr	r3, .L56+40
	bl	.L25
	b	.L49
.L57:
	.align	2
.L56:
	.word	gCosLookup
	.word	gSinLookup
	.word	gMapAnimData
	.word	MU_SortObjLayers
	.word	PAU_mapBackOffsX
	.word	PAU_mapBackOffsY
	.word	PAU_mapFrontOffsX
	.word	PAU_mapFrontOffsY
	.word	BreakProcLoop
	.word	_ProcSleepCallback
	.word	EndProc
	.size	PAU_swapMSLoop, .-PAU_swapMSLoop
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
	ldr	r5, .L73
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L73+4
	bl	.L25
	cmp	r0, #0
	beq	.L58
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L58
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L58
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L58
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L58
	ldr	r1, .L73+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L73+12
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L62
.L63:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L73+16
	bl	.L20
.L58:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L62:
	ldr	r1, .L73+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L63
	b	.L58
.L74:
	.align	2
.L73:
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
	push	{r0, r1, r4, lr}
	ldr	r3, [r0, #20]
	@ sp needed
	ldr	r3, [r3, #48]
	movs	r4, r0
	ldrb	r0, [r3, #2]
	ldr	r3, .L76
	bl	.L25
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L76+4
	bl	.L20
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L77:
	.align	2
.L76:
	.word	GetUnit
	.word	PutUnitSpriteExt
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
	ldr	r4, .L88
	ldrb	r2, [r4]
	strh	r3, [r0, #42]
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	movs	r5, r0
	ldr	r3, .L88+4
	cmp	r2, #0
	beq	.L79
	movs	r2, r4
	adds	r2, r2, #76
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L79
	movs	r2, r4
	adds	r2, r2, #152
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L80
.L79:
	movs	r0, r5
	bl	.L25
.L78:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L80:
	ldr	r2, [r4, #72]
	str	r2, [r0, #64]
	movs	r2, r4
	adds	r2, r2, #148
	ldr	r0, [r2]
	adds	r4, r4, #224
	bl	.L25
	ldr	r3, [r4]
	movs	r1, r3
	ldr	r2, .L88+8
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r1, r1, #80
	str	r3, [r5, #68]
	strh	r2, [r1]
	ldr	r2, .L88+12
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r3, r3, #82
	strh	r2, [r3]
	b	.L78
.L89:
	.align	2
.L88:
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
	ldr	r3, .L91
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L92:
	.align	2
.L91:
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
	ldr	r3, .L94
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L95:
	.align	2
.L94:
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
	ldr	r3, .L97
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L98:
	.align	2
.L97:
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
	beq	.L100
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L100
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L100
	ldr	r4, .L115
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L115+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L101
	movs	r1, r4
	movs	r0, r5
	bl	.L117
	ldr	r1, .L115+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L117
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L100
.L102:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L101:
	ldr	r3, .L115+12
	movs	r0, r7
	bl	.L25
	movs	r1, r4
	movs	r5, r0
	bl	.L117
	movs	r2, #1
	cmp	r0, #0
	bne	.L102
	ldr	r1, .L115+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L117
	movs	r2, #2
	cmp	r0, #0
	bne	.L102
.L100:
	movs	r2, #0
	b	.L102
.L116:
	.align	2
.L115:
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
	beq	.L119
	adds	r5, r5, #4
.L119:
	ldr	r6, .L131
	ldr	r4, .L131+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L131+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L131+12
	bl	.L25
	ldr	r3, [sp, #4]
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L131+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r0, .L131+20
	ldrsb	r7, [r2, r3]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L131+24
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
	bls	.L122
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L131+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L131+32
	bl	.L117
	ldr	r3, .L131+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L131+8
.L130:
	bl	.L117
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L124
	strb	r3, [r2]
.L118:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L122:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L131+28
	ldr	r6, .L131+32
	bl	.L117
	ldr	r3, .L131+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L131+36
	movs	r3, r5
	b	.L130
.L124:
	movs	r3, #0
	ldr	r0, [sp, #4]
	strb	r3, [r2]
	ldr	r3, .L131+40
	bl	.L25
	b	.L118
.L132:
	.align	2
.L131:
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
	beq	.L134
	adds	r5, r5, #4
.L134:
	ldr	r6, .L146
	ldr	r4, .L146+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L146+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L146+12
	bl	.L25
	movs	r2, #54
	movs	r7, #4
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, r2]
	ldr	r3, .L146+16
	ldr	r0, .L146+20
	adds	r3, r3, r2
	ldrsb	r7, [r3, r7]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L146+24
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
	bls	.L137
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L146+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L146+32
	bl	.L117
	ldr	r3, .L146+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L146+8
.L145:
	bl	.L117
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L139
	strb	r3, [r2]
.L133:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L137:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L146+28
	ldr	r6, .L146+32
	bl	.L117
	ldr	r3, .L146+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L146+36
	movs	r3, r5
	b	.L145
.L139:
	movs	r4, #0
	ldr	r0, [sp, #4]
	strb	r4, [r2]
	ldr	r3, .L146+40
	bl	.L25
	movs	r1, r4
	ldr	r0, .L146
	ldr	r5, .L146+4
	bl	.L16
	movs	r1, r4
	ldr	r0, .L146+8
	bl	.L16
	b	.L133
.L147:
	.align	2
.L146:
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
	ldr	r3, .L149
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L150:
	.align	2
.L149:
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
	ldr	r1, .L152
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
.L153:
	.align	2
.L152:
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
	ldr	r3, .L155
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L156:
	.align	2
.L155:
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
	ldr	r3, .L159
	ldr	r1, [r3]
	ldr	r3, .L159+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L158
	adds	r3, r0, #0
.L158:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L160:
	.align	2
.L159:
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
	ldr	r3, .L185
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
	ldr	r3, .L185+4
	bl	.L25
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L175:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1422
	b	.L163	@long jump
.LCB1422:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L164
	cmp	r2, #0
	bne	.L165
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L166
	ldr	r3, .L185+8
	movs	r0, r1
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L167
	ldr	r3, .L185+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L167:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L174
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L184:
	ldr	r3, .L185+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L174:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L182:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L165:
	cmp	r2, #1
	bne	.L166
	cmp	r3, #0
	bne	.L166
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L166
	ldr	r3, .L185+8
	ldr	r0, [sp, #4]
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L170
	ldr	r3, .L185+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L170:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L171
	ldr	r3, .L185+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L171:
	ldrh	r3, [r6, #2]
.L166:
	adds	r6, r6, #4
	b	.L175
.L164:
	cmp	r2, #0
	bne	.L172
	ldr	r3, .L185+8
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L173
	ldr	r3, .L185+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L173:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L174
	ldrb	r0, [r6]
	ldr	r3, .L185+4
	bl	.L25
	b	.L184
.L172:
	cmp	r2, #1
	bne	.L166
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L166
	cmp	r0, #9
	beq	.L166
	b	.L184
.L163:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L182
.L186:
	.align	2
.L185:
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
	beq	.L187
	movs	r3, #0
	ldr	r4, .L199
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L189
	cmp	r7, #0
	bne	.L190
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L199+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L117
	ldr	r3, .L199+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L197:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L198
.L189:
	cmp	r7, #0
	bne	.L192
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L199+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L117
	ldr	r3, .L199+8
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
.L198:
	movs	r0, #0
	bl	.L117
.L196:
	ldr	r3, .L199+12
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
	ldr	r3, .L199+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L199+20
	bl	.L25
.L187:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L190:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L199+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L117
	ldr	r3, .L199+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L197
.L192:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L199+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L199+8
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
	ldr	r5, .L199+4
	asrs	r4, r4, #16
	bl	.L16
	b	.L196
.L200:
	.align	2
.L199:
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
	bne	.LCB1767
	b	.L201	@long jump
.LCB1767:
	ldrb	r0, [r5, #27]
	ldr	r3, .L226
	bl	.L25
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L226+4
	ldr	r2, .L226+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1787
	b	.L201	@long jump
.LCB1787:
	ldr	r0, .L226+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1793
	b	.L201	@long jump
.LCB1793:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L226+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L226+20
	cmp	r2, #255
	beq	.L203
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L203:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L226+24
	str	r2, [sp, #20]
	bl	.L25
	ldr	r3, .L226+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L204
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L204:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L226+32
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
	beq	.L205
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L205:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L226+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L226+20
	cmp	r3, #255
	beq	.L206
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L206:
	ldr	r3, .L226+24
	bl	.L25
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L226+32
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
	ldr	r3, .L226+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L226+40
	bl	.L25
	movs	r4, r0
	cmp	r0, r6
	bne	.L207
	ldr	r3, .L226+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L226+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L226+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L226+56
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
.L207:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L226+60
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
	beq	.L208
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
	ldr	r3, .L226+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L225:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L226+68
	bl	.L25
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L226+72
	bl	.L25
	adds	r4, r4, #84
	strh	r0, [r4]
.L201:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L208:
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
	ldr	r3, .L226+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L225
.L227:
	.align	2
.L226:
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
	ldr	r7, .L239
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L239+4
	adds	r0, r0, #8
	bl	.L25
	subs	r4, r0, #0
	bne	.L229
	movs	r0, r5
	ldr	r3, .L239+8
	bl	.L25
.L228:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L229:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L239+12
	bl	.L25
	ldr	r3, .L239+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L239+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L231
	ldr	r3, .L239+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L231
	ldr	r3, .L239+28
	movs	r0, r5
	bl	.L25
	movs	r1, #1
	ldr	r3, .L239+32
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r7
	ldr	r3, .L239+36
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
.L232:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L239+40
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
	b	.L228
.L231:
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
	beq	.L232
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L239+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L16
	b	.L232
.L240:
	.align	2
.L239:
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
	ldr	r6, .L252
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L252+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L25
	subs	r5, r0, #0
	bne	.L242
	movs	r0, r4
	ldr	r3, .L252+8
	bl	.L25
.L241:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L242:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L252+12
	bl	.L25
	movs	r7, r5
	ldr	r3, .L252+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L252+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L244
	ldr	r3, .L252+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L244
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L252+28
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L252+32
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
	ldr	r3, .L252+36
	movs	r0, r4
	bl	.L25
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L245:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L252+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L252+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L241
.L244:
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
	beq	.L245
	ldr	r3, .L252+36
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
	ldr	r6, .L252+48
	bl	.L117
	b	.L245
.L253:
	.align	2
.L252:
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
	ldr	r5, .L265
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L265+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L265+8
	bl	.L25
	cmp	r0, #0
	beq	.L254
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L257
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L257:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L254
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L254:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L266:
	.align	2
.L265:
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
	ldr	r3, .L303
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L268
	ldr	r2, .L303+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L269
.L299:
	ldrb	r0, [r5, #27]
	ldr	r3, .L303+8
	bl	.L25
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L269
.L268:
	ldr	r2, .L303+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L299
.L269:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L270
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
	ldr	r3, .L303+16
	bl	.L25
.L270:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2585
	b	.L271	@long jump
.LCB2585:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L303+20
	bl	.L16
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L272
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
	ldr	r3, .L303+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L303+28
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
	ldr	r3, .L303+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L302:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L303+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L303+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L267:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L272:
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
	ldr	r3, .L303+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L303+28
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
	ldr	r3, .L303+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L302
.L271:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L303+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L303+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L303+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L303+48
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
	beq	.L274
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L275
.L300:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L275
.L274:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L300
.L275:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L276
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L303+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L277
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2833
	b	.L278	@long jump
.LCB2833:
	lsls	r3, r3, #28
	bmi	.LCB2839
	b	.L279	@long jump
.LCB2839:
.L277:
	movs	r0, r7
	ldr	r3, .L303+56
	bl	.L25
	ldr	r3, .L303+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L25
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L303+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2858
	b	.L281	@long jump
.LCB2858:
	ldr	r3, .L303+60
	movs	r0, r7
	bl	.L25
	ldr	r3, .L303+64
	bl	.L25
	cmp	r0, #0
	bne	.LCB2866
	b	.L281	@long jump
.LCB2866:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L303+68
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L303+72
	movs	r1, r4
	ldr	r3, .L303+76
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L303+80
	bl	.L25
.L276:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L303+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L303+88
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
	beq	.L282
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
.L301:
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
	b	.L267
.L278:
	lsls	r3, r3, #30
	bpl	.LCB2966
	b	.L277	@long jump
.LCB2966:
.L279:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L280
	movs	r1, r3
.L280:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2982
	b	.L277	@long jump
.LCB2982:
	movs	r5, r3
	b	.L277
.L304:
	.align	2
.L303:
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
.L281:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L305
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L305+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L305+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L276
.L282:
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
	b	.L301
.L306:
	.align	2
.L305:
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
	beq	.L308
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L309
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L308:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L307
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L312
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L307:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L309:
	ldr	r2, .L320
	ldrh	r5, [r2]
	ldr	r2, .L320+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L310
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L308
.L310:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L308
.L312:
	ldr	r3, .L320
	ldr	r1, .L320+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L313
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L307
.L313:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L307
.L321:
	.align	2
.L320:
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
	bne	.L323
.L329:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L324
.L325:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L336
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L323:
	movs	r2, r0
	ldr	r1, .L336+4
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
	ldr	r7, .L336+8
	lsrs	r3, r3, #16
.L326:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L329
	cmp	r2, #0
	beq	.L333
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L327:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L326
.L333:
	movs	r5, #1
	b	.L327
.L324:
	ldr	r1, .L336+4
	ldrb	r5, [r1]
	ldr	r1, .L336+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L336+16
	lsrs	r3, r3, #16
.L330:
	cmp	r5, r1
	ble	.L325
	cmp	r2, #0
	beq	.L334
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L331:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L330
.L334:
	movs	r4, #1
	b	.L331
.L337:
	.align	2
.L336:
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
	bls	.L339
	movs	r2, #240
	ldr	r3, .L347
	strh	r2, [r3, #44]
	ldr	r2, .L347+4
	ldr	r1, .L347+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L347+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L340:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L343
	ldr	r3, .L347+16
	ldr	r0, .L347+20
	bl	.L25
	ldr	r1, .L347+24
	movs	r2, #32
	ldr	r3, .L347+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L347+32
	bl	PAU_bAnimGaugeScrEntries
.L343:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L339:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L341
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L341:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L342
	movs	r0, r4
	ldr	r3, .L347+36
	bl	.L25
	b	.L340
.L342:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L347+40
	bl	.L25
	b	.L340
.L348:
	.align	2
.L347:
	.word	gLCDIOBuffer
	.word	12392
	.word	-4128832
	.word	4128830
	.word	prGetMiscIconGfx
	.word	1541
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
	beq	.L350
	movs	r2, #0
	movs	r1, #56
.L350:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L359
	movs	r0, #1
	bl	.L117
	ldr	r3, .L359+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L349
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L352
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L352:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L353
	ldr	r3, .L359+8
.L358:
	bl	.L25
.L349:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L353:
	ldr	r3, .L359+12
	b	.L358
.L360:
	.align	2
.L359:
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
	ldr	r3, .L388
	ldr	r2, .L388+4
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
	ldr	r5, .L388+8
	ldr	r2, .L388+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L362
	ldr	r5, .L388+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L363
	cmp	r4, #0
	beq	.L385
.L367:
	cmp	r3, r2
	beq	.L365
.L366:
	ldr	r2, .L388+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L377
	adds	r3, r3, #1
	b	.L387
.L363:
	cmp	r4, #0
	beq	.L367
.L385:
	cmp	r3, r1
	bne	.L366
.L365:
	movs	r3, #0
.L387:
	strb	r3, [r5]
.L377:
	cmp	r6, #0
	bne	.L375
	b	.L369
.L362:
	cmp	r6, #0
	beq	.L369
	ldr	r5, .L388+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L370
	cmp	r4, #0
	beq	.L381
.L383:
	cmp	r3, r2
	beq	.L372
.L375:
	movs	r2, r0
	ldr	r1, .L388+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L373
.L369:
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
	ldr	r3, .L388+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L370:
	cmp	r4, #0
	beq	.L383
.L381:
	cmp	r3, r1
	bne	.L375
.L372:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L369
.L373:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L369
.L389:
	.align	2
.L388:
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
	ldr	r3, .L424
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L390
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L390
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L424+4
	cmp	r4, #3
	bne	.L394
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L390
	movs	r3, #17
	ldr	r2, .L424+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L390
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L424+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	adds	r0, r0, r3
	ldr	r3, .L424+16
	bl	.L25
	movs	r2, #17
	movs	r3, #0
	ldrsb	r2, [r5, r2]
	ldrsb	r3, [r7, r3]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L424+20
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r7, .L424+24
	movs	r0, r5
	bl	.L426
	ldr	r3, .L424+28
	bl	.L25
	ldr	r3, .L424+32
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
	bl	.L426
	lsls	r3, r0, #3
	ldr	r0, .L424+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L423:
	lsls	r1, r2, #23
	bpl	.L397
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L397:
	lsls	r3, r2, #7
	bpl	.L396
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L396:
	str	r4, [r5, #60]
.L390:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L394:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L390
	movs	r0, #17
	ldr	r3, .L424+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L390
	ldr	r3, .L424+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L424+40
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L424+44
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r6, .L424+24
	movs	r0, r5
	bl	.L117
	ldr	r3, .L424+28
	bl	.L25
	ldr	r3, .L424+32
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
	bl	.L117
	lsls	r3, r0, #3
	ldr	r0, .L424+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L423
.L425:
	.align	2
.L424:
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
	bhi	.L428
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L429
	bl	.L25
.L428:
	@ sp needed
	movs	r0, #0
	ldrh	r6, [r4, #44]
	ldr	r3, .L429+4
	ldr	r5, .L429+8
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	ldr	r7, [r4, #52]
	ldrh	r3, [r7, #4]
	adds	r0, r0, r3
	strh	r0, [r7, #4]
	movs	r0, #0
	ldr	r3, .L429+12
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	ldrh	r3, [r7, #6]
	adds	r0, r0, r3
	strh	r0, [r7, #6]
	movs	r0, #0
	ldr	r3, .L429+16
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
	ldr	r3, .L429+20
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
.L430:
	.align	2
.L429:
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
	ldr	r3, .L438
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L438+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L438+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L431
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L431
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L431
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L438+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	rsbs	r3, r3, #0
	movs	r0, r6
	ldr	r1, [sp, #12]
	ldr	r6, .L438+16
	bl	.L117
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	movs	r2, r5
	ldr	r3, .L438+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r2, #80
	lsls	r3, r3, #4
	strh	r3, [r2]
	ldr	r3, .L438+24
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	strh	r3, [r2, #2]
	movs	r2, r0
	ldr	r3, .L438+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r2, r2, #80
	strh	r3, [r2]
	ldr	r3, .L438+32
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r0, r0, #82
	strh	r3, [r0]
.L431:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L439:
	.align	2
.L438:
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
	ldr	r4, .L444
.L442:
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L441
	movs	r1, r7
	movs	r0, r4
	bl	.L117
.L441:
	ldr	r3, .L444+4
	adds	r4, r4, #108
	cmp	r4, r3
	bne	.L442
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L445:
	.align	2
.L444:
	.word	gProcStatePool
	.word	gProcStatePool+6912
	.size	PAU_ForEachProcExt, .-PAU_ForEachProcExt
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
	ldr	r3, .L455
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L447
	movs	r5, #255
	ldr	r3, .L455+4
	ldr	r3, [r3, #80]
	subs	r3, r3, #8
	ldr	r2, .L455+8
	ldrb	r0, [r3, #4]
	ands	r2, r5
	cmp	r0, r2
	bne	.L448
	ldr	r0, .L455+12
	ldr	r3, .L455+16
	adds	r0, r0, #32
	bl	.L25
.L454:
	adds	r0, r0, #41
	strb	r4, [r0]
	movs	r4, #0
.L449:
	@ sp needed
	movs	r0, r4
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L448:
	ldr	r3, .L455+20
	ands	r3, r5
	cmp	r0, r3
	bne	.L447
	ldr	r0, .L455+12
	ldr	r3, .L455+16
	adds	r0, r0, #32
	bl	.L25
	movs	r3, #2
	orrs	r4, r3
	b	.L454
.L447:
	cmp	r4, #0
	beq	.L450
	ldr	r3, .L455+24
	bl	.L25
	movs	r4, #1
	b	.L449
.L450:
	movs	r0, r1
	ldr	r3, .L455+28
	bl	.L25
	b	.L449
.L456:
	.align	2
.L455:
	.word	PAU_showBothMapSprites
	.word	gMapAnimData
	.word	DualStrikeID
	.word	.LANCHOR1
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
	ldr	r3, .L458
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L458+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L458+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L458+12
	ldr	r3, .L458+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L459:
	.align	2
.L458:
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
	ldr	r3, .L464
	movs	r5, r1
	bl	.L25
	ldr	r3, .L464+4
	bl	.L25
	cmp	r0, #39
	bhi	.L461
	ldr	r3, .L464+8
.L463:
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
.L461:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L463
.L465:
	.align	2
.L464:
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
	ldr	r1, .L483
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L483+4
	movs	r2, #14
	adds	r1, r1, #72
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L483+8
	ldr	r3, .L483+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L483+16
	bl	.L25
	ldr	r3, .L483+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L467
	ldr	r3, .L483+24
	str	r3, [sp, #4]
.L467:
	movs	r7, #0
	ldr	r3, .L483+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L472:
	movs	r0, r5
	ldr	r3, .L483+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L483+36
	bl	.L25
	ldr	r3, .L483+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L483+44
	bl	.L25
	cmp	r7, #6
	bne	.L468
	ldr	r6, .L483+48
	ldr	r0, [sp, #8]
	bl	.L117
	ldr	r3, .L483+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L117
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L469
	adds	r3, r0, #0
.L469:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L470:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L474
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L475
	cmp	r4, #0
	blt	.L476
	movs	r2, #21
	cmp	r4, #0
	beq	.L477
	movs	r6, #4
	cmp	r4, #9
	ble	.L481
	cmp	r4, #99
	ble	.L479
.L482:
	movs	r0, #5
.L471:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L483+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L483+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L483+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L472
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L468:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L470
.L474:
	movs	r2, #20
	movs	r6, #3
	b	.L482
.L475:
	movs	r2, #20
	movs	r6, #3
.L479:
	movs	r0, #6
	b	.L471
.L476:
	movs	r2, #20
	movs	r6, #3
.L481:
	movs	r0, #7
	b	.L471
.L477:
	movs	r6, r4
	b	.L481
.L484:
	.align	2
.L483:
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
	ldr	r5, .L488
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L488+4
	adds	r0, r0, #88
	bl	.L25
	ldr	r3, .L488+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L488+12
	adds	r0, r0, #44
	bl	.L426
	movs	r6, #52
.L486:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L426
	cmp	r6, #108
	bne	.L486
	ldr	r0, .L488+16
	lsls	r0, r0, #16
	ldr	r3, .L488+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L488+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L488+28
	movs	r2, #12
	adds	r1, r1, #112
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L488+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L488+36
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L489:
	.align	2
.L488:
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
	ldr	r3, .L495
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L495+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L495+8
	movs	r5, r0
	bl	.L25
	movs	r6, r0
	ldr	r3, .L495+12
	bl	.L25
	ldr	r7, .L495+16
	ldr	r0, .L495+20
	movs	r1, r7
	ldr	r3, .L495+24
	bl	.L25
	ldr	r0, .L495+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L495+32
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L495+36
	adds	r0, r0, #44
	bl	.L25
	movs	r2, r5
	ldr	r0, [r4, #60]
	movs	r1, r6
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L495+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L495+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L495+48
	movs	r0, r7
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r7, .L495+52
	lsls	r1, r6, #1
	adds	r1, r1, #70
	ldr	r3, .L495+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L495+60
	ldr	r3, .L495+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L495+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L491
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L495+72
	lsrs	r4, r4, #16
.L492:
	ldr	r5, [sp, #4]
	adds	r5, r5, #84
	adds	r5, r7, r5
	movs	r2, #0
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L495+76
	bl	.L25
	movs	r2, #128
	movs	r1, r4
	lsls	r2, r2, #7
	movs	r0, r5
	ldr	r3, .L495+76
	bl	.L25
	ldr	r3, .L495+80
	movs	r0, r6
	bl	.L25
	movs	r2, #0
	ldr	r3, .L495+84
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r4, r0, #2
	adds	r3, r7, r3
	adds	r0, r0, #3
.L493:
	cmp	r1, r2
	bgt	.L494
	@ sp needed
	movs	r0, #3
	ldr	r3, .L495+88
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L491:
	ldr	r4, .L495+92
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L495+96
	lsrs	r4, r4, #16
	b	.L492
.L494:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L493
.L496:
	.align	2
.L495:
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
	.word	1539
	.word	DrawIcon
	.word	GetIconTileIndex
	.word	PAU_gaugeSize
	.word	EnableBgSyncByMask
	.word	DualGuardID
	.word	1540
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
	ldr	r3, .L498
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L498+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L498+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L498+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L498+16
	ldr	r3, .L498+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L499:
	.align	2
.L498:
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
	ldr	r0, .L501
	ldr	r3, .L501+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L501+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L502:
	.align	2
.L501:
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
	ldr	r6, .L511
	ldr	r5, .L511+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L511+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L511+12
	ldrsb	r0, [r5, r0]
	bl	.L117
	movs	r6, r0
	ldr	r3, .L511+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L511+20
	bl	.L117
	ldr	r3, .L511+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L506
	ldr	r0, .L511+28
	ldr	r3, .L511+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L506
	ldr	r0, .L511+36
	ldr	r3, .L511+40
	adds	r0, r0, #124
	bl	.L25
.L506:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L511+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L511+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L512:
	.align	2
.L511:
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
	ldr	r3, .L515
	ldrb	r2, [r3, #17]
	ldr	r3, .L515+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L513
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L513:
	@ sp needed
	bx	lr
.L516:
	.align	2
.L515:
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
	ldr	r4, .L525
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L518
	ldr	r1, .L525+4
	lsls	r1, r1, #24
	ldr	r5, .L525+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L519
.L521:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L525+12
	bl	.L25
	cmp	r0, #0
	beq	.L518
	movs	r0, #1
.L520:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L519:
	ldr	r1, .L525+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L521
.L518:
	movs	r0, #3
	b	.L520
.L526:
	.align	2
.L525:
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
	ldr	r3, .L528
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L528+4
	ldr	r3, .L528+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L529:
	.align	2
.L528:
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
	beq	.L531
	movs	r3, #128
	strh	r3, [r4]
.L531:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L535
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
	ldr	r3, .L535+4
	bl	.L25
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L536:
	.align	2
.L535:
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
	ldr	r3, .L538
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L538+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L538+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L539:
	.align	2
.L538:
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
	bge	.L541
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L540:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L541:
	ldr	r3, .L543
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
	b	.L540
.L544:
	.align	2
.L543:
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
	ldr	r3, .L552
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
.L546:
	ldr	r3, .L552+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L550
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L550:
	cmp	r4, #0
	beq	.L551
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L547:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L548
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L549:
	adds	r5, r5, #1
	b	.L546
.L551:
	movs	r7, #1
	b	.L547
.L548:
	movs	r2, r6
	ldr	r3, .L552+8
	bl	.L25
	b	.L549
.L553:
	.align	2
.L552:
	.word	100925440
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
	beq	.L554
	bl	PAU_forecastDrawGaugeIcons.part.0
.L554:
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
	ldr	r0, .L587
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L587+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L587+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB5311
	b	.L560	@long jump
.LCB5311:
	cmp	r0, #0
	bne	.LCB5313
	b	.L561	@long jump
.LCB5313:
	ldr	r1, .L587+12
	ldr	r0, .L587+16
	bl	.L25
	movs	r1, #12
.L585:
	movs	r3, #1
	str	r3, [sp, #4]
.L562:
	ldr	r6, .L587+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L587+24
	bl	.L426
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L587
	ldr	r3, .L587+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L564
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L564:
	movs	r3, #159
	ldr	r4, .L587+4
	lsls	r3, r3, #2
	ldr	r6, .L587+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L587+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L565
	ldr	r3, .L587+32
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
.L565:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L587+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB5394
	b	.L566	@long jump
.LCB5394:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB5401
	b	.L566	@long jump
.LCB5401:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L567:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L587+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L587+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L569
	movs	r2, #255
.L569:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L587+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L587+4
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
	ldr	r3, .L587
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L587
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L587+44
	bl	.L117
	movs	r4, #255
	cmp	r0, #181
	beq	.L571
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L571:
	ldr	r3, .L587
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L587
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L117
	movs	r6, #255
	cmp	r0, #181
	beq	.L573
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L573:
	movs	r0, r7
	ldr	r3, .L587
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L587+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L575
	movs	r2, #255
.L575:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L587+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L587+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L587
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L587+48
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
	ldr	r4, .L587+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L587+56
	adds	r1, r1, r5
	ldr	r0, .L587+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L587+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L587+68
	bl	.L20
	ldr	r3, .L587+4
	adds	r3, r3, #74
	ldr	r6, .L587+72
	ldrh	r0, [r3]
	bl	.L117
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L587+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L587
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L117
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
.L561:
	ldr	r1, .L587+80
	ldr	r0, .L587+16
	bl	.L25
	movs	r1, #11
.L586:
	str	r5, [sp, #4]
	b	.L562
.L560:
	cmp	r0, #0
	beq	.L563
	ldr	r1, .L587+84
	ldr	r0, .L587+16
	bl	.L25
	movs	r1, #11
	b	.L585
.L563:
	ldr	r1, .L587+88
	ldr	r0, .L587+16
	bl	.L25
	movs	r1, #10
	b	.L586
.L566:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L587
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L567
.L588:
	.align	2
.L587:
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
	ldr	r7, .L610
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L610+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB5681
	b	.L590	@long jump
.LCB5681:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB5685
	b	.L591	@long jump
.LCB5685:
	ldr	r1, .L610+8
	ldr	r0, .L610+12
	ldr	r3, .L610+16
	bl	.L25
	movs	r1, #12
.L609:
	movs	r3, #1
.L607:
	ldr	r6, .L610+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L610+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L610
	ldr	r3, .L610+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L594
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L594:
	movs	r3, #223
	ldr	r5, .L610+4
	ldr	r6, .L610+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L610+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L595
	ldr	r3, .L610+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L610+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L595:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L610+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L596
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L596
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
.L596:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L610+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L610+44
	cmp	r2, #99
	bls	.L597
	movs	r2, #255
.L597:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L610+4
	ldr	r6, .L610+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L610+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L610+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L610+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L610+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L610+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L610+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L610+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L610
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L599
	movs	r2, #255
.L599:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L610+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L610+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L117
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L117
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L610+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L117
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L610+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L117
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L610+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L117
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L610+68
	bl	.L117
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L610+72
	adds	r1, r1, r5
	ldr	r0, .L610+76
	bl	.L117
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L610+80
	bl	.L117
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L610+84
	bl	.L117
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L610+88
	bl	.L117
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L610+92
	bl	.L117
	ldr	r3, .L610+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L610+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L610+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L117
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L610+96
	bl	.L25
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L117
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L591:
	ldr	r1, .L610+104
	ldr	r0, .L610+12
	ldr	r3, .L610+16
	bl	.L25
	movs	r1, #11
.L608:
	ldr	r3, [sp]
	b	.L607
.L590:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L593
	ldr	r1, .L610+108
	ldr	r0, .L610+12
	ldr	r3, .L610+16
	bl	.L25
	movs	r1, #11
	b	.L609
.L593:
	ldr	r1, .L610+112
	ldr	r0, .L610+12
	ldr	r3, .L610+16
	bl	.L25
	movs	r1, #10
	b	.L608
.L611:
	.align	2
.L610:
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
	beq	.L613
	cmp	r3, #2
	beq	.L614
.L612:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L613:
	ldr	r3, .L616
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L612
.L614:
	ldr	r3, .L616
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L612
.L617:
	.align	2
.L616:
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
	ldr	r3, .L621
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
	blt	.L619
	adds	r3, r3, #20
.L619:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L621+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L622:
	.align	2
.L621:
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
	beq	.L624
	adds	r6, r6, #4
.L624:
	ldr	r0, .L633
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L633+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L633+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L627
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L633+12
	ldr	r5, .L633+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L633+20
	ldr	r0, .L633+24
	bl	.L16
.L628:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L633+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L627:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L633+12
	ldr	r7, .L633+16
	bl	.L426
	ldr	r1, .L633+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L633+24
	adds	r1, r5, r1
	bl	.L426
	b	.L628
.L634:
	.align	2
.L633:
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
	ldr	r7, .L651
	ldr	r6, .L651+4
	cmp	r3, #127
	bhi	.L636
.L638:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L637:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L639
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L639:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L642
	beq	.L643
	movs	r2, #2
.L642:
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
	ldr	r3, .L651+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L643:
	cmp	r7, #0
	beq	.L635
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
	ldr	r3, .L651+8
	adds	r0, r0, #19
	bl	.L25
.L635:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L636:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L637
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L638
	movs	r5, r0
	b	.L637
.L652:
	.align	2
.L651:
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
	bls	.L654
	ldr	r0, .L661
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L655
.L654:
	ldr	r0, .L661+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L655:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L661+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L661+12
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
	ble	.L656
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L661+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L661+20
	ldr	r7, .L661+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L426
.L656:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L653
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L661+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L661+20
	ldr	r4, .L661+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L653:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L662:
	.align	2
.L661:
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
	beq	.L664
	ldr	r3, .L674
	bl	.L25
	cmp	r0, #0
	beq	.L665
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L665
	movs	r0, r4
	ldr	r3, .L674+4
.L673:
	bl	.L25
.L663:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L665:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L674+8
	bl	.L25
.L664:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L663
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L674+12
	b	.L673
.L675:
	.align	2
.L674:
	.word	GetBattleForecastPanelSide
	.word	BreakProcLoop
	.word	InitBattleForecastFramePalettes
	.word	UpdateBattleForecastEffectivenessPalettes
	.size	PAU_forecastLoopDisplay, .-PAU_forecastLoopDisplay
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
	ldr	r3, .L678
	movs	r6, r0
	movs	r5, #1
	bl	.L25
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L677
	ldr	r3, .L678+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L678+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L677
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L677:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L679:
	.align	2
.L678:
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
	bne	.L681
.L690:
	movs	r0, #0
.L682:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L681:
	ldr	r7, .L706
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L683:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L690
	cmp	r6, #0
	beq	.L684
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L684
	ldr	r3, .L706+4
	ldr	r2, .L706+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L684
	ldr	r2, .L706+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L704:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L705:
	bl	PAU_setBattleGauge
.L685:
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
	ldr	r3, .L706+16
	bl	.L25
	cmp	r0, #0
	bne	.L691
	adds	r6, r6, #1
	b	.L683
.L684:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L686
	ldr	r3, .L706+4
	ldr	r2, .L706+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L686
	ldr	r2, .L706+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L704
.L686:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L687
.L688:
	ldr	r3, .L706+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L705
.L687:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L688
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L688
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L685
	b	.L688
.L691:
	movs	r0, #1
	b	.L682
.L707:
	.align	2
.L706:
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
.L710:
	lsls	r0, r4, #24
	ldr	r3, .L718
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L709
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L709
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L718+4
	bl	.L25
.L709:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L710
	ldr	r3, .L718+8
	@ sp needed
	bl	.L25
	ldr	r3, .L718+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L719:
	.align	2
.L718:
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
	bhi	.L721
	ldr	r3, .L723
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L723+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L722
	adds	r2, r4, #0
.L722:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L721:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L724:
	.align	2
.L723:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC438:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC439:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_swapMapSpriteProcInstr
.LC440:
	.ascii	"PAU_SwapMapSpriteProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC441:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC442:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC443:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC444:
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
	.word	.LC444
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
	.word	.LC443
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
	.type	PAU_swapMapSpriteProcInstr, %object
	.size	PAU_swapMapSpriteProcInstr, 40
PAU_swapMapSpriteProcInstr:
	.short	1
	.short	0
	.word	.LC440
	.short	14
	.short	0
	.word	0
	.short	2
	.short	0
	.word	PAU_swapMSInit
	.short	3
	.short	0
	.word	PAU_swapMSLoop
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
	.word	.LC439
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
	.word	.LC441
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
	.word	.LC438
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
	.type	PAU_bAnimGaugeProcInstr, %object
	.size	PAU_bAnimGaugeProcInstr, 64
PAU_bAnimGaugeProcInstr:
	.short	1
	.short	0
	.word	.LC442
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
.L117:
	bx	r6
.L426:
	bx	r7

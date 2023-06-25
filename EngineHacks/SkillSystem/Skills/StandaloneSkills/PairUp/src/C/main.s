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
	ldr	r4, .L14
	bl	.L16
	pop	{r4}
	pop	{r0}
	bx	r0
.L15:
	.align	2
.L14:
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
	ldr	r3, .L19
	ldr	r3, [r3]
	push	{r4, lr}
	cmp	r3, #0
	bne	.L17
	ldr	r3, .L19+4
	bl	.L21
.L17:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L20:
	.align	2
.L19:
	.word	bAnimCameraMoving
	.word	BreakProcLoop
	.size	PAU_waitUntilCameraStops, .-PAU_waitUntilCameraStops
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
	movs	r3, #1
	push	{r4, lr}
	strh	r3, [r0, #50]
	movs	r3, r0
	adds	r3, r3, #41
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	bne	.L23
	strh	r3, [r0, #50]
	ldr	r3, .L24
	ldr	r0, .L24+4
	bl	.L21
	movs	r2, #32
	ldr	r1, .L24+8
	ldr	r3, .L24+12
	bl	.L21
.L23:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4}
	pop	{r0}
	bx	r0
.L25:
	.align	2
.L24:
	.word	prGetMiscIconGfx
	.word	1541
	.word	100663840
	.word	CpuFastSet
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, r5, r6, r7, lr}
	adds	r3, r3, #41
	ldrb	r3, [r3]
	movs	r4, r0
	movs	r2, #1
	movs	r1, r3
	sub	sp, sp, #28
	cmp	r3, #0
	beq	.L27
	movs	r2, #0
	movs	r1, #1
.L27:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r5, .L49
	movs	r0, #1
	bl	.L51
	movs	r2, #50
	ldrsh	r3, [r4, r2]
	movs	r5, r0
	cmp	r3, r0
	bne	.L28
.L35:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcs	.L29
.L26:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L28:
	movs	r3, r4
	strh	r0, [r4, #50]
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L31
	ldr	r3, .L49+4
.L47:
	bl	.L21
	ldr	r3, .L49+8
	movs	r0, #1
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #46
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L33
.L39:
	movs	r3, r4
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L35
	lsls	r5, r5, #31
	asrs	r2, r5, #31
	str	r2, [sp, #12]
	movs	r2, r4
	ldr	r1, .L49+12
	ldrb	r1, [r1]
	adds	r2, r2, #49
	ldrb	r2, [r2]
	str	r1, [sp, #16]
	ldr	r1, .L49+16
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r5, r1
	ldr	r7, .L49+20
	lsrs	r3, r3, #16
.L40:
	ldr	r0, [sp, #16]
	cmp	r0, r1
	ble	.L35
	cmp	r2, #0
	beq	.L46
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L41:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp, #12]
	adds	r0, r5, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L40
.L31:
	ldr	r3, .L49+24
	b	.L47
.L33:
	lsls	r3, r5, #31
	asrs	r3, r3, #31
	str	r3, [sp, #12]
	movs	r3, r4
	ldr	r1, .L49+12
	ldrb	r1, [r1]
	adds	r3, r3, #48
	ldrb	r3, [r3]
	str	r1, [sp, #16]
	movs	r1, #240
	lsls	r2, r2, #17
	lsls	r1, r1, #12
	adds	r2, r2, r1
	lsrs	r2, r2, #16
	str	r2, [sp, #20]
	movs	r2, #0
	movs	r0, r2
	ldr	r7, .L49+28
.L36:
	ldr	r1, [sp, #16]
	cmp	r1, r2
	ble	.L39
	cmp	r3, #0
	beq	.L45
	subs	r3, r3, #1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
.L37:
	lsls	r1, r2, #6
	mov	ip, r1
	ldr	r1, [sp, #20]
	ldr	r6, [sp, #12]
	adds	r1, r0, r1
	ands	r1, r6
	mov	r6, ip
	adds	r2, r2, #1
	strh	r1, [r7, r6]
	b	.L36
.L45:
	movs	r0, #1
	b	.L37
.L46:
	movs	r5, #1
	b	.L41
.L29:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L43
	ldr	r3, .L49+4
.L48:
	bl	.L21
	b	.L26
.L43:
	ldr	r3, .L49+24
	b	.L48
.L50:
	.align	2
.L49:
	.word	GetValueFromEasingFunction
	.word	EndProc
	.word	EnableBgSyncByMask
	.word	PAU_gaugeSize
	.word	68091904
	.word	gBg0MapBuffer+506
	.word	BreakProcLoop
	.word	gBg0MapBuffer+448
	.size	PAU_bAnimGaugeAppearLoop, .-PAU_bAnimGaugeAppearLoop
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
	ldr	r5, .L67
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L67+4
	bl	.L21
	cmp	r0, #0
	beq	.L52
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L52
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L52
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L52
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L52
	ldr	r1, .L67+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L67+12
	lsrs	r1, r1, #24
	bl	.L51
	cmp	r0, #0
	beq	.L56
.L57:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L67+16
	bl	.L16
.L52:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L56:
	ldr	r1, .L67+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L51
	cmp	r0, #0
	bne	.L57
	b	.L52
.L68:
	.align	2
.L67:
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
	ldr	r3, .L70
	bl	.L21
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L70+4
	bl	.L16
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L71:
	.align	2
.L70:
	.word	GetUnit
	.word	PutUnitSpriteExt
	.size	PAU_infoWindowLoop, .-PAU_infoWindowLoop
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
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r4, r0
	movs	r6, #16
	cmp	r3, #1
	beq	.L73
	adds	r6, r6, #4
.L73:
	ldr	r7, .L80
	ldr	r5, .L80+4
	movs	r1, #0
	movs	r0, r7
	bl	.L51
	movs	r1, #0
	ldr	r0, .L80+8
	bl	.L51
	ldr	r3, .L80+12
	movs	r0, #3
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L80+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldrsb	r5, [r2, r3]
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L74
	movs	r0, #10
	subs	r0, r0, r5
	lsls	r3, r0, #1
	ldr	r0, .L80+20
	movs	r1, r7
	adds	r0, r3, r0
	movs	r2, r5
	str	r3, [sp, #4]
	ldr	r7, .L80+24
	movs	r3, r6
	bl	.L82
	ldr	r2, .L80+28
	mov	ip, r2
	ldr	r3, [sp, #4]
	add	r3, r3, ip
	movs	r0, r3
	movs	r2, r5
	movs	r3, r6
	ldr	r1, .L80+8
.L79:
	bl	.L82
	movs	r2, r4
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L76
	strb	r3, [r2]
.L72:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L74:
	movs	r1, #30
	subs	r1, r1, r5
	lsls	r3, r1, #1
	adds	r1, r3, r7
	movs	r2, r5
	str	r3, [sp, #4]
	ldr	r0, .L80+20
	movs	r3, r6
	ldr	r7, .L80+24
	bl	.L82
	ldr	r2, .L80+8
	mov	ip, r2
	ldr	r3, [sp, #4]
	add	r3, r3, ip
	movs	r1, r3
	movs	r2, r5
	movs	r3, r6
	ldr	r0, .L80+28
	b	.L79
.L76:
	movs	r3, #0
	movs	r0, r4
	strb	r3, [r2]
	ldr	r3, .L80+32
	bl	.L21
	b	.L72
.L81:
	.align	2
.L80:
	.word	gBg0MapBuffer
	.word	FillBgMap
	.word	gBg1MapBuffer
	.word	EnableBgSyncByMask
	.word	.LANCHOR0
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
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r4, r0
	movs	r6, #16
	cmp	r3, #1
	beq	.L84
	adds	r6, r6, #4
.L84:
	ldr	r7, .L91
	ldr	r5, .L91+4
	movs	r1, #0
	movs	r0, r7
	bl	.L51
	movs	r1, #0
	ldr	r0, .L91+8
	bl	.L51
	ldr	r3, .L91+12
	movs	r0, #3
	bl	.L21
	movs	r2, #54
	movs	r5, #4
	ldrsb	r2, [r4, r2]
	ldr	r3, .L91+16
	adds	r3, r3, r2
	ldrsb	r5, [r3, r5]
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L85
	movs	r0, #10
	subs	r0, r0, r5
	lsls	r3, r0, #1
	ldr	r0, .L91+20
	movs	r1, r7
	adds	r0, r3, r0
	movs	r2, r5
	str	r3, [sp, #4]
	ldr	r7, .L91+24
	movs	r3, r6
	bl	.L82
	ldr	r2, .L91+28
	mov	ip, r2
	ldr	r3, [sp, #4]
	add	r3, r3, ip
	movs	r0, r3
	movs	r2, r5
	movs	r3, r6
	ldr	r1, .L91+8
.L90:
	bl	.L82
	movs	r2, r4
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L87
	strb	r3, [r2]
.L83:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L85:
	movs	r1, #30
	subs	r1, r1, r5
	lsls	r3, r1, #1
	adds	r1, r3, r7
	movs	r2, r5
	str	r3, [sp, #4]
	ldr	r0, .L91+20
	movs	r3, r6
	ldr	r7, .L91+24
	bl	.L82
	ldr	r2, .L91+8
	mov	ip, r2
	ldr	r3, [sp, #4]
	add	r3, r3, ip
	movs	r1, r3
	movs	r2, r5
	movs	r3, r6
	ldr	r0, .L91+28
	b	.L90
.L87:
	movs	r3, #0
	movs	r0, r4
	strb	r3, [r2]
	ldr	r3, .L91+32
	bl	.L21
	b	.L83
.L92:
	.align	2
.L91:
	.word	gBg0MapBuffer
	.word	FillBgMap
	.word	gBg1MapBuffer
	.word	EnableBgSyncByMask
	.word	.LANCHOR0
	.word	gpStatScreenPageBg0Map
	.word	BgMapCopyRect
	.word	33571372
	.word	BreakProcLoop
	.size	PAU_forecastLoopSlideOut, .-PAU_forecastLoopSlideOut
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
	ldr	r3, .L94
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L95:
	.align	2
.L94:
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
	ldr	r3, .L97
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L98:
	.align	2
.L97:
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
	ldr	r3, .L100
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L101:
	.align	2
.L100:
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
	beq	.L103
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L103
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L103
	ldr	r4, .L118
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L118+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L104
	movs	r1, r4
	movs	r0, r5
	bl	.L120
	ldr	r1, .L118+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L120
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L103
.L105:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L104:
	ldr	r3, .L118+12
	movs	r0, r7
	bl	.L21
	movs	r1, r4
	movs	r5, r0
	bl	.L120
	movs	r2, #1
	cmp	r0, #0
	bne	.L105
	ldr	r1, .L118+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L120
	movs	r2, #2
	cmp	r0, #0
	bne	.L105
.L103:
	movs	r2, #0
	b	.L105
.L119:
	.align	2
.L118:
	.word	DualStrikeID
	.word	SkillTester
	.word	DualGuardID
	.word	GetUnit
	.size	PAU_isPairedUp, .-PAU_isPairedUp
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
	ldr	r3, .L122
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L123:
	.align	2
.L122:
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
	ldr	r1, .L125
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
.L126:
	.align	2
.L125:
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
	ldr	r3, .L128
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L129:
	.align	2
.L128:
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
	ldr	r3, .L132
	ldr	r1, [r3]
	ldr	r3, .L132+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L131
	adds	r3, r0, #0
.L131:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L133:
	.align	2
.L132:
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
	ldr	r3, .L158
	sub	sp, sp, #20
	movs	r5, r0
	movs	r4, r1
	bl	.L21
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #4]
	movs	r3, #255
	ands	r3, r0
	movs	r0, r3
	str	r3, [sp, #12]
	ldr	r3, .L158+4
	bl	.L21
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L148:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1080
	b	.L136	@long jump
.LCB1080:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L137
	cmp	r2, #0
	bne	.L138
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L139
	ldr	r3, .L158+8
	movs	r0, r1
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L140
	ldr	r3, .L158+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L140:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L147
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L157:
	ldr	r3, .L158+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L147:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L155:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L138:
	cmp	r2, #1
	bne	.L139
	cmp	r3, #0
	bne	.L139
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L139
	ldr	r3, .L158+8
	ldr	r0, [sp, #4]
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L143
	ldr	r3, .L158+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L143:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L144
	ldr	r3, .L158+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L144:
	ldrh	r3, [r6, #2]
.L139:
	adds	r6, r6, #4
	b	.L148
.L137:
	cmp	r2, #0
	bne	.L145
	ldr	r3, .L158+8
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L146
	ldr	r3, .L158+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L146:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L147
	ldrb	r0, [r6]
	ldr	r3, .L158+4
	bl	.L21
	b	.L157
.L145:
	cmp	r2, #1
	bne	.L139
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L139
	cmp	r0, #9
	beq	.L139
	b	.L157
.L136:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L155
.L159:
	.align	2
.L158:
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
	beq	.L160
	movs	r3, #0
	ldr	r4, .L172
	str	r3, [sp]
	movs	r3, r2
	bl	.L16
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L162
	cmp	r7, #0
	bne	.L163
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L172+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L120
	ldr	r3, .L172+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L170:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L171
.L162:
	cmp	r7, #0
	bne	.L165
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L172+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L120
	ldr	r3, .L172+8
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
.L171:
	movs	r0, #0
	bl	.L120
.L169:
	ldr	r3, .L172+12
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
	ldr	r3, .L172+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L172+20
	bl	.L21
.L160:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L163:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L172+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L120
	ldr	r3, .L172+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L170
.L165:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L172+4
	movs	r0, r6
	bl	.L16
	ldr	r3, .L172+8
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
	ldr	r5, .L172+4
	asrs	r4, r4, #16
	bl	.L51
	b	.L169
.L173:
	.align	2
.L172:
	.word	AffineSetOAMData
	.word	GetValueFromEasingFunction
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.word	-31104
	.word	DisplayAIS
	.size	PAU_scalePairUpPartner, .-PAU_scalePairUpPartner
	.global	__aeabi_idiv
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
	bne	.LCB1425
	b	.L174	@long jump
.LCB1425:
	ldrb	r0, [r5, #27]
	ldr	r3, .L199
	bl	.L21
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L199+4
	ldr	r2, .L199+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1445
	b	.L174	@long jump
.LCB1445:
	ldr	r0, .L199+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1451
	b	.L174	@long jump
.LCB1451:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L199+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L199+20
	cmp	r2, #255
	beq	.L176
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L176:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L199+24
	str	r2, [sp, #20]
	bl	.L21
	ldr	r3, .L199+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L177
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L177:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L199+32
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
	beq	.L178
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L178:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L199+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L199+20
	cmp	r3, #255
	beq	.L179
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L179:
	ldr	r3, .L199+24
	bl	.L21
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L199+32
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
	ldr	r3, .L199+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L199+40
	bl	.L21
	movs	r4, r0
	cmp	r0, r6
	bne	.L180
	ldr	r3, .L199+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L21
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L199+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L199+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L199+56
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
.L180:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L199+60
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
	beq	.L181
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
	ldr	r3, .L199+64
	bl	.L21
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L198:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L199+68
	bl	.L21
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L199+72
	bl	.L21
	adds	r4, r4, #84
	strh	r0, [r4]
.L174:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L181:
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
	ldr	r3, .L199+64
	bl	.L21
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L198
.L200:
	.align	2
.L199:
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
	ldr	r7, .L212
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L212+4
	adds	r0, r0, #8
	bl	.L21
	subs	r4, r0, #0
	bne	.L202
	movs	r0, r5
	ldr	r3, .L212+8
	bl	.L21
.L201:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L202:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L212+12
	bl	.L21
	ldr	r3, .L212+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L212+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L204
	ldr	r3, .L212+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L204
	ldr	r3, .L212+28
	movs	r0, r5
	bl	.L21
	movs	r1, #1
	ldr	r3, .L212+32
	rsbs	r1, r1, #0
	bl	.L21
	movs	r0, r7
	ldr	r3, .L212+36
	movs	r1, r4
	adds	r0, r0, #56
	bl	.L21
	movs	r3, #1
	ldr	r2, [sp, #4]
	lsls	r3, r3, r2
	movs	r2, r0
	adds	r2, r2, #41
	strb	r3, [r2]
	strh	r6, [r0, #42]
	ldrh	r3, [r5, #2]
	strh	r3, [r0, #44]
.L205:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L212+40
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
	b	.L201
.L204:
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
	beq	.L205
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L212+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L51
	b	.L205
.L213:
	.align	2
.L212:
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
	ldr	r6, .L225
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L225+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L21
	subs	r5, r0, #0
	bne	.L215
	movs	r0, r4
	ldr	r3, .L225+8
	bl	.L21
.L214:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L215:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L225+12
	bl	.L21
	movs	r7, r5
	ldr	r3, .L225+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L225+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L217
	ldr	r3, .L225+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L217
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L225+28
	rsbs	r1, r1, #0
	bl	.L21
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L225+32
	adds	r0, r0, #56
	bl	.L21
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
	ldr	r3, .L225+36
	movs	r0, r4
	bl	.L21
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L218:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L225+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L225+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L214
.L217:
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
	beq	.L218
	ldr	r3, .L225+36
	movs	r0, r4
	bl	.L21
	movs	r1, #128
	movs	r3, #2
	ldrsh	r2, [r0, r3]
	ldr	r3, [sp, #8]
	lsls	r0, r3, #16
	lsrs	r0, r0, #16
	movs	r3, r6
	lsls	r1, r1, #1
	ldr	r6, .L225+48
	bl	.L120
	b	.L218
.L226:
	.align	2
.L225:
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
	ldr	r5, .L238
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L238+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L238+8
	bl	.L21
	cmp	r0, #0
	beq	.L227
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L230
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L230:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L227
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L227:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L239:
	.align	2
.L238:
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
	ldr	r3, .L276
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L241
	ldr	r2, .L276+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L242
.L272:
	ldrb	r0, [r5, #27]
	ldr	r3, .L276+8
	bl	.L21
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L242
.L241:
	ldr	r2, .L276+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L272
.L242:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L243
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
	ldr	r3, .L276+16
	bl	.L21
.L243:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2243
	b	.L244	@long jump
.LCB2243:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L276+20
	bl	.L51
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L245
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
	ldr	r3, .L276+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L276+28
	bl	.L51
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L276+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L51
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L275:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L276+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L51
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L276+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L51
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L240:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L245:
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
	ldr	r3, .L276+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L276+28
	bl	.L51
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #78
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L276+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L51
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L275
.L244:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L276+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L276+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L276+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L276+48
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
	beq	.L247
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L248
.L273:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L248
.L247:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L273
.L248:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L249
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L276+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L250
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2491
	b	.L251	@long jump
.LCB2491:
	lsls	r3, r3, #28
	bmi	.LCB2497
	b	.L252	@long jump
.LCB2497:
.L250:
	movs	r0, r7
	ldr	r3, .L276+56
	bl	.L21
	ldr	r3, .L276+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L276+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2516
	b	.L254	@long jump
.LCB2516:
	ldr	r3, .L276+60
	movs	r0, r7
	bl	.L21
	ldr	r3, .L276+64
	bl	.L21
	cmp	r0, #0
	bne	.LCB2524
	b	.L254	@long jump
.LCB2524:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L276+68
	rsbs	r1, r1, #0
	bl	.L21
	ldr	r0, .L276+72
	movs	r1, r4
	ldr	r3, .L276+76
	adds	r0, r0, #56
	bl	.L21
	movs	r1, #1
	ldr	r3, .L276+80
	bl	.L21
.L249:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L276+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L276+88
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
	beq	.L255
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
.L274:
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
	b	.L240
.L251:
	lsls	r3, r3, #30
	bpl	.LCB2624
	b	.L250	@long jump
.LCB2624:
.L252:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L253
	movs	r1, r3
.L253:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2640
	b	.L250	@long jump
.LCB2640:
	movs	r5, r3
	b	.L250
.L277:
	.align	2
.L276:
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
.L254:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L278
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L278+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L278+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L249
.L255:
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
	b	.L274
.L279:
	.align	2
.L278:
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
	beq	.L281
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L282
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L281:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L280
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L285
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L280:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L282:
	ldr	r2, .L293
	ldrh	r5, [r2]
	ldr	r2, .L293+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L283
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L281
.L283:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L281
.L285:
	ldr	r3, .L293
	ldr	r1, .L293+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L286
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L280
.L286:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L280
.L294:
	.align	2
.L293:
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.size	PAU_adjustBAnimLocs, .-PAU_adjustBAnimLocs
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
	ldr	r3, .L322
	ldr	r2, .L322+4
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
	ldr	r5, .L322+8
	ldr	r2, .L322+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L296
	ldr	r5, .L322+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L297
	cmp	r4, #0
	beq	.L319
.L301:
	cmp	r3, r2
	beq	.L299
.L300:
	ldr	r2, .L322+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L311
	adds	r3, r3, #1
	b	.L321
.L297:
	cmp	r4, #0
	beq	.L301
.L319:
	cmp	r3, r1
	bne	.L300
.L299:
	movs	r3, #0
.L321:
	strb	r3, [r5]
.L311:
	cmp	r6, #0
	bne	.L309
	b	.L303
.L296:
	cmp	r6, #0
	beq	.L303
	ldr	r5, .L322+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L304
	cmp	r4, #0
	beq	.L315
.L317:
	cmp	r3, r2
	beq	.L306
.L309:
	movs	r2, r0
	ldr	r1, .L322+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L307
.L303:
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
	ldr	r3, .L322+28
	bl	.L21
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L304:
	cmp	r4, #0
	beq	.L317
.L315:
	cmp	r3, r1
	bne	.L309
.L306:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L303
.L307:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L303
.L323:
	.align	2
.L322:
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
	ldr	r3, .L325
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L325+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L325+8
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L325+12
	ldr	r3, .L325+16
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L326:
	.align	2
.L325:
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
	ldr	r3, .L331
	movs	r5, r1
	bl	.L21
	ldr	r3, .L331+4
	bl	.L21
	cmp	r0, #39
	bhi	.L328
	ldr	r3, .L331+8
.L330:
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
.L328:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L330
.L332:
	.align	2
.L331:
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
	ldr	r1, .L350
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L350+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L21
	ldr	r1, .L350+8
	ldr	r3, .L350+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L350+16
	bl	.L21
	ldr	r3, .L350+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L334
	ldr	r3, .L350+24
	str	r3, [sp, #4]
.L334:
	movs	r7, #0
	ldr	r3, .L350+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L339:
	movs	r0, r5
	ldr	r3, .L350+32
	bl	.L21
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L350+36
	bl	.L21
	ldr	r3, .L350+40
	movs	r1, r0
	movs	r0, r5
	bl	.L21
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L350+44
	bl	.L21
	cmp	r7, #6
	bne	.L335
	ldr	r6, .L350+48
	ldr	r0, [sp, #8]
	bl	.L120
	ldr	r3, .L350+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L120
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L336
	adds	r3, r0, #0
.L336:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L337:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L341
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L342
	cmp	r4, #0
	blt	.L343
	movs	r2, #21
	cmp	r4, #0
	beq	.L344
	movs	r6, #4
	cmp	r4, #9
	ble	.L348
	cmp	r4, #99
	ble	.L346
.L349:
	movs	r0, #5
.L338:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L350+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L350+52
	bl	.L21
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L350+56
	bl	.L16
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L339
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L335:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L337
.L341:
	movs	r2, #20
	movs	r6, #3
	b	.L349
.L342:
	movs	r2, #20
	movs	r6, #3
.L346:
	movs	r0, #6
	b	.L338
.L343:
	movs	r2, #20
	movs	r6, #3
.L348:
	movs	r0, #7
	b	.L338
.L344:
	movs	r6, r4
	b	.L348
.L351:
	.align	2
.L350:
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
	ldr	r5, .L355
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L355+4
	adds	r0, r0, #48
	bl	.L21
	ldr	r3, .L355+8
	str	r0, [r4, #60]
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L355+12
	adds	r0, r0, #44
	bl	.L82
	movs	r6, #52
.L353:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L82
	cmp	r6, #108
	bne	.L353
	ldr	r0, .L355+16
	lsls	r0, r0, #16
	ldr	r3, .L355+20
	lsrs	r0, r0, #16
	bl	.L21
	ldr	r3, .L355+24
	movs	r1, r0
	movs	r0, r4
	bl	.L21
	movs	r1, r5
	ldr	r3, .L355+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L21
	ldr	r4, .L355+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L16
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L355+36
	bl	.L16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L356:
	.align	2
.L355:
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
	ldr	r3, .L362
	bl	.L21
	ldrb	r0, [r5, #2]
	ldr	r3, .L362+4
	bl	.L21
	movs	r1, #13
	ldr	r3, .L362+8
	movs	r5, r0
	bl	.L21
	movs	r6, r0
	ldr	r3, .L362+12
	bl	.L21
	ldr	r7, .L362+16
	ldr	r0, .L362+20
	movs	r1, r7
	ldr	r3, .L362+24
	bl	.L21
	ldr	r0, .L362+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L362+32
	bl	.L21
	ldr	r0, [r4, #60]
	ldr	r3, .L362+36
	adds	r0, r0, #44
	bl	.L21
	movs	r2, r5
	ldr	r0, [r4, #60]
	movs	r1, r6
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L362+40
	bl	.L21
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L362+44
	ldr	r7, [r4, #60]
	bl	.L21
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L362+48
	movs	r0, r7
	bl	.L21
	ldr	r0, [r4, #60]
	ldr	r7, .L362+52
	lsls	r1, r6, #1
	adds	r1, r1, #70
	ldr	r3, .L362+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L362+60
	ldr	r3, .L362+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L362+68
	bl	.L21
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L358
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L362+72
	lsrs	r4, r4, #16
.L359:
	ldr	r5, [sp, #4]
	adds	r5, r5, #84
	adds	r5, r7, r5
	movs	r2, #0
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L362+76
	bl	.L21
	movs	r2, #128
	movs	r1, r4
	lsls	r2, r2, #7
	movs	r0, r5
	ldr	r3, .L362+76
	bl	.L21
	ldr	r3, .L362+80
	movs	r0, r6
	bl	.L21
	movs	r2, #0
	ldr	r3, .L362+84
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r4, r0, #2
	adds	r3, r7, r3
	adds	r0, r0, #3
.L360:
	cmp	r1, r2
	bgt	.L361
	@ sp needed
	movs	r0, #3
	ldr	r3, .L362+88
	bl	.L21
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L358:
	ldr	r4, .L362+92
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L362+96
	lsrs	r4, r4, #16
	b	.L359
.L361:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L360
.L363:
	.align	2
.L362:
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
	ldr	r3, .L365
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L21
	ldr	r3, .L365+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L365+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L365+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L365+16
	ldr	r3, .L365+20
	bl	.L21
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L366:
	.align	2
.L365:
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
	ldr	r0, .L368
	ldr	r3, .L368+4
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L368+8
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L369:
	.align	2
.L368:
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
	ldr	r6, .L372
	@ sp needed
	movs	r7, r0
	ldr	r5, .L372+4
	ldrb	r0, [r6, #12]
	bl	.L51
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L51
	ldr	r3, .L372+8
	movs	r5, r0
	bl	.L21
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r5, r1]
	ldrsb	r2, [r4, r2]
	ldrsb	r3, [r4, r3]
	ldrsb	r0, [r5, r0]
	ldr	r6, .L372+12
	bl	.L120
	movs	r6, r0
	ldr	r3, .L372+16
	bl	.L21
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L372+20
	bl	.L120
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L372+24
	bl	.L21
	movs	r0, r4
	ldr	r3, .L372+28
	bl	.L21
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L373:
	.align	2
.L372:
	.word	gActionData
	.word	GetUnit
	.word	TryRemoveUnitFromBallista
	.word	GetSomeFacingDirection
	.word	MU_EndAll
	.word	Make6CKOIDO
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
	ldr	r3, .L376
	ldrb	r2, [r3, #17]
	ldr	r3, .L376+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L374
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L374:
	@ sp needed
	bx	lr
.L377:
	.align	2
.L376:
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
	ldr	r4, .L386
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L379
	ldr	r1, .L386+4
	lsls	r1, r1, #24
	ldr	r5, .L386+8
	lsrs	r1, r1, #24
	bl	.L51
	cmp	r0, #0
	beq	.L380
.L382:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L386+12
	bl	.L21
	cmp	r0, #0
	beq	.L379
	movs	r0, #1
.L381:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L380:
	ldr	r1, .L386+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L51
	cmp	r0, #0
	bne	.L382
.L379:
	movs	r0, #3
	b	.L381
.L387:
	.align	2
.L386:
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
	ldr	r3, .L389
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L389+4
	ldr	r3, .L389+8
	bl	.L21
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L390:
	.align	2
.L389:
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
	beq	.L392
	movs	r3, #128
	strh	r3, [r4]
.L392:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L396
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
	ldr	r3, .L396+4
	bl	.L21
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L397:
	.align	2
.L396:
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
	ldr	r3, .L399
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L21
	mov	r2, sp
	ldr	r3, .L399+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L399+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L400:
	.align	2
.L399:
	.word	ReadSramFast
	.word	PAU_pairUpBitsRAMAddress
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_loadPairUpData, .-PAU_loadPairUpData
	.align	1
	.global	PAU_forecastDrawContentsStandard
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_forecastDrawContentsStandard, %function
PAU_forecastDrawContentsStandard:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r5, .L420
	str	r0, [sp]
	movs	r0, r5
	bl	PAU_isPairedUp
	ldr	r4, .L420+4
	movs	r6, r0
	movs	r0, r4
	bl	PAU_isPairedUp
	movs	r2, #128
	ldr	r3, .L420+8
	lsls	r2, r2, #5
	cmp	r6, #0
	bne	.LCB3956
	b	.L402	@long jump
.LCB3956:
	ldr	r1, .L420+12
	cmp	r0, #0
	bne	.LCB3959
	b	.L419	@long jump
.LCB3959:
	ldr	r1, .L420+16
	ldr	r0, .L420+20
	bl	.L21
	movs	r1, #12
.L404:
	movs	r3, #0
	movs	r2, #15
	ldr	r0, .L420+24
	ldr	r6, .L420+28
	bl	.L120
	ldr	r7, [sp]
	adds	r7, r7, #56
	movs	r2, r5
	movs	r1, r7
	ldr	r0, .L420+32
	ldr	r6, .L420+36
	bl	.L120
	movs	r2, r4
	movs	r1, r7
	ldr	r0, .L420+40
	bl	.L120
	movs	r3, r4
	ldr	r1, [sp]
	adds	r3, r3, #74
	ldrh	r2, [r3]
	ldr	r0, .L420+44
	ldr	r3, .L420+48
	adds	r1, r1, #72
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB3994
	b	.L406	@long jump
.LCB3994:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB4001
	b	.L406	@long jump
.LCB4001:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r7, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r7, r7, #0
.L407:
	movs	r3, r4
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r0, .L420+52
	ldr	r6, .L420+56
	cmp	r2, #99
	bls	.L409
	movs	r2, #255
.L409:
	movs	r1, #2
	bl	.L120
	movs	r2, r7
	movs	r1, #2
	ldr	r0, .L420+60
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L420+64
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L420+68
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp]
	movs	r3, r4
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r3, .L420+72
	bl	.L21
	movs	r7, #255
	cmp	r0, #181
	beq	.L411
	ldr	r3, [sp]
	ldr	r2, [sp, #4]
	subs	r7, r3, r2
	mvns	r3, r7
	asrs	r3, r3, #31
	ands	r7, r3
.L411:
	movs	r3, r5
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp]
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r3, .L420+72
	bl	.L21
	movs	r3, #255
	str	r3, [sp, #4]
	cmp	r0, #181
	beq	.L413
	ldr	r3, [sp]
	mvns	r3, r3
	ldr	r2, [sp]
	asrs	r3, r3, #31
	ands	r2, r3
	str	r2, [sp, #4]
.L413:
	movs	r3, r5
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r0, .L420+76
	cmp	r2, #99
	bls	.L415
	movs	r2, #255
.L415:
	@ sp needed
	movs	r1, #2
	bl	.L120
	movs	r2, r7
	movs	r1, #2
	ldr	r0, .L420+80
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L420+84
	bl	.L120
	ldr	r2, [sp, #4]
	movs	r1, #2
	ldr	r0, .L420+88
	bl	.L120
	movs	r3, #35
	movs	r2, #34
	movs	r1, #3
	ldr	r0, .L420+92
	ldr	r6, .L420+96
	bl	.L120
	ldr	r6, .L420+100
	ldr	r1, .L420+104
	ldr	r0, .L420+108
	bl	.L120
	ldr	r1, .L420+112
	ldr	r0, .L420+116
	bl	.L120
	adds	r4, r4, #74
	ldr	r1, .L420+120
	ldr	r0, .L420+124
	bl	.L120
	ldr	r6, .L420+128
	ldrh	r0, [r4]
	bl	.L120
	movs	r2, #128
	movs	r1, r0
	ldr	r4, .L420+132
	lsls	r2, r2, #7
	adds	r5, r5, #74
	ldr	r0, .L420+136
	bl	.L16
	ldrh	r0, [r5]
	bl	.L120
	movs	r2, #192
	movs	r1, r0
	lsls	r2, r2, #6
	ldr	r0, .L420+140
	bl	.L16
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L402:
	cmp	r0, #0
	beq	.L405
	ldr	r1, .L420+144
.L419:
	ldr	r0, .L420+20
	bl	.L21
	movs	r1, #11
	b	.L404
.L405:
	ldr	r1, .L420+148
	ldr	r0, .L420+20
	bl	.L21
	movs	r1, #10
	b	.L404
.L406:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r7, #0
	ldrsh	r7, [r3, r7]
	movs	r3, r5
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r7, r7, r3
	mvns	r3, r7
	asrs	r3, r3, #31
	ands	r7, r3
	b	.L407
.L421:
	.align	2
.L420:
	.word	gBattleActor
	.word	gBattleTarget
	.word	BgMap_ApplyTsa
	.word	PAU_forecastWindowRightTSA
	.word	PAU_forecastWindowBothTSA
	.word	33571372
	.word	gpStatScreenPageBg0Map
	.word	BgMapFillRect
	.word	gpStatScreenPageBg0Map+70
	.word	DrawUnitNameForBattleForecast
	.word	gpStatScreenPageBg0Map+706
	.word	gpStatScreenPageBg0Map+834
	.word	PutBattleForecastItemName
	.word	gpStatScreenPageBg0Map+196
	.word	sub_8004BB4
	.word	gpStatScreenPageBg0Map+324
	.word	gpStatScreenPageBg0Map+452
	.word	gpStatScreenPageBg0Map+580
	.word	GetItemIndex
	.word	gpStatScreenPageBg0Map+208
	.word	gpStatScreenPageBg0Map+336
	.word	gpStatScreenPageBg0Map+464
	.word	gpStatScreenPageBg0Map+592
	.word	gpStatScreenPageBg0Map+200
	.word	DrawSpecialUiStr
	.word	Text_Display
	.word	gpStatScreenPageBg0Map+326
	.word	gaBattleForecastTextStructs
	.word	gpStatScreenPageBg0Map+454
	.word	gaBattleForecastTextStructs+8
	.word	gpStatScreenPageBg0Map+582
	.word	gaBattleForecastTextStructs+16
	.word	GetItemIconId
	.word	DrawIcon
	.word	gpStatScreenPageBg0Map+718
	.word	gpStatScreenPageBg0Map+66
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r2, #128
	str	r0, [sp, #4]
	ldr	r1, .L428
	ldr	r0, .L428+4
	ldr	r3, .L428+8
	lsls	r2, r2, #5
	bl	.L21
	movs	r3, #0
	movs	r2, #19
	movs	r1, #10
	ldr	r0, .L428+12
	ldr	r4, .L428+16
	bl	.L16
	ldr	r7, [sp, #4]
	ldr	r5, .L428+20
	adds	r7, r7, #56
	movs	r2, r5
	movs	r1, r7
	ldr	r0, .L428+24
	ldr	r6, .L428+28
	bl	.L120
	ldr	r4, .L428+32
	movs	r1, r7
	movs	r2, r4
	ldr	r0, .L428+36
	bl	.L120
	movs	r3, r4
	ldr	r1, [sp, #4]
	adds	r3, r3, #74
	ldrh	r2, [r3]
	ldr	r0, .L428+40
	ldr	r3, .L428+44
	adds	r1, r1, #72
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L423
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L423
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #90
	strh	r3, [r2]
	movs	r2, r4
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	adds	r2, r2, #106
	strh	r3, [r2]
.L423:
	movs	r3, r4
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r0, .L428+48
	ldr	r6, .L428+52
	cmp	r2, #99
	bls	.L424
	movs	r2, #255
.L424:
	movs	r1, #2
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+56
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+60
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+64
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+68
	bl	.L120
	movs	r3, r4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r0, .L428+72
	movs	r1, #2
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r0, .L428+76
	cmp	r2, #99
	bls	.L426
	movs	r2, #255
.L426:
	@ sp needed
	movs	r1, #2
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+80
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+84
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+88
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+92
	bl	.L120
	movs	r3, r5
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	ldr	r0, .L428+96
	bl	.L120
	movs	r3, #35
	movs	r2, #34
	movs	r1, #3
	ldr	r0, .L428+100
	ldr	r6, .L428+104
	bl	.L120
	ldr	r6, .L428+108
	ldr	r1, .L428+112
	ldr	r0, .L428+116
	bl	.L120
	ldr	r1, .L428+120
	ldr	r0, .L428+124
	bl	.L120
	ldr	r1, .L428+128
	ldr	r0, .L428+132
	bl	.L120
	ldr	r1, .L428+136
	ldr	r0, .L428+140
	bl	.L120
	adds	r4, r4, #74
	ldr	r1, .L428+144
	ldr	r0, .L428+148
	bl	.L120
	ldr	r6, .L428+152
	ldrh	r0, [r4]
	bl	.L120
	movs	r2, #128
	movs	r1, r0
	ldr	r4, .L428+156
	lsls	r2, r2, #7
	adds	r5, r5, #74
	ldr	r0, .L428+160
	bl	.L16
	ldrh	r0, [r5]
	bl	.L120
	movs	r2, #192
	movs	r1, r0
	lsls	r2, r2, #6
	ldr	r0, .L428+164
	bl	.L16
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L429:
	.align	2
.L428:
	.word	gTSA_BattleForecastExtended
	.word	33571372
	.word	BgMap_ApplyTsa
	.word	gpStatScreenPageBg0Map
	.word	BgMapFillRect
	.word	gBattleActor
	.word	gpStatScreenPageBg0Map+70
	.word	DrawUnitNameForBattleForecast
	.word	gBattleTarget
	.word	gpStatScreenPageBg0Map+962
	.word	gpStatScreenPageBg0Map+1090
	.word	PutBattleForecastItemName
	.word	gpStatScreenPageBg0Map+196
	.word	sub_8004BB4
	.word	gpStatScreenPageBg0Map+324
	.word	gpStatScreenPageBg0Map+452
	.word	gpStatScreenPageBg0Map+580
	.word	gpStatScreenPageBg0Map+708
	.word	gpStatScreenPageBg0Map+836
	.word	gpStatScreenPageBg0Map+208
	.word	gpStatScreenPageBg0Map+336
	.word	gpStatScreenPageBg0Map+464
	.word	gpStatScreenPageBg0Map+592
	.word	gpStatScreenPageBg0Map+720
	.word	gpStatScreenPageBg0Map+848
	.word	gpStatScreenPageBg0Map+200
	.word	DrawSpecialUiStr
	.word	Text_Display
	.word	gpStatScreenPageBg0Map+326
	.word	gaBattleForecastTextStructs+24
	.word	gpStatScreenPageBg0Map+454
	.word	gaBattleForecastTextStructs+32
	.word	gpStatScreenPageBg0Map+582
	.word	gaBattleForecastTextStructs+8
	.word	gpStatScreenPageBg0Map+710
	.word	gaBattleForecastTextStructs+16
	.word	gpStatScreenPageBg0Map+838
	.word	gaBattleForecastTextStructs+40
	.word	GetItemIconId
	.word	DrawIcon
	.word	gpStatScreenPageBg0Map+974
	.word	gpStatScreenPageBg0Map+66
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
	beq	.L431
	cmp	r3, #2
	beq	.L432
.L430:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L431:
	ldr	r3, .L434
	bl	.L21
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L430
.L432:
	ldr	r3, .L434
	bl	.L21
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L430
.L435:
	.align	2
.L434:
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
	ldr	r3, .L439
	bl	.L21
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
	blt	.L437
	adds	r3, r3, #20
.L437:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L439+4
	bl	.L21
	pop	{r4}
	pop	{r0}
	bx	r0
.L440:
	.align	2
.L439:
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
	movs	r3, r0
	push	{r4, r5, r6, lr}
	adds	r3, r3, #50
	ldrb	r3, [r3]
	movs	r4, #16
	cmp	r3, #1
	beq	.L442
	adds	r4, r4, #4
.L442:
	adds	r0, r0, #53
	ldrb	r3, [r0]
	ldr	r5, .L447
	ldr	r0, .L447+4
	cmp	r3, #127
	bls	.L443
	movs	r3, r4
	movs	r2, #10
	ldr	r1, .L447+8
	bl	.L51
	movs	r3, r4
	movs	r2, #10
	ldr	r1, .L447+12
.L446:
	@ sp needed
	ldr	r0, .L447+16
	bl	.L51
	movs	r0, #3
	ldr	r3, .L447+20
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L443:
	movs	r3, r4
	movs	r2, #10
	ldr	r1, .L447+24
	bl	.L51
	movs	r3, r4
	movs	r2, #10
	ldr	r1, .L447+28
	b	.L446
.L448:
	.align	2
.L447:
	.word	BgMapCopyRect
	.word	gpStatScreenPageBg0Map
	.word	gBg0MapBuffer
	.word	gBg1MapBuffer
	.word	33571372
	.word	EnableBgSyncByMask
	.word	gBg0MapBuffer+40
	.word	gBg1MapBuffer+40
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, #83
	push	{r4, r5, r6, lr}
	ldr	r3, .L461
	ldrsb	r2, [r3, r2]
	movs	r4, r0
	movs	r5, #1
	cmp	r2, #0
	bgt	.L450
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r5, r2, #1
.L450:
	ldr	r3, .L461+4
	adds	r3, r3, #83
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	movs	r2, #1
	asrs	r3, r3, #24
	cmp	r3, #0
	bgt	.L453
	beq	.L454
	movs	r2, #2
.L453:
	subs	r2, r2, #2
	rsbs	r3, r2, #0
	adcs	r2, r2, r3
	movs	r0, #1
	movs	r3, r4
	movs	r1, #0
	adds	r3, r3, #49
	rsbs	r0, r0, #0
	ldrsb	r1, [r3, r1]
	ldrsb	r0, [r3, r0]
	adds	r1, r1, #11
	lsls	r0, r0, #3
	ldr	r3, .L461+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L21
.L454:
	cmp	r5, #0
	beq	.L449
	movs	r1, #49
	movs	r0, #48
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	subs	r2, r5, #2
	adds	r1, r1, #1
	lsls	r0, r0, #3
	rsbs	r3, r2, #0
	adcs	r2, r2, r3
	lsls	r1, r1, #3
	ldr	r3, .L461+8
	adds	r0, r0, #19
	bl	.L21
.L449:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L462:
	.align	2
.L461:
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
	movs	r2, #255
	ldr	r3, [r0, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L466
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L466+4
	ldrsh	r2, [r3, r2]
	movs	r3, r0
	movs	r5, #0
	movs	r6, #1
	adds	r3, r3, #48
	ldrsb	r5, [r3, r5]
	ldrsb	r6, [r3, r6]
	adds	r3, r3, #32
	ldrb	r3, [r3]
	lsls	r5, r5, #3
	asrs	r1, r1, #10
	asrs	r2, r2, #11
	subs	r5, r5, #3
	lsls	r6, r6, #3
	lsls	r3, r3, #24
	movs	r4, r0
	adds	r5, r5, r1
	adds	r6, r6, r2
	asrs	r3, r3, #24
	cmp	r3, #1
	ble	.L464
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L466+8
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L466+12
	ldr	r7, .L466+16
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L82
.L464:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L463
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L466+8
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L466+12
	ldr	r4, .L466+16
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L16
.L463:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L467:
	.align	2
.L466:
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
	beq	.L469
	ldr	r3, .L479
	bl	.L21
	cmp	r0, #0
	beq	.L470
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L470
	movs	r0, r4
	ldr	r3, .L479+4
.L478:
	bl	.L21
.L468:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L470:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L479+8
	bl	.L21
.L469:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L468
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L479+12
	b	.L478
.L480:
	.align	2
.L479:
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
	ldr	r3, .L483
	movs	r6, r0
	movs	r5, #1
	bl	.L21
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L482
	ldr	r3, .L483+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L483+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L482
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L482:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L484:
	.align	2
.L483:
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
	bne	.L486
.L495:
	movs	r0, #0
.L487:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L486:
	ldr	r7, .L511
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L488:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L495
	cmp	r6, #0
	beq	.L489
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L489
	ldr	r3, .L511+4
	ldr	r2, .L511+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L489
	ldr	r2, .L511+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L509:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L510:
	bl	PAU_setBattleGauge
.L490:
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
	ldr	r3, .L511+16
	bl	.L21
	cmp	r0, #0
	bne	.L496
	adds	r6, r6, #1
	b	.L488
.L489:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L491
	ldr	r3, .L511+4
	ldr	r2, .L511+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L491
	ldr	r2, .L511+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L509
.L491:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L492
.L493:
	ldr	r3, .L511+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L510
.L492:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L493
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L493
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L490
	b	.L493
.L496:
	movs	r0, #1
	b	.L487
.L512:
	.align	2
.L511:
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
.L515:
	lsls	r0, r4, #24
	ldr	r3, .L523
	lsrs	r0, r0, #24
	bl	.L21
	cmp	r0, #0
	beq	.L514
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L514
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L523+4
	bl	.L21
.L514:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L515
	ldr	r3, .L523+8
	@ sp needed
	bl	.L21
	ldr	r3, .L523+12
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L524:
	.align	2
.L523:
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
	bhi	.L526
	ldr	r3, .L528
	ldrb	r0, [r5, #27]
	bl	.L21
	ldr	r3, .L528+4
	bl	.L21
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L527
	adds	r2, r4, #0
.L527:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L526:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L529:
	.align	2
.L528:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC376:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC377:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC378:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC379:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC380:
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
	.word	.LC380
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
	.word	.LC379
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
	.word	.LC377
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
	.word	.LC376
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
	.size	PAU_bAnimGaugeProcInstr, 56
PAU_bAnimGaugeProcInstr:
	.short	1
	.short	0
	.word	.LC378
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
.L21:
	bx	r3
.L16:
	bx	r4
.L51:
	bx	r5
.L120:
	bx	r6
.L82:
	bx	r7

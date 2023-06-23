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
	push	{r3, r4, r5, r6, r7, lr}
	movs	r3, #1
	strh	r3, [r0, #50]
	movs	r3, r0
	adds	r3, r3, #41
	ldrb	r5, [r3]
	movs	r4, r0
	cmp	r5, #0
	bne	.L23
	ldr	r3, .L24
	strh	r5, [r0, #50]
	ldr	r0, .L24+4
	bl	.L21
	movs	r2, #32
	ldr	r1, .L24+8
	ldr	r7, .L24+12
	bl	.L26
	ldr	r6, .L24+16
	movs	r2, #8
	movs	r1, r6
	ldr	r0, .L24+20
	bl	.L26
	strh	r5, [r6]
.L23:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L25:
	.align	2
.L24:
	.word	prGetMiscIconGfx
	.word	1538
	.word	100663840
	.word	CpuFastSet
	.word	gPaletteBuffer
	.word	gIconPalettes
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
	beq	.L28
	movs	r2, #0
	movs	r1, #1
.L28:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r5, .L50
	movs	r0, #1
	bl	.L52
	movs	r2, #50
	ldrsh	r3, [r4, r2]
	movs	r5, r0
	cmp	r3, r0
	bne	.L29
.L36:
	ldrh	r2, [r4, #42]
	ldrh	r3, [r4, #44]
	cmp	r2, r3
	bcs	.L30
.L27:
	add	sp, sp, #28
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L29:
	movs	r3, r4
	strh	r0, [r4, #50]
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L32
	ldr	r3, .L50+4
.L48:
	bl	.L21
	ldr	r3, .L50+8
	movs	r0, #1
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #46
	ldrb	r2, [r3]
	cmp	r2, #0
	bne	.L34
.L40:
	movs	r3, r4
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L36
	lsls	r5, r5, #31
	asrs	r2, r5, #31
	str	r2, [sp, #12]
	movs	r2, r4
	ldr	r1, .L50+12
	ldrb	r1, [r1]
	adds	r2, r2, #49
	ldrb	r2, [r2]
	str	r1, [sp, #16]
	ldr	r1, .L50+16
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r5, r1
	ldr	r7, .L50+20
	lsrs	r3, r3, #16
.L41:
	ldr	r0, [sp, #16]
	cmp	r0, r1
	ble	.L36
	cmp	r2, #0
	beq	.L47
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L42:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp, #12]
	adds	r0, r5, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L41
.L32:
	ldr	r3, .L50+24
	b	.L48
.L34:
	lsls	r3, r5, #31
	asrs	r3, r3, #31
	str	r3, [sp, #12]
	movs	r3, r4
	ldr	r1, .L50+12
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
	ldr	r7, .L50+28
.L37:
	ldr	r1, [sp, #16]
	cmp	r1, r2
	ble	.L40
	cmp	r3, #0
	beq	.L46
	subs	r3, r3, #1
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
.L38:
	lsls	r1, r2, #6
	mov	ip, r1
	ldr	r1, [sp, #20]
	ldr	r6, [sp, #12]
	adds	r1, r0, r1
	ands	r1, r6
	mov	r6, ip
	adds	r2, r2, #1
	strh	r1, [r7, r6]
	b	.L37
.L46:
	movs	r0, #1
	b	.L38
.L47:
	movs	r5, #1
	b	.L42
.L30:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L44
	ldr	r3, .L50+4
.L49:
	bl	.L21
	b	.L27
.L44:
	ldr	r3, .L50+24
	b	.L49
.L51:
	.align	2
.L50:
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
	ldr	r5, .L68
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L68+4
	bl	.L21
	cmp	r0, #0
	beq	.L53
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L53
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L53
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L53
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L53
	ldr	r1, .L68+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L68+12
	lsrs	r1, r1, #24
	bl	.L52
	cmp	r0, #0
	beq	.L57
.L58:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L68+16
	bl	.L16
.L53:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L57:
	ldr	r1, .L68+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L52
	cmp	r0, #0
	bne	.L58
	b	.L53
.L69:
	.align	2
.L68:
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
	ldr	r3, .L71
	bl	.L21
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L71+4
	bl	.L16
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L72:
	.align	2
.L71:
	.word	GetUnit
	.word	PutUnitSpriteExt
	.size	PAU_infoWindowLoop, .-PAU_infoWindowLoop
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
	ldr	r3, .L74
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L75:
	.align	2
.L74:
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
	ldr	r3, .L77
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L78:
	.align	2
.L77:
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
	ldr	r3, .L80
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L81:
	.align	2
.L80:
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
	beq	.L83
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L83
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L83
	ldr	r4, .L98
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L98+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L84
	movs	r1, r4
	movs	r0, r5
	bl	.L100
	ldr	r1, .L98+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L100
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L83
.L85:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L84:
	ldr	r3, .L98+12
	movs	r0, r7
	bl	.L21
	movs	r1, r4
	movs	r5, r0
	bl	.L100
	movs	r2, #1
	cmp	r0, #0
	bne	.L85
	ldr	r1, .L98+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L100
	movs	r2, #2
	cmp	r0, #0
	bne	.L85
.L83:
	movs	r2, #0
	b	.L85
.L99:
	.align	2
.L98:
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
	ldr	r3, .L102
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L103:
	.align	2
.L102:
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
	ldr	r1, .L105
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
.L106:
	.align	2
.L105:
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
	ldr	r3, .L108
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L109:
	.align	2
.L108:
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
	ldr	r3, .L112
	ldr	r1, [r3]
	ldr	r3, .L112+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L111
	adds	r3, r0, #0
.L111:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L113:
	.align	2
.L112:
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
	ldr	r3, .L138
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
	ldr	r3, .L138+4
	bl	.L21
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L128:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB840
	b	.L116	@long jump
.LCB840:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L117
	cmp	r2, #0
	bne	.L118
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L119
	ldr	r3, .L138+8
	movs	r0, r1
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L120
	ldr	r3, .L138+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L120:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L127
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L137:
	ldr	r3, .L138+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L127:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L135:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L118:
	cmp	r2, #1
	bne	.L119
	cmp	r3, #0
	bne	.L119
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L119
	ldr	r3, .L138+8
	ldr	r0, [sp, #4]
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L123
	ldr	r3, .L138+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L123:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L124
	ldr	r3, .L138+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L124:
	ldrh	r3, [r6, #2]
.L119:
	adds	r6, r6, #4
	b	.L128
.L117:
	cmp	r2, #0
	bne	.L125
	ldr	r3, .L138+8
	bl	.L21
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L126
	ldr	r3, .L138+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L126:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L127
	ldrb	r0, [r6]
	ldr	r3, .L138+4
	bl	.L21
	b	.L137
.L125:
	cmp	r2, #1
	bne	.L119
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L119
	cmp	r0, #9
	beq	.L119
	b	.L137
.L116:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L135
.L139:
	.align	2
.L138:
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
	beq	.L140
	movs	r3, #0
	ldr	r4, .L152
	str	r3, [sp]
	movs	r3, r2
	bl	.L16
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L142
	cmp	r7, #0
	bne	.L143
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L152+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L100
	ldr	r3, .L152+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L150:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L151
.L142:
	cmp	r7, #0
	bne	.L145
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L152+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L100
	ldr	r3, .L152+8
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
.L151:
	movs	r0, #0
	bl	.L100
.L149:
	ldr	r3, .L152+12
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
	ldr	r3, .L152+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L152+20
	bl	.L21
.L140:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L143:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L152+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L100
	ldr	r3, .L152+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L150
.L145:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L152+4
	movs	r0, r6
	bl	.L16
	ldr	r3, .L152+8
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
	ldr	r5, .L152+4
	asrs	r4, r4, #16
	bl	.L52
	b	.L149
.L153:
	.align	2
.L152:
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
	bne	.LCB1185
	b	.L154	@long jump
.LCB1185:
	ldrb	r0, [r5, #27]
	ldr	r3, .L179
	bl	.L21
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L179+4
	ldr	r2, .L179+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1205
	b	.L154	@long jump
.LCB1205:
	ldr	r0, .L179+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1211
	b	.L154	@long jump
.LCB1211:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L179+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L179+20
	cmp	r2, #255
	beq	.L156
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L156:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L179+24
	str	r2, [sp, #20]
	bl	.L21
	ldr	r3, .L179+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L157
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L157:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L179+32
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
	beq	.L158
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L158:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L179+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L179+20
	cmp	r3, #255
	beq	.L159
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L159:
	ldr	r3, .L179+24
	bl	.L21
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L179+32
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
	movs	r5, r0
	str	r3, [r0, #48]
	ldr	r0, .L179+36
	ldr	r3, .L179+40
	bl	.L21
	movs	r4, r0
	cmp	r0, r6
	bne	.L160
	ldr	r3, .L179+44
	movs	r1, #5
	ldr	r0, .L179+36
	bl	.L21
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L179+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L179+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L179+56
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
.L160:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L179+60
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
	beq	.L161
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
	ldr	r3, .L179+64
	bl	.L21
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L178:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L179+68
	bl	.L21
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L179+72
	bl	.L21
	adds	r4, r4, #84
	strh	r0, [r4]
.L154:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L161:
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
	ldr	r3, .L179+64
	bl	.L21
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L178
.L180:
	.align	2
.L179:
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
	ldr	r7, .L192
	movs	r5, r0
	ldr	r3, .L192+4
	movs	r0, r7
	bl	.L21
	subs	r4, r0, #0
	bne	.L182
	movs	r0, r5
	ldr	r3, .L192+8
	bl	.L21
.L181:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L182:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L192+12
	bl	.L21
	ldr	r3, .L192+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L192+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L184
	ldr	r3, .L192+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L184
	ldr	r3, .L192+28
	movs	r0, r5
	bl	.L21
	movs	r1, #1
	ldr	r3, .L192+32
	rsbs	r1, r1, #0
	bl	.L21
	movs	r0, r7
	ldr	r3, .L192+36
	movs	r1, r4
	adds	r0, r0, #48
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
.L185:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L192+40
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
	b	.L181
.L184:
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
	beq	.L185
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L192+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L52
	b	.L185
.L193:
	.align	2
.L192:
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
	ldr	r6, .L205
	movs	r4, r0
	ldr	r3, .L205+4
	movs	r0, r6
	sub	sp, sp, #20
	bl	.L21
	subs	r5, r0, #0
	bne	.L195
	movs	r0, r4
	ldr	r3, .L205+8
	bl	.L21
.L194:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L195:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L205+12
	bl	.L21
	movs	r7, r5
	ldr	r3, .L205+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L205+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L197
	ldr	r3, .L205+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L197
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L205+28
	rsbs	r1, r1, #0
	bl	.L21
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L205+32
	adds	r0, r0, #48
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
	ldr	r3, .L205+36
	movs	r0, r4
	bl	.L21
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L198:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L205+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L205+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L194
.L197:
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
	beq	.L198
	ldr	r3, .L205+36
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
	ldr	r6, .L205+48
	bl	.L100
	b	.L198
.L206:
	.align	2
.L205:
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
	ldr	r5, [r0, #92]
	ldr	r6, .L222
	ldrh	r3, [r5, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r6
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r5, #8]
	ldrh	r3, [r2, #8]
	ands	r3, r6
	orrs	r3, r4
	strh	r3, [r2, #8]
	ldr	r0, .L222+4
	ldr	r5, .L222+8
	bl	.L52
	cmp	r0, #0
	beq	.L209
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L210
	ldrh	r3, [r2, #8]
	ands	r3, r6
	orrs	r3, r4
	strh	r3, [r2, #8]
.L210:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L209
	ldrh	r1, [r3, #8]
	ands	r6, r1
	orrs	r4, r6
	strh	r4, [r3, #8]
.L209:
	ldr	r0, .L222+12
	adds	r0, r0, #24
	bl	.L52
	cmp	r0, #0
	beq	.L207
	movs	r2, r0
	movs	r3, #1
	adds	r2, r2, #41
	strb	r3, [r2]
	strb	r3, [r2, #11]
	movs	r1, #0
	strh	r3, [r0, #44]
	ldr	r3, .L222+16
	bl	.L21
.L207:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L223:
	.align	2
.L222:
	.word	-3073
	.word	.LANCHOR0
	.word	ProcFind
	.word	.LANCHOR1
	.word	ProcGoto
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
	ldr	r3, .L260
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L225
	ldr	r2, .L260+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L226
.L256:
	ldrb	r0, [r5, #27]
	ldr	r3, .L260+8
	bl	.L21
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L226
.L225:
	ldr	r2, .L260+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L256
.L226:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L227
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
	ldr	r3, .L260+16
	bl	.L21
.L227:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2016
	b	.L228	@long jump
.LCB2016:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L260+20
	bl	.L52
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L229
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
	ldr	r3, .L260+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L260+28
	bl	.L52
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L260+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L52
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L259:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L260+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L52
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L260+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L52
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L224:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L229:
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
	ldr	r3, .L260+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L260+28
	bl	.L52
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #78
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L260+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L52
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L259
.L228:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L260+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L260+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L260+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L260+48
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
	beq	.L231
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L232
.L257:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L232
.L231:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L257
.L232:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L233
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L260+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L234
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2264
	b	.L235	@long jump
.LCB2264:
	lsls	r3, r3, #28
	bmi	.LCB2270
	b	.L236	@long jump
.LCB2270:
.L234:
	movs	r0, r7
	ldr	r3, .L260+56
	bl	.L21
	ldr	r3, .L260+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L260+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2289
	b	.L238	@long jump
.LCB2289:
	ldr	r3, .L260+60
	movs	r0, r7
	bl	.L21
	ldr	r3, .L260+64
	bl	.L21
	cmp	r0, #0
	bne	.LCB2297
	b	.L238	@long jump
.LCB2297:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L260+68
	rsbs	r1, r1, #0
	bl	.L21
	ldr	r0, .L260+72
	movs	r1, r4
	ldr	r3, .L260+76
	adds	r0, r0, #48
	bl	.L21
	movs	r1, #1
	ldr	r3, .L260+80
	bl	.L21
.L233:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L260+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L260+88
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
	beq	.L239
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
.L258:
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
	b	.L224
.L235:
	lsls	r3, r3, #30
	bpl	.LCB2397
	b	.L234	@long jump
.LCB2397:
.L236:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L237
	movs	r1, r3
.L237:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2413
	b	.L234	@long jump
.LCB2413:
	movs	r5, r3
	b	.L234
.L261:
	.align	2
.L260:
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
.L238:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L262
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L262+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L262+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L233
.L239:
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
	b	.L258
.L263:
	.align	2
.L262:
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
	beq	.L265
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L266
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L265:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L264
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L269
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L264:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L266:
	ldr	r2, .L277
	ldrh	r5, [r2]
	ldr	r2, .L277+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L267
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L265
.L267:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L265
.L269:
	ldr	r3, .L277
	ldr	r1, .L277+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L270
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L264
.L270:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L264
.L278:
	.align	2
.L277:
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
	ldr	r3, .L306
	ldr	r2, .L306+4
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
	ldr	r5, .L306+8
	ldr	r2, .L306+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L280
	ldr	r5, .L306+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L281
	cmp	r4, #0
	beq	.L303
.L285:
	cmp	r3, r2
	beq	.L283
.L284:
	ldr	r2, .L306+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L295
	adds	r3, r3, #1
	b	.L305
.L281:
	cmp	r4, #0
	beq	.L285
.L303:
	cmp	r3, r1
	bne	.L284
.L283:
	movs	r3, #0
.L305:
	strb	r3, [r5]
.L295:
	cmp	r6, #0
	bne	.L293
	b	.L287
.L280:
	cmp	r6, #0
	beq	.L287
	ldr	r5, .L306+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L288
	cmp	r4, #0
	beq	.L299
.L301:
	cmp	r3, r2
	beq	.L290
.L293:
	movs	r2, r0
	ldr	r1, .L306+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L291
.L287:
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
	ldr	r3, .L306+28
	bl	.L21
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L288:
	cmp	r4, #0
	beq	.L301
.L299:
	cmp	r3, r1
	bne	.L293
.L290:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L287
.L291:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L287
.L307:
	.align	2
.L306:
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
	ldr	r3, .L309
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L309+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L309+8
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L309+12
	ldr	r3, .L309+16
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L310:
	.align	2
.L309:
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
	ldr	r3, .L315
	movs	r5, r1
	bl	.L21
	ldr	r3, .L315+4
	bl	.L21
	cmp	r0, #39
	bhi	.L312
	ldr	r3, .L315+8
.L314:
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
.L312:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L314
.L316:
	.align	2
.L315:
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
	ldr	r1, .L334
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L334+4
	movs	r2, #14
	adds	r1, r1, #80
	movs	r5, r0
	add	r0, sp, #16
	bl	.L21
	ldr	r1, .L334+8
	ldr	r3, .L334+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L334+16
	bl	.L21
	ldr	r3, .L334+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L318
	ldr	r3, .L334+24
	str	r3, [sp, #4]
.L318:
	movs	r7, #0
	ldr	r3, .L334+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L323:
	movs	r0, r5
	ldr	r3, .L334+32
	bl	.L21
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L334+36
	bl	.L21
	ldr	r3, .L334+40
	movs	r1, r0
	movs	r0, r5
	bl	.L21
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L334+44
	bl	.L21
	cmp	r7, #6
	bne	.L319
	ldr	r6, .L334+48
	ldr	r0, [sp, #8]
	bl	.L100
	ldr	r3, .L334+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L100
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L320
	adds	r3, r0, #0
.L320:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L321:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L325
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L326
	cmp	r4, #0
	blt	.L327
	movs	r2, #21
	cmp	r4, #0
	beq	.L328
	movs	r6, #4
	cmp	r4, #9
	ble	.L332
	cmp	r4, #99
	ble	.L330
.L333:
	movs	r0, #5
.L322:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L334+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L334+52
	bl	.L21
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L334+56
	bl	.L16
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L323
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L319:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L321
.L325:
	movs	r2, #20
	movs	r6, #3
	b	.L333
.L326:
	movs	r2, #20
	movs	r6, #3
.L330:
	movs	r0, #6
	b	.L322
.L327:
	movs	r2, #20
	movs	r6, #3
.L332:
	movs	r0, #7
	b	.L322
.L328:
	movs	r6, r4
	b	.L332
.L335:
	.align	2
.L334:
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
	ldr	r5, .L339
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L339+4
	adds	r0, r0, #96
	bl	.L21
	ldr	r3, .L339+8
	str	r0, [r4, #60]
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L339+12
	adds	r0, r0, #44
	bl	.L26
	movs	r6, #52
.L337:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L26
	cmp	r6, #108
	bne	.L337
	ldr	r0, .L339+16
	lsls	r0, r0, #16
	ldr	r3, .L339+20
	lsrs	r0, r0, #16
	bl	.L21
	ldr	r3, .L339+24
	movs	r1, r0
	movs	r0, r4
	bl	.L21
	movs	r1, r5
	ldr	r3, .L339+28
	movs	r2, #12
	adds	r1, r1, #120
	add	r0, sp, #4
	bl	.L21
	ldr	r4, .L339+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L16
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L339+36
	bl	.L16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L340:
	.align	2
.L339:
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
	ldr	r3, .L346
	bl	.L21
	ldrb	r0, [r5, #2]
	ldr	r3, .L346+4
	bl	.L21
	movs	r1, #13
	ldr	r3, .L346+8
	movs	r5, r0
	bl	.L21
	movs	r6, r0
	ldr	r3, .L346+12
	bl	.L21
	ldr	r7, .L346+16
	ldr	r0, .L346+20
	movs	r1, r7
	ldr	r3, .L346+24
	bl	.L21
	ldr	r0, .L346+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L346+32
	bl	.L21
	ldr	r0, [r4, #60]
	ldr	r3, .L346+36
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
	ldr	r3, .L346+40
	bl	.L21
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L346+44
	ldr	r7, [r4, #60]
	bl	.L21
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L346+48
	movs	r0, r7
	bl	.L21
	ldr	r3, .L346+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L346+56
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L346+60
	ldr	r3, .L346+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L346+68
	bl	.L21
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L342
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L343:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L346+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L346+72
	bl	.L21
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L346+72
	bl	.L21
	ldr	r3, .L346+76
	movs	r0, r6
	bl	.L21
	ldr	r3, .L346+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L346+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L344:
	cmp	r1, r2
	bgt	.L345
	@ sp needed
	movs	r0, #3
	ldr	r3, .L346+84
	bl	.L21
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L342:
	ldr	r4, .L346+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L346+92
	lsrs	r4, r4, #16
	b	.L343
.L345:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L344
.L347:
	.align	2
.L346:
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
	.word	GetIconTileIndex
	.word	PAU_gaugeSize
	.word	EnableBgSyncByMask
	.word	DualGuardID
	.word	1537
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
	ldr	r3, .L349
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L21
	ldr	r3, .L349+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L349+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L349+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L349+16
	ldr	r3, .L349+20
	bl	.L21
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L350:
	.align	2
.L349:
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
	ldr	r0, .L352
	ldr	r3, .L352+4
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L352+8
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L353:
	.align	2
.L352:
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
	ldr	r6, .L356
	@ sp needed
	movs	r7, r0
	ldr	r5, .L356+4
	ldrb	r0, [r6, #12]
	bl	.L52
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L52
	ldr	r3, .L356+8
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
	ldr	r6, .L356+12
	bl	.L100
	movs	r6, r0
	ldr	r3, .L356+16
	bl	.L21
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L356+20
	bl	.L100
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L356+24
	bl	.L21
	movs	r0, r4
	ldr	r3, .L356+28
	bl	.L21
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L357:
	.align	2
.L356:
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
	ldr	r3, .L360
	ldrb	r2, [r3, #17]
	ldr	r3, .L360+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L358
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L358:
	@ sp needed
	bx	lr
.L361:
	.align	2
.L360:
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
	ldr	r4, .L370
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L363
	ldr	r1, .L370+4
	lsls	r1, r1, #24
	ldr	r5, .L370+8
	lsrs	r1, r1, #24
	bl	.L52
	cmp	r0, #0
	beq	.L364
.L366:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L370+12
	bl	.L21
	cmp	r0, #0
	beq	.L363
	movs	r0, #1
.L365:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L364:
	ldr	r1, .L370+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L52
	cmp	r0, #0
	bne	.L366
.L363:
	movs	r0, #3
	b	.L365
.L371:
	.align	2
.L370:
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
	ldr	r3, .L373
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L373+4
	ldr	r3, .L373+8
	bl	.L21
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L374:
	.align	2
.L373:
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
	beq	.L376
	movs	r3, #128
	strh	r3, [r4]
.L376:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L380
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
	ldr	r3, .L380+4
	bl	.L21
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L381:
	.align	2
.L380:
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
	ldr	r3, .L383
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L21
	mov	r2, sp
	ldr	r3, .L383+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L383+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L384:
	.align	2
.L383:
	.word	ReadSramFast
	.word	PAU_pairUpBitsRAMAddress
	.word	PAU_pairUpBattleGaugeRAMAddress
	.size	PAU_loadPairUpData, .-PAU_loadPairUpData
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
	ldr	r3, .L387
	movs	r6, r0
	movs	r5, #1
	bl	.L21
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L386
	ldr	r3, .L387+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L387+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L386
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L386:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L388:
	.align	2
.L387:
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
	bne	.L390
.L399:
	movs	r0, #0
.L391:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L390:
	ldr	r7, .L415
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L392:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L399
	cmp	r6, #0
	beq	.L393
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L393
	ldr	r3, .L415+4
	ldr	r2, .L415+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L393
	ldr	r2, .L415+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L413:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L414:
	bl	PAU_setBattleGauge
.L394:
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
	ldr	r3, .L415+16
	bl	.L21
	cmp	r0, #0
	bne	.L400
	adds	r6, r6, #1
	b	.L392
.L393:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L395
	ldr	r3, .L415+4
	ldr	r2, .L415+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L395
	ldr	r2, .L415+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L413
.L395:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L396
.L397:
	ldr	r3, .L415+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L414
.L396:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L397
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L397
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L394
	b	.L397
.L400:
	movs	r0, #1
	b	.L391
.L416:
	.align	2
.L415:
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
.L419:
	lsls	r0, r4, #24
	ldr	r3, .L427
	lsrs	r0, r0, #24
	bl	.L21
	cmp	r0, #0
	beq	.L418
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L418
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L427+4
	bl	.L21
.L418:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L419
	ldr	r3, .L427+8
	@ sp needed
	bl	.L21
	ldr	r3, .L427+12
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L428:
	.align	2
.L427:
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
	bhi	.L430
	ldr	r3, .L432
	ldrb	r0, [r5, #27]
	bl	.L21
	ldr	r3, .L432+4
	bl	.L21
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L431
	adds	r2, r4, #0
.L431:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L430:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L433:
	.align	2
.L432:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC229:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC230:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC231:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC232:
	.ascii	"PAU_AISProc\000"
	.global	NOSFERATUSPELL
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.set	.LANCHOR1,. + 128
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 48
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC232
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
	.word	.LC231
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
	.type	PAU_bAnimGaugeProcInstr, %object
	.size	PAU_bAnimGaugeProcInstr, 56
PAU_bAnimGaugeProcInstr:
	.short	1
	.short	0
	.word	.LC230
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
	.word	.LC229
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
.L52:
	bx	r5
.L100:
	bx	r6
.L26:
	bx	r7

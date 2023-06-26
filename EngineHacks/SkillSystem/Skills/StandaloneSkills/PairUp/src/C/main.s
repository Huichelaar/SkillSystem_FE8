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
	ldr	r5, .L37
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L37+4
	bl	.L21
	cmp	r0, #0
	beq	.L22
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L22
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L22
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L22
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L22
	ldr	r1, .L37+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L37+12
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	beq	.L26
.L27:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L37+16
	bl	.L16
.L22:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L26:
	ldr	r1, .L37+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	bne	.L27
	b	.L22
.L38:
	.align	2
.L37:
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
	ldr	r3, .L41
	bl	.L21
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L41+4
	bl	.L16
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L42:
	.align	2
.L41:
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
	ldr	r3, .L44
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L45:
	.align	2
.L44:
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
	ldr	r3, .L47
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L48:
	.align	2
.L47:
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
	ldr	r3, .L50
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L51:
	.align	2
.L50:
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
	beq	.L53
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L53
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L53
	ldr	r4, .L68
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L68+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L54
	movs	r1, r4
	movs	r0, r5
	bl	.L70
	ldr	r1, .L68+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L70
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L53
.L55:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L54:
	ldr	r3, .L68+12
	movs	r0, r7
	bl	.L21
	movs	r1, r4
	movs	r5, r0
	bl	.L70
	movs	r2, #1
	cmp	r0, #0
	bne	.L55
	ldr	r1, .L68+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L70
	movs	r2, #2
	cmp	r0, #0
	bne	.L55
.L53:
	movs	r2, #0
	b	.L55
.L69:
	.align	2
.L68:
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
	beq	.L72
	adds	r5, r5, #4
.L72:
	ldr	r6, .L84
	ldr	r4, .L84+4
	movs	r1, #0
	movs	r0, r6
	bl	.L16
	movs	r1, #0
	ldr	r0, .L84+8
	bl	.L16
	movs	r0, #3
	ldr	r3, .L84+12
	bl	.L21
	ldr	r3, [sp, #4]
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L84+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r0, .L84+20
	ldrsb	r7, [r2, r3]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L84+24
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
	bls	.L75
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L84+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L84+32
	bl	.L70
	ldr	r3, .L84+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L84+8
.L83:
	bl	.L70
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L77
	strb	r3, [r2]
.L71:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L75:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L84+28
	ldr	r6, .L84+32
	bl	.L70
	ldr	r3, .L84+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L84+36
	movs	r3, r5
	b	.L83
.L77:
	movs	r3, #0
	ldr	r0, [sp, #4]
	strb	r3, [r2]
	ldr	r3, .L84+40
	bl	.L21
	b	.L71
.L85:
	.align	2
.L84:
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
	beq	.L87
	adds	r5, r5, #4
.L87:
	ldr	r6, .L99
	ldr	r4, .L99+4
	movs	r1, #0
	movs	r0, r6
	bl	.L16
	movs	r1, #0
	ldr	r0, .L99+8
	bl	.L16
	movs	r0, #3
	ldr	r3, .L99+12
	bl	.L21
	movs	r2, #54
	movs	r7, #4
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, r2]
	ldr	r3, .L99+16
	ldr	r0, .L99+20
	adds	r3, r3, r2
	ldrsb	r7, [r3, r7]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L99+24
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
	bls	.L90
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L99+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L99+32
	bl	.L70
	ldr	r3, .L99+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L99+8
.L98:
	bl	.L70
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L92
	strb	r3, [r2]
.L86:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L90:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L99+28
	ldr	r6, .L99+32
	bl	.L70
	ldr	r3, .L99+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L99+36
	movs	r3, r5
	b	.L98
.L92:
	movs	r4, #0
	ldr	r0, [sp, #4]
	strb	r4, [r2]
	ldr	r3, .L99+40
	bl	.L21
	movs	r1, r4
	ldr	r0, .L99
	ldr	r5, .L99+4
	bl	.L39
	movs	r1, r4
	ldr	r0, .L99+8
	bl	.L39
	b	.L86
.L100:
	.align	2
.L99:
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
	bne	.LCB841
	b	.L116	@long jump
.LCB841:
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
	bl	.L70
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
	bl	.L70
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
	bl	.L70
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
	bl	.L70
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
	bl	.L39
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
	bne	.LCB1186
	b	.L154	@long jump
.LCB1186:
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
	bne	.LCB1206
	b	.L154	@long jump
.LCB1206:
	ldr	r0, .L179+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1212
	b	.L154	@long jump
.LCB1212:
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
	str	r3, [r0, #48]
	ldr	r3, .L179+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L179+40
	bl	.L21
	movs	r4, r0
	cmp	r0, r6
	bne	.L160
	ldr	r3, .L179+44
	movs	r1, #5
	ldr	r0, [sp, #8]
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
	movs	r0, r7
	ldr	r3, .L192+4
	adds	r0, r0, #8
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
	bl	.L39
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
	movs	r0, r6
	ldr	r3, .L205+4
	sub	sp, sp, #20
	adds	r0, r0, #8
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
	bl	.L70
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
	ldr	r6, [r0, #92]
	ldr	r5, .L218
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L218+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L218+8
	bl	.L21
	cmp	r0, #0
	beq	.L207
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L210
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L210:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L207
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L207:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L219:
	.align	2
.L218:
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
	ldr	r3, .L256
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L221
	ldr	r2, .L256+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L222
.L252:
	ldrb	r0, [r5, #27]
	ldr	r3, .L256+8
	bl	.L21
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L222
.L221:
	ldr	r2, .L256+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L252
.L222:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L223
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
	ldr	r3, .L256+16
	bl	.L21
.L223:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2004
	b	.L224	@long jump
.LCB2004:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L256+20
	bl	.L39
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L225
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
	ldr	r3, .L256+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L256+28
	bl	.L39
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L256+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L39
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L255:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L256+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L39
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L256+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L39
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L220:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L225:
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
	ldr	r3, .L256+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L256+28
	bl	.L39
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #78
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #24]
	ldr	r3, .L256+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L39
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L255
.L224:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L256+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L256+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L256+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L256+48
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
	beq	.L227
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L228
.L253:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L228
.L227:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L253
.L228:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L229
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L256+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L230
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2252
	b	.L231	@long jump
.LCB2252:
	lsls	r3, r3, #28
	bmi	.LCB2258
	b	.L232	@long jump
.LCB2258:
.L230:
	movs	r0, r7
	ldr	r3, .L256+56
	bl	.L21
	ldr	r3, .L256+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L21
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L256+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2277
	b	.L234	@long jump
.LCB2277:
	ldr	r3, .L256+60
	movs	r0, r7
	bl	.L21
	ldr	r3, .L256+64
	bl	.L21
	cmp	r0, #0
	bne	.LCB2285
	b	.L234	@long jump
.LCB2285:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L256+68
	rsbs	r1, r1, #0
	bl	.L21
	ldr	r0, .L256+72
	movs	r1, r4
	ldr	r3, .L256+76
	adds	r0, r0, #56
	bl	.L21
	movs	r1, #1
	ldr	r3, .L256+80
	bl	.L21
.L229:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L256+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L256+88
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
	beq	.L235
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
.L254:
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
	b	.L220
.L231:
	lsls	r3, r3, #30
	bpl	.LCB2385
	b	.L230	@long jump
.LCB2385:
.L232:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L233
	movs	r1, r3
.L233:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2401
	b	.L230	@long jump
.LCB2401:
	movs	r5, r3
	b	.L230
.L257:
	.align	2
.L256:
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
.L234:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L258
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L258+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L258+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L229
.L235:
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
	b	.L254
.L259:
	.align	2
.L258:
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
	beq	.L261
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L262
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L261:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L260
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L265
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L260:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L262:
	ldr	r2, .L273
	ldrh	r5, [r2]
	ldr	r2, .L273+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L263
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L261
.L263:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L261
.L265:
	ldr	r3, .L273
	ldr	r1, .L273+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L266
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L260
.L266:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L260
.L274:
	.align	2
.L273:
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
	bne	.L276
.L282:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L277
.L278:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L289
	bl	.L21
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L276:
	movs	r2, r0
	ldr	r1, .L289+4
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
	ldr	r7, .L289+8
	lsrs	r3, r3, #16
.L279:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L282
	cmp	r2, #0
	beq	.L286
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L280:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L279
.L286:
	movs	r5, #1
	b	.L280
.L277:
	ldr	r1, .L289+4
	ldrb	r5, [r1]
	ldr	r1, .L289+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L289+16
	lsrs	r3, r3, #16
.L283:
	cmp	r5, r1
	ble	.L278
	cmp	r2, #0
	beq	.L287
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L284:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L283
.L287:
	movs	r4, #1
	b	.L284
.L290:
	.align	2
.L289:
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
	bls	.L292
	movs	r2, #240
	ldr	r3, .L300
	strh	r2, [r3, #44]
	ldr	r2, .L300+4
	ldr	r1, .L300+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L300+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L293:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L296
	ldr	r3, .L300+16
	ldr	r0, .L300+20
	bl	.L21
	ldr	r1, .L300+24
	movs	r2, #32
	ldr	r3, .L300+28
	bl	.L21
	movs	r0, r4
	ldr	r1, .L300+32
	bl	PAU_bAnimGaugeScrEntries
.L296:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L292:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L294
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L294:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L295
	movs	r0, r4
	ldr	r3, .L300+36
	bl	.L21
	b	.L293
.L295:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L300+40
	bl	.L21
	b	.L293
.L301:
	.align	2
.L300:
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
	beq	.L303
	movs	r2, #0
	movs	r1, #56
.L303:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L312
	movs	r0, #1
	bl	.L70
	ldr	r3, .L312+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L302
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L305
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L305:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L306
	ldr	r3, .L312+8
.L311:
	bl	.L21
.L302:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L306:
	ldr	r3, .L312+12
	b	.L311
.L313:
	.align	2
.L312:
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
	ldr	r3, .L341
	ldr	r2, .L341+4
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
	ldr	r5, .L341+8
	ldr	r2, .L341+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L315
	ldr	r5, .L341+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L316
	cmp	r4, #0
	beq	.L338
.L320:
	cmp	r3, r2
	beq	.L318
.L319:
	ldr	r2, .L341+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L330
	adds	r3, r3, #1
	b	.L340
.L316:
	cmp	r4, #0
	beq	.L320
.L338:
	cmp	r3, r1
	bne	.L319
.L318:
	movs	r3, #0
.L340:
	strb	r3, [r5]
.L330:
	cmp	r6, #0
	bne	.L328
	b	.L322
.L315:
	cmp	r6, #0
	beq	.L322
	ldr	r5, .L341+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L323
	cmp	r4, #0
	beq	.L334
.L336:
	cmp	r3, r2
	beq	.L325
.L328:
	movs	r2, r0
	ldr	r1, .L341+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L326
.L322:
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
	ldr	r3, .L341+28
	bl	.L21
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L323:
	cmp	r4, #0
	beq	.L336
.L334:
	cmp	r3, r1
	bne	.L328
.L325:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L322
.L326:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L322
.L342:
	.align	2
.L341:
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
	ldr	r3, .L344
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L344+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L344+8
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L344+12
	ldr	r3, .L344+16
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L345:
	.align	2
.L344:
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
	ldr	r3, .L350
	movs	r5, r1
	bl	.L21
	ldr	r3, .L350+4
	bl	.L21
	cmp	r0, #39
	bhi	.L347
	ldr	r3, .L350+8
.L349:
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
.L347:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L349
.L351:
	.align	2
.L350:
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
	ldr	r1, .L369
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L369+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L21
	ldr	r1, .L369+8
	ldr	r3, .L369+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L369+16
	bl	.L21
	ldr	r3, .L369+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L353
	ldr	r3, .L369+24
	str	r3, [sp, #4]
.L353:
	movs	r7, #0
	ldr	r3, .L369+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L358:
	movs	r0, r5
	ldr	r3, .L369+32
	bl	.L21
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L369+36
	bl	.L21
	ldr	r3, .L369+40
	movs	r1, r0
	movs	r0, r5
	bl	.L21
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L369+44
	bl	.L21
	cmp	r7, #6
	bne	.L354
	ldr	r6, .L369+48
	ldr	r0, [sp, #8]
	bl	.L70
	ldr	r3, .L369+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L70
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L355
	adds	r3, r0, #0
.L355:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L356:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L360
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L361
	cmp	r4, #0
	blt	.L362
	movs	r2, #21
	cmp	r4, #0
	beq	.L363
	movs	r6, #4
	cmp	r4, #9
	ble	.L367
	cmp	r4, #99
	ble	.L365
.L368:
	movs	r0, #5
.L357:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L369+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L369+52
	bl	.L21
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L369+56
	bl	.L16
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L358
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L354:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L356
.L360:
	movs	r2, #20
	movs	r6, #3
	b	.L368
.L361:
	movs	r2, #20
	movs	r6, #3
.L365:
	movs	r0, #6
	b	.L357
.L362:
	movs	r2, #20
	movs	r6, #3
.L367:
	movs	r0, #7
	b	.L357
.L363:
	movs	r6, r4
	b	.L367
.L370:
	.align	2
.L369:
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
	ldr	r5, .L374
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L374+4
	adds	r0, r0, #48
	bl	.L21
	ldr	r3, .L374+8
	str	r0, [r4, #60]
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L374+12
	adds	r0, r0, #44
	bl	.L376
	movs	r6, #52
.L372:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L376
	cmp	r6, #108
	bne	.L372
	ldr	r0, .L374+16
	lsls	r0, r0, #16
	ldr	r3, .L374+20
	lsrs	r0, r0, #16
	bl	.L21
	ldr	r3, .L374+24
	movs	r1, r0
	movs	r0, r4
	bl	.L21
	movs	r1, r5
	ldr	r3, .L374+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L21
	ldr	r4, .L374+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L16
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L374+36
	bl	.L16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L375:
	.align	2
.L374:
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
	ldr	r3, .L382
	bl	.L21
	ldrb	r0, [r5, #2]
	ldr	r3, .L382+4
	bl	.L21
	movs	r1, #13
	ldr	r3, .L382+8
	movs	r5, r0
	bl	.L21
	movs	r6, r0
	ldr	r3, .L382+12
	bl	.L21
	ldr	r7, .L382+16
	ldr	r0, .L382+20
	movs	r1, r7
	ldr	r3, .L382+24
	bl	.L21
	ldr	r0, .L382+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L382+32
	bl	.L21
	ldr	r0, [r4, #60]
	ldr	r3, .L382+36
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
	ldr	r3, .L382+40
	bl	.L21
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L382+44
	ldr	r7, [r4, #60]
	bl	.L21
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L382+48
	movs	r0, r7
	bl	.L21
	ldr	r0, [r4, #60]
	ldr	r7, .L382+52
	lsls	r1, r6, #1
	adds	r1, r1, #70
	ldr	r3, .L382+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L21
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L382+60
	ldr	r3, .L382+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L382+68
	bl	.L21
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L378
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L382+72
	lsrs	r4, r4, #16
.L379:
	ldr	r5, [sp, #4]
	adds	r5, r5, #84
	adds	r5, r7, r5
	movs	r2, #0
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L382+76
	bl	.L21
	movs	r2, #128
	movs	r1, r4
	lsls	r2, r2, #7
	movs	r0, r5
	ldr	r3, .L382+76
	bl	.L21
	ldr	r3, .L382+80
	movs	r0, r6
	bl	.L21
	movs	r2, #0
	ldr	r3, .L382+84
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r4, r0, #2
	adds	r3, r7, r3
	adds	r0, r0, #3
.L380:
	cmp	r1, r2
	bgt	.L381
	@ sp needed
	movs	r0, #3
	ldr	r3, .L382+88
	bl	.L21
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L378:
	ldr	r4, .L382+92
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L382+96
	lsrs	r4, r4, #16
	b	.L379
.L381:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L380
.L383:
	.align	2
.L382:
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
	ldr	r3, .L385
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L21
	ldr	r3, .L385+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L385+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L385+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L385+16
	ldr	r3, .L385+20
	bl	.L21
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L386:
	.align	2
.L385:
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
	ldr	r0, .L388
	ldr	r3, .L388+4
	bl	.L21
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L388+8
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L389:
	.align	2
.L388:
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
	ldr	r6, .L392
	@ sp needed
	movs	r7, r0
	ldr	r5, .L392+4
	ldrb	r0, [r6, #12]
	bl	.L39
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L39
	ldr	r3, .L392+8
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
	ldr	r6, .L392+12
	bl	.L70
	movs	r6, r0
	ldr	r3, .L392+16
	bl	.L21
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L392+20
	bl	.L70
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L392+24
	bl	.L21
	movs	r0, r4
	ldr	r3, .L392+28
	bl	.L21
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L393:
	.align	2
.L392:
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
	ldr	r3, .L396
	ldrb	r2, [r3, #17]
	ldr	r3, .L396+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L394
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L394:
	@ sp needed
	bx	lr
.L397:
	.align	2
.L396:
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
	ldr	r4, .L406
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L399
	ldr	r1, .L406+4
	lsls	r1, r1, #24
	ldr	r5, .L406+8
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	beq	.L400
.L402:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L406+12
	bl	.L21
	cmp	r0, #0
	beq	.L399
	movs	r0, #1
.L401:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L400:
	ldr	r1, .L406+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	bne	.L402
.L399:
	movs	r0, #3
	b	.L401
.L407:
	.align	2
.L406:
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
	ldr	r3, .L409
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L409+4
	ldr	r3, .L409+8
	bl	.L21
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L410:
	.align	2
.L409:
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
	beq	.L412
	movs	r3, #128
	strh	r3, [r4]
.L412:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L416
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
	ldr	r3, .L416+4
	bl	.L21
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L417:
	.align	2
.L416:
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
	ldr	r3, .L419
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L21
	mov	r2, sp
	ldr	r3, .L419+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L419+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L420:
	.align	2
.L419:
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
	bge	.L422
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L421:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L422:
	ldr	r3, .L424
	bl	.L21
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
	b	.L421
.L425:
	.align	2
.L424:
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
	ldr	r3, .L433
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
.L427:
	ldr	r3, .L433+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L431
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L431:
	cmp	r4, #0
	beq	.L432
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L428:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L429
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L430:
	adds	r5, r5, #1
	b	.L427
.L432:
	movs	r7, #1
	b	.L428
.L429:
	movs	r2, r6
	ldr	r3, .L433+8
	bl	.L21
	b	.L430
.L434:
	.align	2
.L433:
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
	beq	.L435
	bl	PAU_forecastDrawGaugeIcons.part.0
.L435:
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
	ldr	r0, .L468
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L468+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L468+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB4182
	b	.L441	@long jump
.LCB4182:
	cmp	r0, #0
	bne	.LCB4184
	b	.L442	@long jump
.LCB4184:
	ldr	r1, .L468+12
	ldr	r0, .L468+16
	bl	.L21
	movs	r1, #12
.L466:
	movs	r3, #1
	str	r3, [sp, #4]
.L443:
	ldr	r6, .L468+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L468+24
	bl	.L376
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L468
	ldr	r3, .L468+28
	adds	r0, r7, r6
	bl	.L21
	cmp	r4, #0
	beq	.L445
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L445:
	movs	r3, #159
	ldr	r4, .L468+4
	lsls	r3, r3, #2
	ldr	r6, .L468+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L468+28
	adds	r0, r0, r6
	bl	.L21
	cmp	r5, #0
	beq	.L446
	ldr	r3, .L468+32
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
.L446:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L468+36
	adds	r0, r6, r0
	bl	.L21
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB4265
	b	.L447	@long jump
.LCB4265:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB4272
	b	.L447	@long jump
.LCB4272:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L448:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L468+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L468+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L450
	movs	r2, #255
.L450:
	movs	r1, #2
	bl	.L21
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L468+40
	movs	r1, #2
	bl	.L39
	ldr	r4, .L468+4
	movs	r0, r7
	movs	r3, r4
	adds	r0, r0, #127
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r6, r0
	movs	r1, #2
	bl	.L39
	movs	r0, r7
	movs	r3, r4
	adds	r0, r0, #255
	adds	r3, r3, #106
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r6, r0
	movs	r1, #2
	bl	.L39
	ldr	r3, .L468
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L468
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L468+44
	bl	.L70
	movs	r4, #255
	cmp	r0, #181
	beq	.L452
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L452:
	ldr	r3, .L468
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L468
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L70
	movs	r6, #255
	cmp	r0, #181
	beq	.L454
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L454:
	movs	r0, r7
	ldr	r3, .L468
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L468+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L456
	movs	r2, #255
.L456:
	movs	r1, #2
	bl	.L39
	movs	r0, r7
	ldr	r5, .L468+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L468+40
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r3, .L468
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L16
	ldr	r3, .L468+48
	adds	r0, r7, r3
	movs	r2, r6
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r4, .L468+52
	bl	.L16
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L468+56
	adds	r1, r1, r5
	ldr	r0, .L468+60
	bl	.L16
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L468+64
	bl	.L16
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L468+68
	bl	.L16
	ldr	r3, .L468+4
	adds	r3, r3, #74
	ldr	r6, .L468+72
	ldrh	r0, [r3]
	bl	.L70
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L468+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L16
	ldr	r3, .L468
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L70
	movs	r2, #192
	movs	r1, r0
	subs	r0, r7, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L442:
	ldr	r1, .L468+80
	ldr	r0, .L468+16
	bl	.L21
	movs	r1, #11
.L467:
	str	r5, [sp, #4]
	b	.L443
.L441:
	cmp	r0, #0
	beq	.L444
	ldr	r1, .L468+84
	ldr	r0, .L468+16
	bl	.L21
	movs	r1, #11
	b	.L466
.L444:
	ldr	r1, .L468+88
	ldr	r0, .L468+16
	bl	.L21
	movs	r1, #10
	b	.L467
.L447:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L468
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L448
.L469:
	.align	2
.L468:
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
	ldr	r7, .L491
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L491+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB4552
	b	.L471	@long jump
.LCB4552:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB4556
	b	.L472	@long jump
.LCB4556:
	ldr	r1, .L491+8
	ldr	r0, .L491+12
	ldr	r3, .L491+16
	bl	.L21
	movs	r1, #12
.L490:
	movs	r3, #1
.L488:
	ldr	r6, .L491+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L491+24
	movs	r3, #0
	bl	.L16
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L491
	ldr	r3, .L491+28
	adds	r0, r4, r6
	bl	.L21
	cmp	r5, #0
	beq	.L475
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L475:
	movs	r3, #223
	ldr	r5, .L491+4
	ldr	r6, .L491+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L491+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L21
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L476
	ldr	r3, .L491+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L491+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L476:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L491+40
	adds	r0, r6, r0
	bl	.L21
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L477
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L477
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
.L477:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L491+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L491+44
	cmp	r2, #99
	bls	.L478
	movs	r2, #255
.L478:
	movs	r1, #2
	bl	.L21
	movs	r0, r4
	ldr	r3, .L491+4
	ldr	r6, .L491+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L491+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L39
	movs	r0, r4
	ldr	r3, .L491+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L39
	movs	r0, r4
	ldr	r3, .L491+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L39
	ldr	r3, .L491+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L491+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L39
	ldr	r3, .L491+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L491+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L39
	movs	r0, r4
	ldr	r3, .L491
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L480
	movs	r2, #255
.L480:
	movs	r1, #2
	bl	.L39
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L491+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L491+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L70
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L70
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L491+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L70
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L491+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L70
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L491+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L70
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L491+68
	bl	.L70
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L491+72
	adds	r1, r1, r5
	ldr	r0, .L491+76
	bl	.L70
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L491+80
	bl	.L70
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L491+84
	bl	.L70
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L491+88
	bl	.L70
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L491+92
	bl	.L70
	ldr	r3, .L491+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L491+96
	bl	.L21
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L491+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L70
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L491+96
	bl	.L21
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L70
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L472:
	ldr	r1, .L491+104
	ldr	r0, .L491+12
	ldr	r3, .L491+16
	bl	.L21
	movs	r1, #11
.L489:
	ldr	r3, [sp]
	b	.L488
.L471:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L474
	ldr	r1, .L491+108
	ldr	r0, .L491+12
	ldr	r3, .L491+16
	bl	.L21
	movs	r1, #11
	b	.L490
.L474:
	ldr	r1, .L491+112
	ldr	r0, .L491+12
	ldr	r3, .L491+16
	bl	.L21
	movs	r1, #10
	b	.L489
.L492:
	.align	2
.L491:
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
	beq	.L494
	cmp	r3, #2
	beq	.L495
.L493:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L494:
	ldr	r3, .L497
	bl	.L21
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L493
.L495:
	ldr	r3, .L497
	bl	.L21
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L493
.L498:
	.align	2
.L497:
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
	ldr	r3, .L502
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
	blt	.L500
	adds	r3, r3, #20
.L500:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L502+4
	bl	.L21
	pop	{r4}
	pop	{r0}
	bx	r0
.L503:
	.align	2
.L502:
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
	beq	.L505
	adds	r6, r6, #4
.L505:
	ldr	r0, .L514
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L514+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L514+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L508
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L514+12
	ldr	r5, .L514+16
	bl	.L39
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L514+20
	ldr	r0, .L514+24
	bl	.L39
.L509:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L514+28
	bl	.L21
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L508:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L514+12
	ldr	r7, .L514+16
	bl	.L376
	ldr	r1, .L514+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L514+24
	adds	r1, r5, r1
	bl	.L376
	b	.L509
.L515:
	.align	2
.L514:
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
	ldr	r7, .L532
	ldr	r6, .L532+4
	cmp	r3, #127
	bhi	.L517
.L519:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L518:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L520
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L520:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L523
	beq	.L524
	movs	r2, #2
.L523:
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
	ldr	r3, .L532+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L21
.L524:
	cmp	r7, #0
	beq	.L516
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
	ldr	r3, .L532+8
	adds	r0, r0, #19
	bl	.L21
.L516:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L517:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L518
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L519
	movs	r5, r0
	b	.L518
.L533:
	.align	2
.L532:
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
	bls	.L535
	ldr	r0, .L542
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L536
.L535:
	ldr	r0, .L542+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L536:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L542+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L542+12
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
	ble	.L537
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L542+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L542+20
	ldr	r7, .L542+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L376
.L537:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L534
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L542+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L542+20
	ldr	r4, .L542+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L16
.L534:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L543:
	.align	2
.L542:
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
	beq	.L545
	ldr	r3, .L555
	bl	.L21
	cmp	r0, #0
	beq	.L546
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L546
	movs	r0, r4
	ldr	r3, .L555+4
.L554:
	bl	.L21
.L544:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L546:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L555+8
	bl	.L21
.L545:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L544
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L555+12
	b	.L554
.L556:
	.align	2
.L555:
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
	ldr	r3, .L559
	movs	r6, r0
	movs	r5, #1
	bl	.L21
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L558
	ldr	r3, .L559+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L559+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L558
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L558:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L560:
	.align	2
.L559:
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
	bne	.L562
.L571:
	movs	r0, #0
.L563:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L562:
	ldr	r7, .L587
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L564:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L571
	cmp	r6, #0
	beq	.L565
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L565
	ldr	r3, .L587+4
	ldr	r2, .L587+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L565
	ldr	r2, .L587+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L585:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L586:
	bl	PAU_setBattleGauge
.L566:
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
	ldr	r3, .L587+16
	bl	.L21
	cmp	r0, #0
	bne	.L572
	adds	r6, r6, #1
	b	.L564
.L565:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L567
	ldr	r3, .L587+4
	ldr	r2, .L587+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L567
	ldr	r2, .L587+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L585
.L567:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L568
.L569:
	ldr	r3, .L587+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L586
.L568:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L569
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L569
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L566
	b	.L569
.L572:
	movs	r0, #1
	b	.L563
.L588:
	.align	2
.L587:
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
.L591:
	lsls	r0, r4, #24
	ldr	r3, .L599
	lsrs	r0, r0, #24
	bl	.L21
	cmp	r0, #0
	beq	.L590
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L590
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L599+4
	bl	.L21
.L590:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L591
	ldr	r3, .L599+8
	@ sp needed
	bl	.L21
	ldr	r3, .L599+12
	bl	.L21
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L600:
	.align	2
.L599:
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
	bhi	.L602
	ldr	r3, .L604
	ldrb	r0, [r5, #27]
	bl	.L21
	ldr	r3, .L604+4
	bl	.L21
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L603
	adds	r2, r4, #0
.L603:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L602:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L605:
	.align	2
.L604:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC355:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC356:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC357:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC358:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC359:
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
	.word	.LC359
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
	.word	.LC358
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
	.word	.LC356
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
	.word	.LC355
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
	.word	.LC357
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
.L21:
	bx	r3
.L16:
	bx	r4
.L39:
	bx	r5
.L70:
	bx	r6
.L376:
	bx	r7

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
	ldr	r5, .L25
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L25+4
	bl	.L27
	cmp	r0, #0
	beq	.L10
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L10
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L10
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L10
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L10
	ldr	r1, .L25+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L25+12
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	beq	.L14
.L15:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L25+16
	bl	.L29
.L10:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L14:
	ldr	r1, .L25+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	bne	.L15
	b	.L10
.L26:
	.align	2
.L25:
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
	ldr	r3, .L31
	bl	.L27
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L31+4
	bl	.L29
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L32:
	.align	2
.L31:
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
	ldr	r3, .L34
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L35:
	.align	2
.L34:
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
	ldr	r3, .L37
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L38:
	.align	2
.L37:
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
	ldr	r3, .L40
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L41:
	.align	2
.L40:
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
	beq	.L43
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L43
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L43
	ldr	r4, .L58
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L58+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L44
	movs	r1, r4
	movs	r0, r5
	bl	.L60
	ldr	r1, .L58+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L60
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L43
.L45:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L44:
	ldr	r3, .L58+12
	movs	r0, r7
	bl	.L27
	movs	r1, r4
	movs	r5, r0
	bl	.L60
	movs	r2, #1
	cmp	r0, #0
	bne	.L45
	ldr	r1, .L58+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L60
	movs	r2, #2
	cmp	r0, #0
	bne	.L45
.L43:
	movs	r2, #0
	b	.L45
.L59:
	.align	2
.L58:
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
	ldr	r3, .L62
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L63:
	.align	2
.L62:
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
	ldr	r1, .L65
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
.L66:
	.align	2
.L65:
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
	ldr	r3, .L68
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L69:
	.align	2
.L68:
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
	ldr	r3, .L72
	ldr	r1, [r3]
	ldr	r3, .L72+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L71
	adds	r3, r0, #0
.L71:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L73:
	.align	2
.L72:
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
	.global	PAU_findPairUpBAnimID
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_findPairUpBAnimID, %function
PAU_findPairUpBAnimID:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	movs	r0, #0
	@ sp needed
	bx	lr
	.size	PAU_findPairUpBAnimID, .-PAU_findPairUpBAnimID
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
	beq	.L76
	movs	r3, #0
	ldr	r4, .L88
	str	r3, [sp]
	movs	r3, r2
	bl	.L29
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L78
	cmp	r7, #0
	bne	.L79
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L88+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L88+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L86:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L87
.L78:
	cmp	r7, #0
	bne	.L81
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L88+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L88+8
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
.L87:
	movs	r0, #0
	bl	.L60
.L85:
	ldr	r3, .L88+12
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
	ldr	r3, .L88+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L88+20
	bl	.L27
.L76:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L79:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L88+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L60
	ldr	r3, .L88+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L86
.L81:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L88+4
	movs	r0, r6
	bl	.L29
	ldr	r3, .L88+8
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
	ldr	r5, .L88+4
	asrs	r4, r4, #16
	bl	.L28
	b	.L85
.L89:
	.align	2
.L88:
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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	movs	r4, r0
	movs	r0, r2
	movs	r7, r1
	movs	r5, r2
	str	r3, [sp, #4]
	bl	PAU_isPairedUp
	cmp	r0, #0
	bne	.LCB635
	b	.L90	@long jump
.LCB635:
	ldr	r3, .L111
	ldrb	r0, [r5, #27]
	bl	.L27
	ldr	r3, .L111+4
	ldr	r6, [r3]
	ldr	r3, .L111+8
	ldrb	r1, [r3]
	movs	r3, #1
	movs	r0, r3
	lsls	r0, r0, r1
	ldr	r2, [r6, #8]
	tst	r2, r0
	bne	.LCB649
	b	.L90	@long jump
.LCB649:
	ldr	r1, .L111+12
	ldrb	r1, [r1]
	lsls	r3, r3, r1
	tst	r2, r3
	bne	.LCB655
	b	.L90	@long jump
.LCB655:
	ldrb	r3, [r4, #18]
	ldr	r2, .L111+16
	ldr	r1, .L111+16
	lsls	r3, r3, #2
	ldrb	r2, [r3, r2]
	adds	r3, r1, r3
	ldrb	r1, [r3, #1]
	ldr	r0, .L111+20
	cmp	r2, #255
	beq	.L94
	ldr	r3, [r6, #12]
	lsls	r2, r2, #2
	ldr	r0, [r2, r3]
	ldr	r3, [r6, #16]
	adds	r0, r3, r0
.L94:
	ldr	r3, .L111+24
	bl	.L27
	ldr	r3, .L111+28
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [sp, #4]
	movs	r5, r0
	cmp	r2, #0
	bne	.L95
	rsbs	r3, r3, #0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
.L95:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	ldr	r2, [sp]
	ldrh	r3, [r4, #2]
	adds	r3, r2, r3
	strh	r3, [r5, #2]
	ldr	r2, .L111+32
	ldrh	r3, [r4, #4]
	ldrh	r2, [r2]
	adds	r3, r3, r2
	movs	r2, #132
	strh	r3, [r5, #4]
	ldrh	r3, [r4, #8]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	movs	r2, #224
	strh	r3, [r5, #8]
	ldrh	r3, [r4, #12]
	lsls	r2, r2, #3
	ands	r3, r2
	ldrh	r2, [r5, #12]
	orrs	r3, r2
	strh	r3, [r5, #12]
	movs	r3, #0
	movs	r2, #128
	strh	r3, [r5, #14]
	ldrb	r3, [r4, #18]
	strb	r3, [r5, #18]
	ldr	r3, [r4, #44]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	str	r3, [r5, #44]
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L96
	ldr	r3, [r6, #20]
.L97:
	str	r3, [r5, #48]
	ldrb	r3, [r7, #18]
	ldr	r2, .L111+16
	lsls	r3, r3, #2
	adds	r3, r2, r3
	ldrb	r2, [r3, #2]
	ldrb	r1, [r3, #3]
	ldr	r0, .L111+20
	cmp	r2, #255
	beq	.L98
	ldr	r3, [r6, #12]
	lsls	r2, r2, #2
	ldr	r0, [r2, r3]
	ldr	r3, [r6, #16]
	adds	r0, r3, r0
.L98:
	ldr	r3, .L111+24
	bl	.L27
	ldrh	r3, [r7, #2]
	ldr	r2, [sp]
	adds	r3, r2, r3
	strh	r3, [r0, #2]
	ldr	r2, .L111+32
	ldrh	r3, [r7, #4]
	ldrh	r2, [r2]
	adds	r3, r3, r2
	movs	r2, #132
	strh	r3, [r0, #4]
	ldrh	r3, [r7, #8]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	movs	r2, #224
	strh	r3, [r0, #8]
	ldrh	r3, [r7, #12]
	lsls	r2, r2, #3
	ands	r3, r2
	ldrh	r2, [r0, #12]
	orrs	r3, r2
	strh	r3, [r0, #12]
	movs	r3, #0
	movs	r2, #128
	strh	r3, [r0, #14]
	ldrb	r3, [r7, #18]
	strb	r3, [r0, #18]
	ldr	r3, [r7, #44]
	lsls	r2, r2, #5
	adds	r3, r3, r2
	str	r3, [r0, #44]
	ldr	r3, [sp, #4]
	movs	r4, r0
	cmp	r3, #0
	beq	.L99
	ldr	r3, [r6, #20]
.L100:
	ldr	r6, .L111+36
	str	r3, [r4, #48]
	movs	r0, r6
	ldr	r3, .L111+40
	bl	.L27
	cmp	r0, #0
	bne	.L101
	ldr	r3, .L111+44
	movs	r1, #5
	movs	r0, r6
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L111+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L111+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L111+56
	ldr	r3, [r3]
	movs	r2, r0
	str	r3, [r0, #56]
	movs	r3, #0
	adds	r2, r2, #41
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r3, [r0, #68]
	str	r3, [r0, #72]
	strb	r3, [r2]
	strh	r3, [r0, #42]
.L101:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L102
	str	r5, [r0, #68]
	str	r4, [r0, #72]
.L90:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L96:
	ldr	r3, [r6, #24]
	b	.L97
.L99:
	ldr	r3, [r6, #24]
	b	.L100
.L102:
	str	r5, [r0, #60]
	str	r4, [r0, #64]
	b	.L90
.L112:
	.align	2
.L111:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L122
	movs	r5, r0
	ldr	r0, .L122+4
	bl	.L27
	movs	r4, r0
	movs	r0, r5
	cmp	r4, #0
	bne	.L114
	ldr	r3, .L122+8
	bl	.L27
.L113:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L114:
	ldr	r3, .L122+12
	bl	.L27
	lsls	r3, r0, #1
	movs	r2, r0
	movs	r0, #1
	movs	r1, r0
	lsls	r1, r1, r3
	movs	r3, r1
	movs	r1, r4
	adds	r1, r1, #43
	ldrb	r6, [r1]
	orrs	r3, r6
	strb	r3, [r1]
	movs	r3, r4
	movs	r1, #0
	movs	r6, #60
	adds	r3, r3, #41
	strb	r1, [r3]
	strb	r6, [r3, #1]
	ldr	r3, .L122+16
	ldrh	r3, [r3]
	cmp	r3, r1
	beq	.L116
	ldr	r3, .L122+20
	cmp	r2, r1
	bne	.L117
	adds	r1, r1, #24
.L121:
	bl	.L27
.L116:
	movs	r2, #32
	ldr	r1, [r4, #44]
	ldrh	r3, [r1, #16]
	orrs	r3, r2
	strh	r3, [r1, #16]
	movs	r3, #8
	ldrh	r0, [r1]
	orrs	r0, r3
	strh	r0, [r1]
	ldr	r1, [r4, #48]
	ldrh	r0, [r1, #16]
	orrs	r0, r2
	strh	r0, [r1, #16]
	ldrh	r0, [r1]
	orrs	r0, r3
	strh	r0, [r1]
	ldr	r1, [r4, #52]
	ldrh	r0, [r1, #16]
	orrs	r0, r2
	strh	r0, [r1, #16]
	ldrh	r0, [r1]
	orrs	r0, r3
	strh	r0, [r1]
	ldr	r1, [r4, #56]
	ldrh	r0, [r1, #16]
	orrs	r2, r0
	strh	r2, [r1, #16]
	ldrh	r2, [r1]
	orrs	r3, r2
	strh	r3, [r1]
	movs	r1, #128
	movs	r3, #2
	ldrsh	r2, [r5, r3]
	ldr	r3, .L122+24
	ldr	r4, .L122+28
	ldrh	r0, [r3]
	lsls	r1, r1, #1
	movs	r3, #1
	bl	.L29
	b	.L113
.L117:
	movs	r2, r1
	movs	r1, #232
	b	.L121
.L123:
	.align	2
.L122:
	.word	ProcFind
	.word	.LANCHOR0
	.word	StartEfxSureShotAnime
	.word	GetAISSubjectId
	.word	gSomethingRelatedToAnimAndDistance
	.word	SetBgPosition
	.word	PAU_dualStrikeSkillActivationSound
	.word	PlaySoundAt
	.size	PAU_dualStrikeAnim, .-PAU_dualStrikeAnim
	.align	1
	.global	PAU_swapBAnimLocs
	.syntax unified
	.code	16
	.thumb_func
	.fpu softvfp
	.type	PAU_swapBAnimLocs, %function
PAU_swapBAnimLocs:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r3, r0
	push	{r4, r5, r6, r7, lr}
	adds	r3, r3, #41
	sub	sp, sp, #20
	str	r3, [sp, #8]
	str	r1, [sp, #4]
	ldrb	r3, [r3]
	ldr	r2, [sp, #8]
	adds	r3, r3, #1
	strb	r3, [r2]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	beq	.LCB1018
	b	.L125	@long jump
.LCB1018:
	ldr	r2, [r0, #60]
	ldr	r6, [r0, #44]
	ldr	r5, [r0, #48]
	str	r2, [sp]
	ldr	r7, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L126
	ldr	r3, .L132
.L130:
	ldr	r3, [r3]
	ldrb	r0, [r3, #27]
	ldr	r3, .L132+4
	bl	.L27
	movs	r3, r7
	movs	r7, r5
	movs	r5, r3
	ldr	r3, [sp]
	str	r6, [sp]
	movs	r6, r3
.L126:
	movs	r3, r4
	adds	r3, r3, #42
	str	r3, [sp, #12]
	ldr	r2, [sp, #8]
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L127
	ldr	r3, [sp]
	ldrh	r2, [r6, #10]
	ldrh	r3, [r3, #10]
	ldr	r1, [sp]
	strh	r2, [r1, #10]
	strh	r3, [r6, #10]
	movs	r2, #2
	ldrsh	r3, [r1, r2]
	movs	r1, #2
	ldrsh	r2, [r6, r1]
	ldr	r1, [sp]
	strh	r2, [r1, #2]
	strh	r3, [r6, #2]
	movs	r2, #4
	ldrsh	r3, [r1, r2]
	movs	r1, #4
	ldrsh	r2, [r6, r1]
	ldr	r1, [sp]
	strh	r2, [r1, #4]
	strh	r3, [r6, #4]
	ldrh	r2, [r5, #10]
	ldrh	r3, [r7, #10]
	strh	r2, [r7, #10]
	strh	r3, [r5, #10]
	movs	r2, #2
	ldrsh	r3, [r7, r2]
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	strh	r2, [r7, #2]
	strh	r3, [r5, #2]
	movs	r2, #4
	ldrsh	r3, [r7, r2]
	movs	r1, #4
	ldrsh	r2, [r5, r1]
	strh	r2, [r7, #4]
	strh	r3, [r5, #4]
	ldr	r3, .L132+8
	bl	.L27
.L127:
	ldr	r3, [sp, #8]
	ldrb	r2, [r3]
	ldr	r3, [sp, #12]
	ldrb	r3, [r3]
	cmp	r2, r3
	bcc	.L124
	ldr	r3, [sp, #4]
	lsls	r2, r3, #3
	movs	r3, #128
	movs	r0, #0
	ldr	r1, .L132+12
	lsls	r3, r3, #18
	str	r6, [r2, r3]
	str	r5, [r2, r1]
	ldr	r2, [sp, #4]
	lsls	r1, r2, #1
	ldr	r2, .L132+16
	strh	r0, [r1, r2]
	ldr	r2, [sp, #4]
	lsls	r1, r2, #2
	ldr	r2, .L132+20
	ldr	r2, [r2]
	ldr	r2, [r2, #12]
	mov	ip, r2
	mov	r0, ip
	ldr	r2, .L132+24
	str	r0, [r1, r2]
	ldr	r2, [r3]
	movs	r3, #64
	movs	r0, #8
	ldrh	r1, [r2, #16]
	orrs	r1, r3
	strh	r1, [r2, #16]
	ldrh	r1, [r2]
	bics	r1, r0
	strh	r1, [r2]
	ldr	r2, .L132+12
	ldr	r2, [r2]
	ldrh	r1, [r2, #16]
	orrs	r1, r3
	strh	r1, [r2, #16]
	ldrh	r1, [r2]
	bics	r1, r0
	strh	r1, [r2]
	ldr	r2, .L132+28
	ldr	r2, [r2]
	ldrh	r1, [r2, #16]
	orrs	r1, r3
	strh	r1, [r2, #16]
	ldrh	r1, [r2]
	bics	r1, r0
	strh	r1, [r2]
	ldr	r2, .L132+32
	ldr	r2, [r2]
	ldrh	r1, [r2, #16]
	orrs	r3, r1
	strh	r3, [r2, #16]
	ldrh	r3, [r2]
	bics	r3, r0
	strh	r3, [r2]
	ldr	r3, [sp]
	movs	r0, r6
	ldrb	r1, [r3, #18]
	ldr	r3, .L132+36
	bl	.L27
	movs	r0, r5
	ldr	r3, .L132+36
	ldrb	r1, [r7, #18]
	bl	.L27
	movs	r0, #0
	ldr	r3, [sp]
	ldrh	r3, [r3, #14]
	strh	r3, [r6, #14]
	ldrh	r3, [r7, #14]
	strh	r3, [r5, #14]
	ldr	r3, [sp, #8]
	strb	r0, [r3]
	ldr	r3, [sp, #4]
	adds	r4, r4, #43
	cmp	r3, r0
	bne	.L129
	movs	r2, #1
	ldrb	r3, [r4]
	bics	r3, r2
	movs	r2, r3
	movs	r3, #2
.L131:
	eors	r3, r2
	strb	r3, [r4]
.L124:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L125:
	ldr	r2, [r0, #68]
	ldr	r6, [r0, #52]
	ldr	r5, [r0, #56]
	str	r2, [sp]
	ldr	r7, [r0, #72]
	lsls	r3, r3, #28
	bpl	.LCB1218
	b	.L126	@long jump
.LCB1218:
	ldr	r3, .L132+40
	b	.L130
.L129:
	movs	r2, #4
	ldrb	r3, [r4]
	bics	r3, r2
	adds	r2, r2, r2
	b	.L131
.L133:
	.align	2
.L132:
	.word	gpUnitLeft_BattleStruct
	.word	GetUnit
	.word	SortAISs
	.word	33554436
	.word	gBattleAnimAnimationIndex
	.word	battleAnims
	.word	gpBattleAnimFrameStartLookup
	.word	33554440
	.word	33554444
	.word	SwitchAISFrameDataFromBARoundType
	.word	gpUnitRight_BattleStruct
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
	beq	.L135
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L136
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L135:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L134
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L139
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L134:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L136:
	ldr	r2, .L147
	ldrh	r5, [r2]
	ldr	r2, .L147+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L137
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L135
.L137:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L135
.L139:
	ldr	r3, .L147
	ldr	r1, .L147+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L140
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L134
.L140:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L134
.L148:
	.align	2
.L147:
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.size	PAU_adjustBAnimLocs, .-PAU_adjustBAnimLocs
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
	ldr	r3, .L150
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L150+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L150+8
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L150+12
	ldr	r3, .L150+16
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L151:
	.align	2
.L150:
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
	ldr	r3, .L156
	movs	r5, r1
	bl	.L27
	ldr	r3, .L156+4
	bl	.L27
	cmp	r0, #39
	bhi	.L153
	ldr	r3, .L156+8
.L155:
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
.L153:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L155
.L157:
	.align	2
.L156:
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
	ldr	r1, .L175
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L175+4
	movs	r2, #14
	adds	r1, r1, #48
	movs	r5, r0
	add	r0, sp, #16
	bl	.L27
	ldr	r1, .L175+8
	ldr	r3, .L175+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L175+16
	bl	.L27
	ldr	r3, .L175+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L159
	ldr	r3, .L175+24
	str	r3, [sp, #4]
.L159:
	movs	r7, #0
	ldr	r3, .L175+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L164:
	movs	r0, r5
	ldr	r3, .L175+32
	bl	.L27
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L175+36
	bl	.L27
	ldr	r3, .L175+40
	movs	r1, r0
	movs	r0, r5
	bl	.L27
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L175+44
	bl	.L27
	cmp	r7, #6
	bne	.L160
	ldr	r6, .L175+48
	ldr	r0, [sp, #8]
	bl	.L60
	ldr	r3, .L175+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L60
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L161
	adds	r3, r0, #0
.L161:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L162:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L166
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L167
	cmp	r4, #0
	blt	.L168
	movs	r2, #21
	cmp	r4, #0
	beq	.L169
	movs	r6, #4
	cmp	r4, #9
	ble	.L173
	cmp	r4, #99
	ble	.L171
.L174:
	movs	r0, #5
.L163:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L175+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L175+52
	bl	.L27
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L175+56
	bl	.L29
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L164
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L160:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L162
.L166:
	movs	r2, #20
	movs	r6, #3
	b	.L174
.L167:
	movs	r2, #20
	movs	r6, #3
.L171:
	movs	r0, #6
	b	.L163
.L168:
	movs	r2, #20
	movs	r6, #3
.L173:
	movs	r0, #7
	b	.L163
.L169:
	movs	r6, r4
	b	.L173
.L176:
	.align	2
.L175:
	.word	.LANCHOR0
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
	ldr	r5, .L180
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L180+4
	adds	r0, r0, #64
	bl	.L27
	ldr	r3, .L180+8
	str	r0, [r4, #60]
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L180+12
	adds	r0, r0, #44
	bl	.L182
	movs	r6, #52
.L178:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L182
	cmp	r6, #108
	bne	.L178
	ldr	r0, .L180+16
	lsls	r0, r0, #16
	ldr	r3, .L180+20
	lsrs	r0, r0, #16
	bl	.L27
	ldr	r3, .L180+24
	movs	r1, r0
	movs	r0, r4
	bl	.L27
	movs	r1, r5
	ldr	r3, .L180+28
	movs	r2, #12
	adds	r1, r1, #88
	add	r0, sp, #4
	bl	.L27
	ldr	r4, .L180+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L29
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L180+36
	bl	.L29
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L181:
	.align	2
.L180:
	.word	.LANCHOR0
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
	ldr	r3, .L188
	bl	.L27
	ldrb	r0, [r5, #2]
	ldr	r3, .L188+4
	bl	.L27
	movs	r1, #13
	ldr	r3, .L188+8
	movs	r5, r0
	bl	.L27
	movs	r6, r0
	ldr	r3, .L188+12
	bl	.L27
	ldr	r7, .L188+16
	ldr	r0, .L188+20
	movs	r1, r7
	ldr	r3, .L188+24
	bl	.L27
	ldr	r0, .L188+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L188+32
	bl	.L27
	ldr	r0, [r4, #60]
	ldr	r3, .L188+36
	adds	r0, r0, #44
	bl	.L27
	movs	r2, r5
	ldr	r0, [r4, #60]
	movs	r1, r6
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L188+40
	bl	.L27
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L188+44
	ldr	r7, [r4, #60]
	bl	.L27
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L188+48
	movs	r0, r7
	bl	.L27
	ldr	r3, .L188+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L188+56
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L188+60
	ldr	r3, .L188+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L188+68
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L184
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L185:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L188+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L188+72
	bl	.L27
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L188+72
	bl	.L27
	ldr	r3, .L188+76
	movs	r0, r6
	bl	.L27
	ldr	r3, .L188+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L188+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L186:
	cmp	r1, r2
	bgt	.L187
	@ sp needed
	movs	r0, #3
	ldr	r3, .L188+84
	bl	.L27
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L184:
	ldr	r4, .L188+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L188+92
	lsrs	r4, r4, #16
	b	.L185
.L187:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L186
.L189:
	.align	2
.L188:
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
	ldr	r3, .L191
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L27
	ldr	r3, .L191+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L191+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L191+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L191+16
	ldr	r3, .L191+20
	bl	.L27
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L192:
	.align	2
.L191:
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
	ldr	r0, .L194
	ldr	r3, .L194+4
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L194+8
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L195:
	.align	2
.L194:
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
	ldr	r6, .L198
	@ sp needed
	movs	r7, r0
	ldr	r5, .L198+4
	ldrb	r0, [r6, #12]
	bl	.L28
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L28
	ldr	r3, .L198+8
	movs	r5, r0
	bl	.L27
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r5, r1]
	ldrsb	r2, [r4, r2]
	ldrsb	r3, [r4, r3]
	ldrsb	r0, [r5, r0]
	ldr	r6, .L198+12
	bl	.L60
	movs	r6, r0
	ldr	r3, .L198+16
	bl	.L27
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L198+20
	bl	.L60
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L198+24
	bl	.L27
	movs	r0, r4
	ldr	r3, .L198+28
	bl	.L27
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L199:
	.align	2
.L198:
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
	ldr	r3, .L202
	ldrb	r2, [r3, #17]
	ldr	r3, .L202+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L200
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L200:
	@ sp needed
	bx	lr
.L203:
	.align	2
.L202:
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
	ldr	r4, .L212
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L205
	ldr	r1, .L212+4
	lsls	r1, r1, #24
	ldr	r5, .L212+8
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	beq	.L206
.L208:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L212+12
	bl	.L27
	cmp	r0, #0
	beq	.L205
	movs	r0, #1
.L207:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L206:
	ldr	r1, .L212+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	bne	.L208
.L205:
	movs	r0, #3
	b	.L207
.L213:
	.align	2
.L212:
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
	ldr	r3, .L215
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L215+4
	ldr	r3, .L215+8
	bl	.L27
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L216:
	.align	2
.L215:
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
	beq	.L218
	movs	r3, #128
	strh	r3, [r4]
.L218:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L222
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
	ldr	r3, .L222+4
	bl	.L27
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L223:
	.align	2
.L222:
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
	ldr	r3, .L225
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L27
	mov	r2, sp
	ldr	r3, .L225+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L225+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L226:
	.align	2
.L225:
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
	ldr	r3, .L229
	movs	r6, r0
	movs	r5, #1
	bl	.L27
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L228
	movs	r2, #255
	ldr	r3, .L229+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L229+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L228
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L228:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L230:
	.align	2
.L229:
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
	bne	.L232
.L241:
	movs	r0, #0
.L233:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L232:
	ldr	r7, .L257
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L234:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L241
	cmp	r6, #0
	beq	.L235
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L235
	ldr	r3, .L257+4
	ldr	r2, .L257+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L235
	ldr	r2, .L257+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L255:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L256:
	bl	PAU_setBattleGauge
.L236:
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
	ldr	r3, .L257+16
	bl	.L27
	cmp	r0, #0
	bne	.L242
	adds	r6, r6, #1
	b	.L234
.L235:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L237
	ldr	r3, .L257+4
	ldr	r2, .L257+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L237
	ldr	r2, .L257+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L255
.L237:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L238
.L239:
	ldr	r3, .L257+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L256
.L238:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L239
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L239
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L236
	b	.L239
.L242:
	movs	r0, #1
	b	.L233
.L258:
	.align	2
.L257:
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
.L261:
	lsls	r0, r4, #24
	ldr	r3, .L269
	lsrs	r0, r0, #24
	bl	.L27
	cmp	r0, #0
	beq	.L260
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L260
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L269+4
	bl	.L27
.L260:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L261
	ldr	r3, .L269+8
	@ sp needed
	bl	.L27
	ldr	r3, .L269+12
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L270:
	.align	2
.L269:
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
	bhi	.L272
	ldr	r3, .L274
	ldrb	r0, [r5, #27]
	bl	.L27
	ldr	r3, .L274+4
	bl	.L27
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L273
	adds	r2, r4, #0
.L273:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L272:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L275:
	.align	2
.L274:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC162:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_aisProcInstr
.LC163:
	.ascii	"PAU_AISProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 48
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC163
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
	.word	.LC162
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
	.ident	"GCC: (devkitARM release 55) 10.2.0"
	.text
	.code 16
	.align	1
.L27:
	bx	r3
.L29:
	bx	r4
.L28:
	bx	r5
.L60:
	bx	r6
.L182:
	bx	r7

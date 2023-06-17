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
	ldr	r3, .L95
	sub	sp, sp, #20
	movs	r4, r0
	movs	r6, r1
	bl	.L27
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #4]
	movs	r3, #255
	ands	r3, r0
	movs	r0, r3
	str	r3, [sp, #12]
	ldr	r3, .L95+4
	bl	.L27
	ldr	r3, [r4, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r7, r5
	str	r0, [sp, #8]
.L85:
	ldrh	r0, [r7]
	subs	r4, r7, r5
	cmp	r0, #0
	beq	.L76
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L77
	cmp	r2, #0
	bne	.L78
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L79
	ldr	r3, .L95+8
	movs	r0, r1
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L84
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L94:
	ldr	r3, .L95+12
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r6]
.L84:
	adds	r4, r5, r4
	ldrh	r0, [r4, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L92:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L78:
	cmp	r2, #1
	bne	.L79
	cmp	r3, #0
	bne	.L79
	movs	r4, #255
	movs	r1, #255
	ldr	r2, [sp, #8]
	ands	r4, r0
	ands	r2, r1
	cmp	r4, r2
	bne	.L79
	ldr	r3, .L95+8
	ldr	r0, [sp, #4]
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L82
	ldr	r3, .L95+12
	lsls	r4, r4, #1
	ldrh	r3, [r4, r3]
	strh	r3, [r6]
.L82:
	ldrh	r3, [r7, #2]
.L79:
	adds	r7, r7, #4
	b	.L85
.L77:
	cmp	r2, #0
	bne	.L83
	ldr	r3, .L95+8
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L84
	ldrb	r0, [r7]
	ldr	r3, .L95+4
	bl	.L27
	b	.L94
.L83:
	cmp	r2, #1
	bne	.L79
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L79
	cmp	r0, #9
	beq	.L79
	b	.L94
.L76:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L92
.L96:
	.align	2
.L95:
	.word	GetUnitEquippedWeapon
	.word	GetItemType
	.word	GetSpellAssocStructPtr
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
	beq	.L97
	movs	r3, #0
	ldr	r4, .L109
	str	r3, [sp]
	movs	r3, r2
	bl	.L29
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L99
	cmp	r7, #0
	bne	.L100
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L109+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L109+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L107:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L108
.L99:
	cmp	r7, #0
	bne	.L102
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L109+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L109+8
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
.L108:
	movs	r0, #0
	bl	.L60
.L106:
	ldr	r3, .L109+12
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
	ldr	r3, .L109+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L109+20
	bl	.L27
.L97:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L100:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L109+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L60
	ldr	r3, .L109+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L107
.L102:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L109+4
	movs	r0, r6
	bl	.L29
	ldr	r3, .L109+8
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
	ldr	r5, .L109+4
	asrs	r4, r4, #16
	bl	.L28
	b	.L106
.L110:
	.align	2
.L109:
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
	bne	.LCB796
	b	.L111	@long jump
.LCB796:
	ldrb	r0, [r5, #27]
	ldr	r3, .L136
	bl	.L27
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L136+4
	ldr	r2, .L136+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB816
	b	.L111	@long jump
.LCB816:
	ldr	r0, .L136+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB822
	b	.L111	@long jump
.LCB822:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L136+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L136+20
	cmp	r2, #255
	beq	.L113
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L113:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L136+24
	str	r2, [sp, #20]
	bl	.L27
	ldr	r3, .L136+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L114
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L114:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L136+32
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
	beq	.L115
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L115:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L136+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L136+20
	cmp	r3, #255
	beq	.L116
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L116:
	ldr	r3, .L136+24
	bl	.L27
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L136+32
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
	ldr	r0, .L136+36
	ldr	r3, .L136+40
	bl	.L27
	movs	r4, r0
	cmp	r0, r6
	bne	.L117
	ldr	r3, .L136+44
	movs	r1, #5
	ldr	r0, .L136+36
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L136+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L136+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L136+56
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
.L117:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	lsls	r6, r2, #16
	subs	r2, r0, r2
	lsrs	r6, r6, #16
	asrs	r2, r2, #1
	adds	r2, r6, r2
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
	beq	.L118
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
	ldr	r3, .L136+60
	bl	.L27
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L135:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L136+64
	bl	.L27
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L136+68
	bl	.L27
	adds	r4, r4, #84
	strh	r0, [r4]
.L111:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L118:
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
	ldr	r3, .L136+60
	bl	.L27
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L135
.L137:
	.align	2
.L136:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, .L147
	movs	r5, r0
	ldr	r0, .L147+4
	bl	.L27
	movs	r4, r0
	movs	r0, r5
	cmp	r4, #0
	bne	.L139
	ldr	r3, .L147+8
	bl	.L27
.L138:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L139:
	ldr	r3, .L147+12
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
	adds	r3, r3, #41
	strb	r1, [r3]
	ldr	r3, .L147+16
	ldrb	r6, [r3]
	movs	r3, r4
	adds	r3, r3, #42
	strb	r6, [r3]
	ldr	r3, .L147+20
	ldrh	r3, [r3]
	cmp	r3, r1
	beq	.L141
	ldr	r3, .L147+24
	cmp	r2, r1
	bne	.L142
	adds	r1, r1, #24
.L146:
	bl	.L27
.L141:
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
	movs	r1, #128
	strh	r3, [r2]
	ldr	r0, .L147+28
	movs	r3, #2
	ldrsh	r2, [r5, r3]
	ldrh	r0, [r0]
	movs	r3, #1
	ldr	r4, .L147+32
	lsls	r1, r1, #1
	bl	.L29
	b	.L138
.L142:
	movs	r2, r1
	movs	r1, #232
	b	.L146
.L148:
	.align	2
.L147:
	.word	ProcFind
	.word	.LANCHOR0
	.word	StartEfxSureShotAnime
	.word	GetAISSubjectId
	.word	PAU_dualBAnimSwapTime
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 0, uses_anonymous_args = 0
	movs	r2, r0
	push	{r4, r5, r6, r7, lr}
	sub	sp, sp, #44
	str	r1, [sp, #20]
	adds	r2, r2, #41
	ldrb	r3, [r2]
	adds	r3, r3, #1
	strb	r3, [r2]
	ldr	r3, .L164
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L150
	ldr	r2, .L164+4
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	ldr	r5, [r0, #48]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L151
.L160:
	ldr	r3, [sp, #24]
	ldrb	r0, [r3, #27]
	ldr	r3, .L164+8
	bl	.L27
	movs	r3, r6
	movs	r6, r5
	movs	r5, r3
	ldr	r3, [sp, #12]
	str	r0, [sp, #24]
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L151
.L150:
	ldr	r2, .L164+12
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	ldr	r5, [r0, #56]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L160
.L151:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L152
	ldr	r3, [sp, #12]
	ldrh	r2, [r7, #10]
	ldrh	r3, [r3, #10]
	ldr	r1, [sp, #12]
	strh	r2, [r1, #10]
	strh	r3, [r7, #10]
	ldrh	r3, [r6, #10]
	ldrh	r2, [r5, #10]
	strh	r2, [r6, #10]
	strh	r3, [r5, #10]
	ldr	r3, .L164+16
	bl	.L27
.L152:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB1359
	b	.L153	@long jump
.LCB1359:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L164+20
	bl	.L28
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L154
	movs	r3, r4
	adds	r3, r3, #90
	ldrb	r5, [r3]
	ldr	r3, [sp, #24]
	adds	r5, r3, r5
	movs	r3, r4
	adds	r3, r3, #84
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	movs	r3, r4
	adds	r3, r3, #80
	ldrh	r3, [r3]
	ldr	r2, [sp, #16]
	subs	r3, r3, r2
	lsls	r5, r5, #24
	lsls	r3, r3, #16
	lsrs	r5, r5, #24
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	lsls	r3, r5, #1
	str	r3, [sp, #28]
	ldr	r2, [sp, #28]
	ldr	r3, .L164+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L164+28
	bl	.L28
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #20]
	ldr	r3, .L164+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L163:
	ldrb	r4, [r4]
	ldr	r3, [sp, #24]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L164+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L28
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
	ldr	r3, .L164+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L149:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L154:
	movs	r3, r4
	adds	r3, r3, #88
	ldrb	r5, [r3]
	ldr	r3, [sp, #24]
	adds	r5, r3, r5
	movs	r3, r4
	adds	r3, r3, #84
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	movs	r3, r4
	adds	r3, r3, #76
	ldrh	r3, [r3]
	ldr	r2, [sp, #16]
	subs	r3, r3, r2
	lsls	r5, r5, #24
	lsls	r3, r3, #16
	lsrs	r5, r5, #24
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	lsls	r3, r5, #1
	str	r3, [sp, #28]
	ldr	r2, [sp, #28]
	ldr	r3, .L164+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L164+28
	bl	.L28
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #2]
	movs	r3, r4
	adds	r3, r3, #78
	ldrh	r3, [r3]
	ldr	r2, [sp, #28]
	str	r3, [sp, #20]
	ldr	r3, .L164+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L163
.L153:
	movs	r2, #128
	movs	r1, #14
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r2, .L164+36
	str	r5, [r3, r2]
	add	r3, sp, #24
	adds	r1, r1, r3
	ldr	r0, [sp, #24]
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L164+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L164+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r2, .L164+48
	ldr	r1, [r0, #12]
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	movs	r3, r4
	ldr	r2, [sp, #20]
	adds	r3, r3, #43
	ldrb	r3, [r3]
	cmp	r2, #0
	beq	.L156
	lsls	r3, r3, #28
	bmi	.L157
.L161:
	movs	r1, #4
	ldr	r3, [sp, #12]
	ldrh	r2, [r3, #16]
	ldrh	r3, [r7, #16]
	ands	r2, r1
	orrs	r2, r3
	strh	r2, [r7, #16]
	ldrh	r3, [r6, #16]
	ldrh	r2, [r5, #16]
	ands	r3, r1
	orrs	r3, r2
	strh	r3, [r5, #16]
	b	.L157
.L156:
	lsls	r3, r3, #30
	bpl	.L161
.L157:
	movs	r3, #128
	movs	r1, #8
	lsls	r3, r3, #18
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L164+36
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L164+52
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L164+56
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, [sp, #12]
	movs	r0, r7
	ldrb	r1, [r3, #18]
	ldr	r3, .L164+60
	bl	.L27
	ldr	r3, .L164+60
	movs	r0, r5
	ldrb	r1, [r6, #18]
	bl	.L27
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldrh	r3, [r6, #14]
	strh	r3, [r5, #14]
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, [sp, #20]
	ldr	r3, .L164+64
	cmp	r2, #0
	beq	.L158
	movs	r2, r4
	adds	r2, r2, #80
	ldrh	r2, [r2]
	str	r2, [sp, #24]
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	asrs	r3, r3, #1
	ldr	r2, [sp, #16]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #20]
	subs	r2, r3, r2
	ldr	r3, [sp, #24]
	ldr	r1, [sp, #12]
	adds	r2, r3, r2
	strh	r2, [r1, #2]
	movs	r2, r4
	adds	r2, r2, #82
	ldrh	r1, [r2]
	ldr	r2, .L164+68
	movs	r3, #0
	ldrsh	r2, [r2, r3]
	asrs	r2, r2, #1
	lsls	r2, r2, #16
	lsrs	r2, r2, #16
	adds	r0, r1, r2
	mov	ip, r0
	mov	r3, ip
	ldr	r0, [sp, #12]
	subs	r2, r1, r2
	strh	r3, [r0, #4]
	strh	r2, [r7, #4]
	movs	r2, #4
	movs	r1, #8
	ldr	r0, [sp, #20]
	ldr	r3, [sp, #16]
	adds	r3, r3, r0
	ldr	r0, [sp, #24]
	subs	r3, r0, r3
	strh	r3, [r7, #2]
	adds	r4, r4, #43
	ldrb	r3, [r4]
	bics	r3, r2
	eors	r3, r1
.L162:
	strb	r3, [r4]
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
	strh	r3, [r5, #2]
	movs	r2, #4
	ldrsh	r3, [r7, r2]
	strh	r3, [r5, #4]
	b	.L149
.L158:
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	movs	r2, r4
	asrs	r3, r3, #1
	ldr	r1, [sp, #16]
	lsls	r3, r3, #16
	adds	r2, r2, #76
	ldrh	r2, [r2]
	lsrs	r3, r3, #16
	adds	r1, r1, r3
	subs	r2, r2, r1
	ldr	r1, [sp, #12]
	strh	r2, [r1, #2]
	ldr	r2, .L164+68
	movs	r1, #0
	ldrsh	r2, [r2, r1]
	movs	r1, r4
	asrs	r2, r2, #1
	adds	r1, r1, #78
	ldrh	r1, [r1]
	lsls	r2, r2, #16
	ldr	r0, [sp, #12]
	lsrs	r2, r2, #16
	adds	r1, r2, r1
	strh	r1, [r0, #4]
	movs	r1, r4
	ldr	r0, [sp, #16]
	adds	r1, r1, #80
	ldrh	r1, [r1]
	subs	r3, r3, r0
	adds	r3, r1, r3
	strh	r3, [r7, #2]
	movs	r3, r4
	adds	r3, r3, #82
	ldrh	r3, [r3]
	subs	r2, r3, r2
	strh	r2, [r7, #4]
	movs	r2, #1
	adds	r4, r4, #43
	ldrb	r3, [r4]
	bics	r3, r2
	movs	r2, r3
	movs	r3, #2
	eors	r3, r2
	b	.L162
.L165:
	.align	2
.L164:
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
	.word	33554440
	.word	33554444
	.word	SwitchAISFrameDataFromBARoundType
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
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
	beq	.L167
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L168
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L167:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L166
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L171
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L166:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L168:
	ldr	r2, .L179
	ldrh	r5, [r2]
	ldr	r2, .L179+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L169
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L167
.L169:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L167
.L171:
	ldr	r3, .L179
	ldr	r1, .L179+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L172
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L166
.L172:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L166
.L180:
	.align	2
.L179:
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.size	PAU_adjustBAnimLocs, .-PAU_adjustBAnimLocs
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
	ldr	r5, .L192
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	ldr	r0, .L192+4
	ldr	r3, .L192+8
	bl	.L27
	cmp	r0, #0
	beq	.L181
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L184
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L184:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L181
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L181:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L193:
	.align	2
.L192:
	.word	-3073
	.word	.LANCHOR0
	.word	ProcFind
	.size	PAU_setPriorityDuringLvlUp, .-PAU_setPriorityDuringLvlUp
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
	ldr	r3, .L195
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L195+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L195+8
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L195+12
	ldr	r3, .L195+16
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L196:
	.align	2
.L195:
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
	ldr	r3, .L201
	movs	r5, r1
	bl	.L27
	ldr	r3, .L201+4
	bl	.L27
	cmp	r0, #39
	bhi	.L198
	ldr	r3, .L201+8
.L200:
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
.L198:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L200
.L202:
	.align	2
.L201:
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
	ldr	r1, .L220
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L220+4
	movs	r2, #14
	adds	r1, r1, #48
	movs	r5, r0
	add	r0, sp, #16
	bl	.L27
	ldr	r1, .L220+8
	ldr	r3, .L220+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L220+16
	bl	.L27
	ldr	r3, .L220+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L204
	ldr	r3, .L220+24
	str	r3, [sp, #4]
.L204:
	movs	r7, #0
	ldr	r3, .L220+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L209:
	movs	r0, r5
	ldr	r3, .L220+32
	bl	.L27
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L220+36
	bl	.L27
	ldr	r3, .L220+40
	movs	r1, r0
	movs	r0, r5
	bl	.L27
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L220+44
	bl	.L27
	cmp	r7, #6
	bne	.L205
	ldr	r6, .L220+48
	ldr	r0, [sp, #8]
	bl	.L60
	ldr	r3, .L220+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L60
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L206
	adds	r3, r0, #0
.L206:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L207:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L211
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L212
	cmp	r4, #0
	blt	.L213
	movs	r2, #21
	cmp	r4, #0
	beq	.L214
	movs	r6, #4
	cmp	r4, #9
	ble	.L218
	cmp	r4, #99
	ble	.L216
.L219:
	movs	r0, #5
.L208:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L220+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L220+52
	bl	.L27
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L220+56
	bl	.L29
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L209
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L205:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L207
.L211:
	movs	r2, #20
	movs	r6, #3
	b	.L219
.L212:
	movs	r2, #20
	movs	r6, #3
.L216:
	movs	r0, #6
	b	.L208
.L213:
	movs	r2, #20
	movs	r6, #3
.L218:
	movs	r0, #7
	b	.L208
.L214:
	movs	r6, r4
	b	.L218
.L221:
	.align	2
.L220:
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
	ldr	r5, .L225
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L225+4
	adds	r0, r0, #64
	bl	.L27
	ldr	r3, .L225+8
	str	r0, [r4, #60]
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L225+12
	adds	r0, r0, #44
	bl	.L227
	movs	r6, #52
.L223:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L227
	cmp	r6, #108
	bne	.L223
	ldr	r0, .L225+16
	lsls	r0, r0, #16
	ldr	r3, .L225+20
	lsrs	r0, r0, #16
	bl	.L27
	ldr	r3, .L225+24
	movs	r1, r0
	movs	r0, r4
	bl	.L27
	movs	r1, r5
	ldr	r3, .L225+28
	movs	r2, #12
	adds	r1, r1, #88
	add	r0, sp, #4
	bl	.L27
	ldr	r4, .L225+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L29
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L225+36
	bl	.L29
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L226:
	.align	2
.L225:
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
	ldr	r3, .L233
	bl	.L27
	ldrb	r0, [r5, #2]
	ldr	r3, .L233+4
	bl	.L27
	movs	r1, #13
	ldr	r3, .L233+8
	movs	r5, r0
	bl	.L27
	movs	r6, r0
	ldr	r3, .L233+12
	bl	.L27
	ldr	r7, .L233+16
	ldr	r0, .L233+20
	movs	r1, r7
	ldr	r3, .L233+24
	bl	.L27
	ldr	r0, .L233+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L233+32
	bl	.L27
	ldr	r0, [r4, #60]
	ldr	r3, .L233+36
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
	ldr	r3, .L233+40
	bl	.L27
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L233+44
	ldr	r7, [r4, #60]
	bl	.L27
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L233+48
	movs	r0, r7
	bl	.L27
	ldr	r3, .L233+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L233+56
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L233+60
	ldr	r3, .L233+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L233+68
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L229
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L230:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L233+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L233+72
	bl	.L27
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L233+72
	bl	.L27
	ldr	r3, .L233+76
	movs	r0, r6
	bl	.L27
	ldr	r3, .L233+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L233+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L231:
	cmp	r1, r2
	bgt	.L232
	@ sp needed
	movs	r0, #3
	ldr	r3, .L233+84
	bl	.L27
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L229:
	ldr	r4, .L233+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L233+92
	lsrs	r4, r4, #16
	b	.L230
.L232:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L231
.L234:
	.align	2
.L233:
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
	ldr	r3, .L236
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L27
	ldr	r3, .L236+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L236+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L236+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L236+16
	ldr	r3, .L236+20
	bl	.L27
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L237:
	.align	2
.L236:
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
	ldr	r0, .L239
	ldr	r3, .L239+4
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L239+8
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L240:
	.align	2
.L239:
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
	ldr	r6, .L243
	@ sp needed
	movs	r7, r0
	ldr	r5, .L243+4
	ldrb	r0, [r6, #12]
	bl	.L28
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L28
	ldr	r3, .L243+8
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
	ldr	r6, .L243+12
	bl	.L60
	movs	r6, r0
	ldr	r3, .L243+16
	bl	.L27
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L243+20
	bl	.L60
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L243+24
	bl	.L27
	movs	r0, r4
	ldr	r3, .L243+28
	bl	.L27
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L244:
	.align	2
.L243:
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
	ldr	r3, .L247
	ldrb	r2, [r3, #17]
	ldr	r3, .L247+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L245
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L245:
	@ sp needed
	bx	lr
.L248:
	.align	2
.L247:
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
	ldr	r4, .L257
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L250
	ldr	r1, .L257+4
	lsls	r1, r1, #24
	ldr	r5, .L257+8
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	beq	.L251
.L253:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L257+12
	bl	.L27
	cmp	r0, #0
	beq	.L250
	movs	r0, #1
.L252:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L251:
	ldr	r1, .L257+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	bne	.L253
.L250:
	movs	r0, #3
	b	.L252
.L258:
	.align	2
.L257:
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
	ldr	r3, .L260
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L260+4
	ldr	r3, .L260+8
	bl	.L27
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L261:
	.align	2
.L260:
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
	beq	.L263
	movs	r3, #128
	strh	r3, [r4]
.L263:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L267
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
	ldr	r3, .L267+4
	bl	.L27
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L268:
	.align	2
.L267:
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
	ldr	r3, .L270
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L27
	mov	r2, sp
	ldr	r3, .L270+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L270+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L271:
	.align	2
.L270:
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
	ldr	r3, .L274
	movs	r6, r0
	movs	r5, #1
	bl	.L27
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L273
	movs	r2, #255
	ldr	r3, .L274+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L274+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L273
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L273:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L275:
	.align	2
.L274:
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
	bne	.L277
.L286:
	movs	r0, #0
.L278:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L277:
	ldr	r7, .L302
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L279:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L286
	cmp	r6, #0
	beq	.L280
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L280
	ldr	r3, .L302+4
	ldr	r2, .L302+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L280
	ldr	r2, .L302+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L300:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L301:
	bl	PAU_setBattleGauge
.L281:
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
	ldr	r3, .L302+16
	bl	.L27
	cmp	r0, #0
	bne	.L287
	adds	r6, r6, #1
	b	.L279
.L280:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L282
	ldr	r3, .L302+4
	ldr	r2, .L302+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L282
	ldr	r2, .L302+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L300
.L282:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L283
.L284:
	ldr	r3, .L302+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L301
.L283:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L284
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L284
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L281
	b	.L284
.L287:
	movs	r0, #1
	b	.L278
.L303:
	.align	2
.L302:
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
.L306:
	lsls	r0, r4, #24
	ldr	r3, .L314
	lsrs	r0, r0, #24
	bl	.L27
	cmp	r0, #0
	beq	.L305
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L305
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L314+4
	bl	.L27
.L305:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L306
	ldr	r3, .L314+8
	@ sp needed
	bl	.L27
	ldr	r3, .L314+12
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L315:
	.align	2
.L314:
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
	bhi	.L317
	ldr	r3, .L319
	ldrb	r0, [r5, #27]
	bl	.L27
	ldr	r3, .L319+4
	bl	.L27
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L318
	adds	r2, r4, #0
.L318:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L317:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L320:
	.align	2
.L319:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC179:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_aisProcInstr
.LC180:
	.ascii	"PAU_AISProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 48
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC180
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
	.word	.LC179
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
.L227:
	bx	r7

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
	ldr	r3, .L93
	sub	sp, sp, #20
	movs	r4, r0
	movs	r6, r1
	bl	.L27
	movs	r3, #255
	ands	r3, r0
	str	r3, [sp, #8]
	lsls	r5, r0, #24
	movs	r0, r3
	ldr	r3, .L93+4
	bl	.L27
	ldr	r3, [r4, #4]
	movs	r2, #255
	ldr	r4, [r3, #52]
	movs	r3, r0
	movs	r7, r4
	ands	r3, r2
	str	r0, [sp, #4]
	str	r3, [sp, #12]
	lsrs	r5, r5, #24
.L84:
	ldrh	r0, [r7]
	subs	r3, r7, r4
	str	r3, [sp]
	lsrs	r3, r0, #8
	cmp	r5, #0
	beq	.L76
	cmp	r3, #0
	bne	.L77
	ldr	r3, [sp, #8]
	cmp	r0, r3
	bne	.L78
	ldr	r3, .L93+8
	movs	r0, r5
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L83
	ldr	r3, [sp, #4]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L92:
	ldr	r3, .L93+12
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	b	.L91
.L77:
	cmp	r3, #1
	bne	.L78
	adds	r3, r3, #254
	ands	r0, r3
	ldr	r3, [sp, #12]
	cmp	r0, r3
	bne	.L78
	ldr	r3, .L93+8
	movs	r0, r5
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L83
	ldr	r3, [sp, #12]
	lsls	r2, r3, #1
	ldr	r3, .L93+12
	ldrh	r3, [r2, r3]
.L91:
	strh	r3, [r6]
.L83:
	ldr	r3, [sp]
	adds	r4, r4, r3
	ldrh	r0, [r4, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L76:
	cmp	r3, #0
	bne	.L82
	ldr	r3, .L93+8
	bl	.L27
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r6]
	adds	r3, r3, #1
	bne	.L83
	ldrb	r0, [r7]
	ldr	r3, .L93+4
	bl	.L27
	b	.L92
.L82:
	cmp	r3, #1
	bne	.L78
	adds	r3, r3, #254
	ands	r0, r3
	cmp	r0, #4
	beq	.L78
	cmp	r0, #9
	beq	.L78
	ldr	r3, .L93+12
	ldrh	r3, [r3, #2]
	b	.L91
.L78:
	adds	r7, r7, #4
	b	.L84
.L94:
	.align	2
.L93:
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
	beq	.L95
	movs	r3, #0
	ldr	r4, .L107
	str	r3, [sp]
	movs	r3, r2
	bl	.L29
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L97
	cmp	r7, #0
	bne	.L98
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L107+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L107+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L105:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L106
.L97:
	cmp	r7, #0
	bne	.L100
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L107+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L60
	ldr	r3, .L107+8
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
.L106:
	movs	r0, #0
	bl	.L60
.L104:
	ldr	r3, .L107+12
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
	ldr	r3, .L107+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L107+20
	bl	.L27
.L95:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L98:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L107+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L60
	ldr	r3, .L107+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L105
.L100:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L107+4
	movs	r0, r6
	bl	.L29
	ldr	r3, .L107+8
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
	ldr	r5, .L107+4
	asrs	r4, r4, #16
	bl	.L28
	b	.L104
.L108:
	.align	2
.L107:
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
	bne	.LCB784
	b	.L109	@long jump
.LCB784:
	ldrb	r0, [r5, #27]
	ldr	r3, .L134
	bl	.L27
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L134+4
	ldr	r2, .L134+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB804
	b	.L109	@long jump
.LCB804:
	ldr	r0, .L134+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB810
	b	.L109	@long jump
.LCB810:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L134+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L134+20
	cmp	r2, #255
	beq	.L111
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L111:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L134+24
	str	r2, [sp, #20]
	bl	.L27
	ldr	r3, .L134+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L112
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L112:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L134+32
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
	beq	.L113
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L113:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L134+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L134+20
	cmp	r3, #255
	beq	.L114
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L114:
	ldr	r3, .L134+24
	bl	.L27
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L134+32
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
	ldr	r0, .L134+36
	ldr	r3, .L134+40
	bl	.L27
	movs	r4, r0
	cmp	r0, r6
	bne	.L115
	ldr	r3, .L134+44
	movs	r1, #5
	ldr	r0, .L134+36
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L134+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L134+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L134+56
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
.L115:
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
	beq	.L116
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
	ldr	r3, .L134+60
	bl	.L27
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L133:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L134+64
	bl	.L27
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L134+68
	bl	.L27
	adds	r4, r4, #84
	strh	r0, [r4]
.L109:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L116:
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
	ldr	r3, .L134+60
	bl	.L27
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L133
.L135:
	.align	2
.L134:
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
	ldr	r3, .L145
	movs	r5, r0
	ldr	r0, .L145+4
	bl	.L27
	movs	r4, r0
	movs	r0, r5
	cmp	r4, #0
	bne	.L137
	ldr	r3, .L145+8
	bl	.L27
.L136:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L137:
	ldr	r3, .L145+12
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
	ldr	r3, .L145+16
	ldrb	r6, [r3]
	movs	r3, r4
	adds	r3, r3, #42
	strb	r6, [r3]
	ldr	r3, .L145+20
	ldrh	r3, [r3]
	cmp	r3, r1
	beq	.L139
	ldr	r3, .L145+24
	cmp	r2, r1
	bne	.L140
	adds	r1, r1, #24
.L144:
	bl	.L27
.L139:
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
	ldr	r0, .L145+28
	movs	r3, #2
	ldrsh	r2, [r5, r3]
	ldrh	r0, [r0]
	movs	r3, #1
	ldr	r4, .L145+32
	lsls	r1, r1, #1
	bl	.L29
	b	.L136
.L140:
	movs	r2, r1
	movs	r1, #232
	b	.L144
.L146:
	.align	2
.L145:
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
	ldr	r3, .L162
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #16]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L148
	ldr	r2, .L162+4
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	ldr	r5, [r0, #48]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L149
.L158:
	ldr	r3, [sp, #24]
	ldrb	r0, [r3, #27]
	ldr	r3, .L162+8
	bl	.L27
	movs	r3, r6
	movs	r6, r5
	movs	r5, r3
	ldr	r3, [sp, #12]
	str	r0, [sp, #24]
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L149
.L148:
	ldr	r2, .L162+12
	ldr	r2, [r2]
	str	r2, [sp, #24]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	ldr	r5, [r0, #56]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L158
.L149:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L150
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
	ldr	r3, .L162+16
	bl	.L27
.L150:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB1347
	b	.L151	@long jump
.LCB1347:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L162+20
	bl	.L28
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #24]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L152
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
	ldr	r3, .L162+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L162+28
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
	ldr	r3, .L162+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L161:
	ldrb	r4, [r4]
	ldr	r3, [sp, #24]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L162+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L28
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
	ldr	r3, .L162+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L147:
	add	sp, sp, #44
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L152:
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
	ldr	r3, .L162+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L162+28
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
	ldr	r3, .L162+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L28
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L161
.L151:
	movs	r2, #128
	movs	r1, #14
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r2, .L162+36
	str	r5, [r3, r2]
	add	r3, sp, #24
	adds	r1, r1, r3
	ldr	r0, [sp, #24]
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L162+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L162+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r2, .L162+48
	ldr	r1, [r0, #12]
	lsls	r3, r3, #2
	str	r1, [r3, r2]
	movs	r3, r4
	ldr	r2, [sp, #20]
	adds	r3, r3, #43
	ldrb	r3, [r3]
	cmp	r2, #0
	beq	.L154
	lsls	r3, r3, #28
	bmi	.L155
.L159:
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
	b	.L155
.L154:
	lsls	r3, r3, #30
	bpl	.L159
.L155:
	movs	r3, #128
	movs	r1, #8
	lsls	r3, r3, #18
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L162+36
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L162+52
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, .L162+56
	ldr	r2, [r3]
	ldrh	r3, [r2]
	bics	r3, r1
	strh	r3, [r2]
	ldr	r3, [sp, #12]
	movs	r0, r7
	ldrb	r1, [r3, #18]
	ldr	r3, .L162+60
	bl	.L27
	ldr	r3, .L162+60
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
	ldr	r3, .L162+64
	cmp	r2, #0
	beq	.L156
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
	ldr	r2, .L162+68
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
.L160:
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
	b	.L147
.L156:
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
	ldr	r2, .L162+68
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
	b	.L160
.L163:
	.align	2
.L162:
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
	beq	.L165
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L166
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L165:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L164
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L169
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L164:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L166:
	ldr	r2, .L177
	ldrh	r5, [r2]
	ldr	r2, .L177+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L167
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L165
.L167:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L165
.L169:
	ldr	r3, .L177
	ldr	r1, .L177+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L170
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L164
.L170:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L164
.L178:
	.align	2
.L177:
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
	ldr	r3, .L180
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L180+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L180+8
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L180+12
	ldr	r3, .L180+16
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L181:
	.align	2
.L180:
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
	ldr	r3, .L186
	movs	r5, r1
	bl	.L27
	ldr	r3, .L186+4
	bl	.L27
	cmp	r0, #39
	bhi	.L183
	ldr	r3, .L186+8
.L185:
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
.L183:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L185
.L187:
	.align	2
.L186:
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
	ldr	r1, .L205
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L205+4
	movs	r2, #14
	adds	r1, r1, #48
	movs	r5, r0
	add	r0, sp, #16
	bl	.L27
	ldr	r1, .L205+8
	ldr	r3, .L205+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L205+16
	bl	.L27
	ldr	r3, .L205+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L189
	ldr	r3, .L205+24
	str	r3, [sp, #4]
.L189:
	movs	r7, #0
	ldr	r3, .L205+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L194:
	movs	r0, r5
	ldr	r3, .L205+32
	bl	.L27
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L205+36
	bl	.L27
	ldr	r3, .L205+40
	movs	r1, r0
	movs	r0, r5
	bl	.L27
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L205+44
	bl	.L27
	cmp	r7, #6
	bne	.L190
	ldr	r6, .L205+48
	ldr	r0, [sp, #8]
	bl	.L60
	ldr	r3, .L205+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L60
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L191
	adds	r3, r0, #0
.L191:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L192:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L196
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L197
	cmp	r4, #0
	blt	.L198
	movs	r2, #21
	cmp	r4, #0
	beq	.L199
	movs	r6, #4
	cmp	r4, #9
	ble	.L203
	cmp	r4, #99
	ble	.L201
.L204:
	movs	r0, #5
.L193:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L205+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L205+52
	bl	.L27
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L205+56
	bl	.L29
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L194
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L190:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L192
.L196:
	movs	r2, #20
	movs	r6, #3
	b	.L204
.L197:
	movs	r2, #20
	movs	r6, #3
.L201:
	movs	r0, #6
	b	.L193
.L198:
	movs	r2, #20
	movs	r6, #3
.L203:
	movs	r0, #7
	b	.L193
.L199:
	movs	r6, r4
	b	.L203
.L206:
	.align	2
.L205:
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
	ldr	r5, .L210
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L210+4
	adds	r0, r0, #64
	bl	.L27
	ldr	r3, .L210+8
	str	r0, [r4, #60]
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L210+12
	adds	r0, r0, #44
	bl	.L212
	movs	r6, #52
.L208:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L212
	cmp	r6, #108
	bne	.L208
	ldr	r0, .L210+16
	lsls	r0, r0, #16
	ldr	r3, .L210+20
	lsrs	r0, r0, #16
	bl	.L27
	ldr	r3, .L210+24
	movs	r1, r0
	movs	r0, r4
	bl	.L27
	movs	r1, r5
	ldr	r3, .L210+28
	movs	r2, #12
	adds	r1, r1, #88
	add	r0, sp, #4
	bl	.L27
	ldr	r4, .L210+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L29
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L210+36
	bl	.L29
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L211:
	.align	2
.L210:
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
	ldr	r3, .L218
	bl	.L27
	ldrb	r0, [r5, #2]
	ldr	r3, .L218+4
	bl	.L27
	movs	r1, #13
	ldr	r3, .L218+8
	movs	r5, r0
	bl	.L27
	movs	r6, r0
	ldr	r3, .L218+12
	bl	.L27
	ldr	r7, .L218+16
	ldr	r0, .L218+20
	movs	r1, r7
	ldr	r3, .L218+24
	bl	.L27
	ldr	r0, .L218+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L218+32
	bl	.L27
	ldr	r0, [r4, #60]
	ldr	r3, .L218+36
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
	ldr	r3, .L218+40
	bl	.L27
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L218+44
	ldr	r7, [r4, #60]
	bl	.L27
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L218+48
	movs	r0, r7
	bl	.L27
	ldr	r3, .L218+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L218+56
	bl	.L27
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L218+60
	ldr	r3, .L218+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L218+68
	bl	.L27
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L214
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L215:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L218+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L218+72
	bl	.L27
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L218+72
	bl	.L27
	ldr	r3, .L218+76
	movs	r0, r6
	bl	.L27
	ldr	r3, .L218+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L218+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L216:
	cmp	r1, r2
	bgt	.L217
	@ sp needed
	movs	r0, #3
	ldr	r3, .L218+84
	bl	.L27
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L214:
	ldr	r4, .L218+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L218+92
	lsrs	r4, r4, #16
	b	.L215
.L217:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L216
.L219:
	.align	2
.L218:
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
	ldr	r3, .L221
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L27
	ldr	r3, .L221+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L221+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L221+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L221+16
	ldr	r3, .L221+20
	bl	.L27
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L222:
	.align	2
.L221:
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
	ldr	r0, .L224
	ldr	r3, .L224+4
	bl	.L27
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L224+8
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L225:
	.align	2
.L224:
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
	ldr	r6, .L228
	@ sp needed
	movs	r7, r0
	ldr	r5, .L228+4
	ldrb	r0, [r6, #12]
	bl	.L28
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L28
	ldr	r3, .L228+8
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
	ldr	r6, .L228+12
	bl	.L60
	movs	r6, r0
	ldr	r3, .L228+16
	bl	.L27
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L228+20
	bl	.L60
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L228+24
	bl	.L27
	movs	r0, r4
	ldr	r3, .L228+28
	bl	.L27
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L229:
	.align	2
.L228:
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
	ldr	r3, .L232
	ldrb	r2, [r3, #17]
	ldr	r3, .L232+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L230
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L230:
	@ sp needed
	bx	lr
.L233:
	.align	2
.L232:
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
	ldr	r4, .L242
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L235
	ldr	r1, .L242+4
	lsls	r1, r1, #24
	ldr	r5, .L242+8
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	beq	.L236
.L238:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L242+12
	bl	.L27
	cmp	r0, #0
	beq	.L235
	movs	r0, #1
.L237:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L236:
	ldr	r1, .L242+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L28
	cmp	r0, #0
	bne	.L238
.L235:
	movs	r0, #3
	b	.L237
.L243:
	.align	2
.L242:
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
	ldr	r3, .L245
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L245+4
	ldr	r3, .L245+8
	bl	.L27
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L246:
	.align	2
.L245:
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
	beq	.L248
	movs	r3, #128
	strh	r3, [r4]
.L248:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L252
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
	ldr	r3, .L252+4
	bl	.L27
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L253:
	.align	2
.L252:
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
	ldr	r3, .L255
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L27
	mov	r2, sp
	ldr	r3, .L255+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L255+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L256:
	.align	2
.L255:
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
	ldr	r3, .L259
	movs	r6, r0
	movs	r5, #1
	bl	.L27
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L258
	movs	r2, #255
	ldr	r3, .L259+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L259+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L258
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L258:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L260:
	.align	2
.L259:
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
	bne	.L262
.L271:
	movs	r0, #0
.L263:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L262:
	ldr	r7, .L287
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L264:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L271
	cmp	r6, #0
	beq	.L265
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L265
	ldr	r3, .L287+4
	ldr	r2, .L287+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L265
	ldr	r2, .L287+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L285:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L286:
	bl	PAU_setBattleGauge
.L266:
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
	ldr	r3, .L287+16
	bl	.L27
	cmp	r0, #0
	bne	.L272
	adds	r6, r6, #1
	b	.L264
.L265:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L267
	ldr	r3, .L287+4
	ldr	r2, .L287+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L267
	ldr	r2, .L287+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L285
.L267:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L268
.L269:
	ldr	r3, .L287+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L286
.L268:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L269
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L269
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L266
	b	.L269
.L272:
	movs	r0, #1
	b	.L263
.L288:
	.align	2
.L287:
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
.L291:
	lsls	r0, r4, #24
	ldr	r3, .L299
	lsrs	r0, r0, #24
	bl	.L27
	cmp	r0, #0
	beq	.L290
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L290
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L299+4
	bl	.L27
.L290:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L291
	ldr	r3, .L299+8
	@ sp needed
	bl	.L27
	ldr	r3, .L299+12
	bl	.L27
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L300:
	.align	2
.L299:
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
	bhi	.L302
	ldr	r3, .L304
	ldrb	r0, [r5, #27]
	bl	.L27
	ldr	r3, .L304+4
	bl	.L27
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L303
	adds	r2, r4, #0
.L303:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L302:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L305:
	.align	2
.L304:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC177:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_aisProcInstr
.LC178:
	.ascii	"PAU_AISProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 48
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC178
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
	.word	.LC177
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
.L212:
	bx	r7

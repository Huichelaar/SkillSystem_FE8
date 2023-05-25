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
	.global	PAU_tryAddUnitToPairUpTargetList
	.arch armv4t
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
	ldr	r5, .L16
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L16+4
	bl	.L18
	cmp	r0, #0
	beq	.L1
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L1
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L1
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L1
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L1
	ldr	r1, .L16+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L16+12
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	beq	.L5
.L6:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L16+16
	bl	.L20
.L1:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L5:
	ldr	r1, .L16+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	bne	.L6
	b	.L1
.L17:
	.align	2
.L16:
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
	ldr	r3, .L22
	bl	.L18
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L22+4
	bl	.L20
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L23:
	.align	2
.L22:
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
	ldr	r3, .L25
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L26:
	.align	2
.L25:
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
	ldr	r3, .L28
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L29:
	.align	2
.L28:
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
	ldr	r3, .L31
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L32:
	.align	2
.L31:
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
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r4, r5, r6, lr}
	ldr	r3, [r0, #12]
	ldrb	r4, [r0, #27]
	lsls	r3, r3, #27
	bmi	.L34
	cmp	r4, #0
	beq	.L34
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	bne	.L35
.L34:
	ldr	r3, .L42
	movs	r0, r4
	bl	.L18
	ldr	r1, .L42+4
	lsls	r1, r1, #24
	ldr	r5, .L42+8
	lsrs	r1, r1, #24
	movs	r4, r0
	bl	.L19
	movs	r3, #1
	cmp	r0, #0
	bne	.L36
	ldr	r1, .L42+12
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L19
	movs	r3, #2
	cmp	r0, #0
	bne	.L36
.L35:
	movs	r3, #0
.L36:
	@ sp needed
	movs	r0, r3
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L43:
	.align	2
.L42:
	.word	GetUnit
	.word	DualStrikeID
	.word	SkillTester
	.word	DualGuardID
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
	ldr	r3, .L45
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r1, .L48
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
.L49:
	.align	2
.L48:
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
	ldr	r3, .L51
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L52:
	.align	2
.L51:
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
	ldr	r3, .L55
	ldr	r1, [r3]
	ldr	r3, .L55+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L54
	adds	r3, r0, #0
.L54:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L56:
	.align	2
.L55:
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
	ldr	r3, .L59
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L59+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L59+8
	bl	.L18
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L59+12
	ldr	r3, .L59+16
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L60:
	.align	2
.L59:
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
	ldr	r3, .L65
	movs	r5, r1
	bl	.L18
	ldr	r3, .L65+4
	bl	.L18
	cmp	r0, #39
	bhi	.L62
	ldr	r3, .L65+8
.L64:
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
.L62:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L64
.L66:
	.align	2
.L65:
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
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L84
	movs	r2, #14
	movs	r5, r0
	movs	r4, r1
	add	r0, sp, #16
	ldr	r1, .L84+4
	bl	.L18
	ldr	r1, .L84+8
	ldr	r3, .L84+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L84+16
	bl	.L18
	ldr	r3, .L84+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L68
	ldr	r3, .L84+24
	str	r3, [sp, #4]
.L68:
	movs	r7, #0
	ldr	r3, .L84+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L73:
	movs	r0, r5
	ldr	r3, .L84+32
	bl	.L18
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L84+36
	bl	.L18
	ldr	r3, .L84+40
	movs	r1, r0
	movs	r0, r5
	bl	.L18
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L84+44
	bl	.L18
	cmp	r7, #6
	bne	.L69
	ldr	r6, .L84+48
	ldr	r0, [sp, #8]
	bl	.L86
	ldr	r3, .L84+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L86
	lsls	r1, r4, #24
	lsls	r2, r0, #24
	adds	r3, r4, #0
	lsrs	r1, r1, #24
	lsrs	r2, r2, #24
	cmp	r1, r2
	bls	.L70
	adds	r3, r0, #0
.L70:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L71:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L75
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L76
	cmp	r4, #0
	blt	.L77
	movs	r2, #21
	cmp	r4, #0
	beq	.L78
	movs	r6, #4
	cmp	r4, #9
	ble	.L82
	cmp	r4, #99
	ble	.L80
.L83:
	movs	r0, #5
.L72:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L84+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L84+52
	bl	.L18
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L84+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L73
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L69:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L71
.L75:
	movs	r2, #20
	movs	r6, #3
	b	.L83
.L76:
	movs	r2, #20
	movs	r6, #3
.L80:
	movs	r0, #6
	b	.L72
.L77:
	movs	r2, #20
	movs	r6, #3
.L82:
	movs	r0, #7
	b	.L72
.L78:
	movs	r6, r4
	b	.L82
.L85:
	.align	2
.L84:
	.word	memcpy
	.word	.LANCHOR0
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
	ldr	r5, .L90
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L90+4
	adds	r0, r0, #16
	bl	.L18
	ldr	r3, .L90+8
	str	r0, [r4, #60]
	bl	.L18
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L90+12
	adds	r0, r0, #44
	bl	.L92
	movs	r6, #52
.L88:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L92
	cmp	r6, #108
	bne	.L88
	ldr	r0, .L90+16
	lsls	r0, r0, #16
	ldr	r3, .L90+20
	lsrs	r0, r0, #16
	bl	.L18
	ldr	r3, .L90+24
	movs	r1, r0
	movs	r0, r4
	bl	.L18
	movs	r1, r5
	ldr	r3, .L90+28
	movs	r2, #12
	adds	r1, r1, #40
	add	r0, sp, #4
	bl	.L18
	ldr	r4, .L90+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L90+36
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L91:
	.align	2
.L90:
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
	ldr	r3, .L98
	bl	.L18
	ldrb	r0, [r5, #2]
	ldr	r3, .L98+4
	bl	.L18
	movs	r1, #13
	ldr	r3, .L98+8
	movs	r5, r0
	bl	.L18
	movs	r6, r0
	ldr	r3, .L98+12
	bl	.L18
	ldr	r7, .L98+16
	ldr	r0, .L98+20
	movs	r1, r7
	ldr	r3, .L98+24
	bl	.L18
	ldr	r0, .L98+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L98+32
	bl	.L18
	ldr	r0, [r4, #60]
	ldr	r3, .L98+36
	adds	r0, r0, #44
	bl	.L18
	movs	r2, r5
	ldr	r0, [r4, #60]
	movs	r1, r6
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L98+40
	bl	.L18
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L98+44
	ldr	r7, [r4, #60]
	bl	.L18
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L98+48
	movs	r0, r7
	bl	.L18
	ldr	r3, .L98+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L98+56
	bl	.L18
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L98+60
	ldr	r3, .L98+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L98+68
	bl	.L18
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L94
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L95:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L98+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L98+72
	bl	.L18
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L98+72
	bl	.L18
	ldr	r3, .L98+76
	movs	r0, r6
	bl	.L18
	ldr	r3, .L98+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L98+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L96:
	cmp	r1, r2
	bgt	.L97
	@ sp needed
	movs	r0, #3
	ldr	r3, .L98+84
	bl	.L18
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L94:
	ldr	r4, .L98+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L98+92
	lsrs	r4, r4, #16
	b	.L95
.L97:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L96
.L99:
	.align	2
.L98:
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
	ldr	r3, .L101
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L18
	ldr	r3, .L101+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L101+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L101+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L101+16
	ldr	r3, .L101+20
	bl	.L18
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L102:
	.align	2
.L101:
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
	ldr	r0, .L104
	ldr	r3, .L104+4
	bl	.L18
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L104+8
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L105:
	.align	2
.L104:
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
	ldr	r6, .L108
	@ sp needed
	movs	r7, r0
	ldr	r5, .L108+4
	ldrb	r0, [r6, #12]
	bl	.L19
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L19
	ldr	r3, .L108+8
	movs	r5, r0
	bl	.L18
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r5, r1]
	ldrsb	r2, [r4, r2]
	ldrsb	r3, [r4, r3]
	ldrsb	r0, [r5, r0]
	ldr	r6, .L108+12
	bl	.L86
	movs	r6, r0
	ldr	r3, .L108+16
	bl	.L18
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L108+20
	bl	.L86
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L108+24
	bl	.L18
	movs	r0, r4
	ldr	r3, .L108+28
	bl	.L18
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L109:
	.align	2
.L108:
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
	ldr	r3, .L112
	ldrb	r2, [r3, #17]
	ldr	r3, .L112+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L110
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L110:
	@ sp needed
	bx	lr
.L113:
	.align	2
.L112:
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
	ldr	r4, .L122
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L115
	ldr	r1, .L122+4
	lsls	r1, r1, #24
	ldr	r5, .L122+8
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	beq	.L116
.L118:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L122+12
	bl	.L18
	cmp	r0, #0
	beq	.L115
	movs	r0, #1
.L117:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L116:
	ldr	r1, .L122+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	bne	.L118
.L115:
	movs	r0, #3
	b	.L117
.L123:
	.align	2
.L122:
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
	ldr	r3, .L125
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L125+4
	ldr	r3, .L125+8
	bl	.L18
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L126:
	.align	2
.L125:
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
	beq	.L128
	movs	r3, #128
	strh	r3, [r4]
.L128:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L132
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
	ldr	r3, .L132+4
	bl	.L18
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L133:
	.align	2
.L132:
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
	ldr	r3, .L135
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L18
	mov	r2, sp
	ldr	r3, .L135+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L135+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L136:
	.align	2
.L135:
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
	ldr	r3, .L139
	movs	r6, r0
	movs	r5, #1
	bl	.L18
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L138
	movs	r2, #255
	ldr	r3, .L139+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L139+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L138
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L138:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L140:
	.align	2
.L139:
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
	bne	.L142
.L151:
	movs	r0, #0
.L143:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L142:
	ldr	r7, .L167
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L144:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L151
	cmp	r6, #0
	beq	.L145
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L145
	ldr	r3, .L167+4
	ldr	r2, .L167+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L145
	ldr	r2, .L167+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L165:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L166:
	bl	PAU_setBattleGauge
.L146:
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
	ldr	r3, .L167+16
	bl	.L18
	cmp	r0, #0
	bne	.L152
	adds	r6, r6, #1
	b	.L144
.L145:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L147
	ldr	r3, .L167+4
	ldr	r2, .L167+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L147
	ldr	r2, .L167+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L165
.L147:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L148
.L149:
	ldr	r3, .L167+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L166
.L148:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L149
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L149
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L146
	b	.L149
.L152:
	movs	r0, #1
	b	.L143
.L168:
	.align	2
.L167:
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
.L171:
	lsls	r0, r4, #24
	ldr	r3, .L179
	lsrs	r0, r0, #24
	bl	.L18
	cmp	r0, #0
	beq	.L170
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L170
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L179+4
	bl	.L18
.L170:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L171
	ldr	r3, .L179+8
	@ sp needed
	bl	.L18
	ldr	r3, .L179+12
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L180:
	.align	2
.L179:
	.word	GetUnit
	.word	SetUnitStatus
	.word	RefreshEntityBmMaps
	.word	SMS_UpdateFromGameData
	.size	PAU_clearRescueAndPairUpData, .-PAU_clearRescueAndPairUpData
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC125:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
.LC0:
	.short	1278
	.short	1260
	.short	1261
	.short	1262
	.short	1263
	.short	1264
	.short	1270
	.space	2
	.type	PAU_infoWindowDisplayProcInstr, %object
	.size	PAU_infoWindowDisplayProcInstr, 24
PAU_infoWindowDisplayProcInstr:
	.short	1
	.short	0
	.word	.LC125
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
.L18:
	bx	r3
.L20:
	bx	r4
.L19:
	bx	r5
.L86:
	bx	r6
.L92:
	bx	r7

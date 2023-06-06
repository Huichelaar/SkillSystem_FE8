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
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 0, uses_anonymous_args = 0
	push	{r0, r1, r2, r4, r5, r6, r7, lr}
	ldr	r3, [r0, #12]
	str	r3, [sp, #4]
	movs	r3, #48
	ldr	r2, [sp, #4]
	movs	r5, r0
	tst	r2, r3
	beq	.L34
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L34
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L34
	ldr	r4, .L49
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L49+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L35
	movs	r1, r4
	movs	r0, r5
	bl	.L51
	ldr	r1, .L49+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L51
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L34
.L36:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L35:
	ldr	r3, .L49+12
	movs	r0, r7
	bl	.L18
	movs	r1, r4
	movs	r5, r0
	bl	.L51
	movs	r2, #1
	cmp	r0, #0
	bne	.L36
	ldr	r1, .L49+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L51
	movs	r2, #2
	cmp	r0, #0
	bne	.L36
.L34:
	movs	r2, #0
	b	.L36
.L50:
	.align	2
.L49:
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
	ldr	r3, .L53
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L54:
	.align	2
.L53:
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
	ldr	r1, .L56
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
.L57:
	.align	2
.L56:
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
	ldr	r3, .L59
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L60:
	.align	2
.L59:
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
	ldr	r3, .L63
	ldr	r1, [r3]
	ldr	r3, .L63+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L62
	adds	r3, r0, #0
.L62:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L64:
	.align	2
.L63:
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
	beq	.L67
	movs	r3, #0
	ldr	r4, .L79
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L69
	cmp	r7, #0
	bne	.L70
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L79+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L51
	ldr	r3, .L79+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L77:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L78
.L69:
	cmp	r7, #0
	bne	.L72
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L79+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L51
	ldr	r3, .L79+8
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
.L78:
	movs	r0, #0
	bl	.L51
.L76:
	ldr	r3, .L79+12
	ldrh	r3, [r3]
	subs	r0, r0, r3
	ldr	r2, [sp, #12]
	ldr	r3, [sp, #8]
	lsls	r0, r0, #16
	asrs	r0, r0, #16
	str	r2, [r3, #60]
	strh	r0, [r3, #4]
	strh	r4, [r3, #2]
	movs	r3, #128
	ldr	r2, [sp, #8]
	lsls	r3, r3, #3
	strh	r3, [r2, #12]
	movs	r3, #0
	str	r3, [r2, #28]
	lsls	r3, r7, #13
	lsls	r2, r7, #8
	orrs	r2, r3
	ldr	r3, .L79+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L79+20
	bl	.L18
.L67:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L70:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L79+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L51
	ldr	r3, .L79+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L77
.L72:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L79+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L79+8
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
	ldr	r5, .L79+4
	asrs	r4, r4, #16
	bl	.L19
	b	.L76
.L80:
	.align	2
.L79:
	.word	AffineSetOAMData
	.word	GetValueFromEasingFunction
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.word	-31104
	.word	DisplayAIS
	.size	PAU_scalePairUpPartner, .-PAU_scalePairUpPartner
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
	ldr	r3, .L82
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L82+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L82+8
	bl	.L18
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L82+12
	ldr	r3, .L82+16
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L83:
	.align	2
.L82:
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
	ldr	r3, .L88
	movs	r5, r1
	bl	.L18
	ldr	r3, .L88+4
	bl	.L18
	cmp	r0, #39
	bhi	.L85
	ldr	r3, .L88+8
.L87:
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
.L85:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L87
.L89:
	.align	2
.L88:
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
	ldr	r3, .L107
	movs	r2, #14
	movs	r5, r0
	movs	r4, r1
	add	r0, sp, #16
	ldr	r1, .L107+4
	bl	.L18
	ldr	r1, .L107+8
	ldr	r3, .L107+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L107+16
	bl	.L18
	ldr	r3, .L107+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L91
	ldr	r3, .L107+24
	str	r3, [sp, #4]
.L91:
	movs	r7, #0
	ldr	r3, .L107+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L96:
	movs	r0, r5
	ldr	r3, .L107+32
	bl	.L18
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L107+36
	bl	.L18
	ldr	r3, .L107+40
	movs	r1, r0
	movs	r0, r5
	bl	.L18
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L107+44
	bl	.L18
	cmp	r7, #6
	bne	.L92
	ldr	r6, .L107+48
	ldr	r0, [sp, #8]
	bl	.L51
	ldr	r3, .L107+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L51
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L93
	adds	r3, r0, #0
.L93:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L94:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L98
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L99
	cmp	r4, #0
	blt	.L100
	movs	r2, #21
	cmp	r4, #0
	beq	.L101
	movs	r6, #4
	cmp	r4, #9
	ble	.L105
	cmp	r4, #99
	ble	.L103
.L106:
	movs	r0, #5
.L95:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L107+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L107+52
	bl	.L18
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L107+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L96
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L92:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L94
.L98:
	movs	r2, #20
	movs	r6, #3
	b	.L106
.L99:
	movs	r2, #20
	movs	r6, #3
.L103:
	movs	r0, #6
	b	.L95
.L100:
	movs	r2, #20
	movs	r6, #3
.L105:
	movs	r0, #7
	b	.L95
.L101:
	movs	r6, r4
	b	.L105
.L108:
	.align	2
.L107:
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
	ldr	r5, .L112
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L112+4
	adds	r0, r0, #16
	bl	.L18
	ldr	r3, .L112+8
	str	r0, [r4, #60]
	bl	.L18
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L112+12
	adds	r0, r0, #44
	bl	.L114
	movs	r6, #52
.L110:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L114
	cmp	r6, #108
	bne	.L110
	ldr	r0, .L112+16
	lsls	r0, r0, #16
	ldr	r3, .L112+20
	lsrs	r0, r0, #16
	bl	.L18
	ldr	r3, .L112+24
	movs	r1, r0
	movs	r0, r4
	bl	.L18
	movs	r1, r5
	ldr	r3, .L112+28
	movs	r2, #12
	adds	r1, r1, #40
	add	r0, sp, #4
	bl	.L18
	ldr	r4, .L112+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L112+36
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L113:
	.align	2
.L112:
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
	ldr	r3, .L120
	bl	.L18
	ldrb	r0, [r5, #2]
	ldr	r3, .L120+4
	bl	.L18
	movs	r1, #13
	ldr	r3, .L120+8
	movs	r5, r0
	bl	.L18
	movs	r6, r0
	ldr	r3, .L120+12
	bl	.L18
	ldr	r7, .L120+16
	ldr	r0, .L120+20
	movs	r1, r7
	ldr	r3, .L120+24
	bl	.L18
	ldr	r0, .L120+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L120+32
	bl	.L18
	ldr	r0, [r4, #60]
	ldr	r3, .L120+36
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
	ldr	r3, .L120+40
	bl	.L18
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L120+44
	ldr	r7, [r4, #60]
	bl	.L18
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L120+48
	movs	r0, r7
	bl	.L18
	ldr	r3, .L120+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L120+56
	bl	.L18
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L120+60
	ldr	r3, .L120+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L120+68
	bl	.L18
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L116
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L117:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L120+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L120+72
	bl	.L18
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L120+72
	bl	.L18
	ldr	r3, .L120+76
	movs	r0, r6
	bl	.L18
	ldr	r3, .L120+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L120+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L118:
	cmp	r1, r2
	bgt	.L119
	@ sp needed
	movs	r0, #3
	ldr	r3, .L120+84
	bl	.L18
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L116:
	ldr	r4, .L120+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L120+92
	lsrs	r4, r4, #16
	b	.L117
.L119:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L118
.L121:
	.align	2
.L120:
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
	ldr	r3, .L123
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L18
	ldr	r3, .L123+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L123+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L123+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L123+16
	ldr	r3, .L123+20
	bl	.L18
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L124:
	.align	2
.L123:
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
	ldr	r0, .L126
	ldr	r3, .L126+4
	bl	.L18
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L126+8
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L127:
	.align	2
.L126:
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
	ldr	r6, .L130
	@ sp needed
	movs	r7, r0
	ldr	r5, .L130+4
	ldrb	r0, [r6, #12]
	bl	.L19
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L19
	ldr	r3, .L130+8
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
	ldr	r6, .L130+12
	bl	.L51
	movs	r6, r0
	ldr	r3, .L130+16
	bl	.L18
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L130+20
	bl	.L51
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L130+24
	bl	.L18
	movs	r0, r4
	ldr	r3, .L130+28
	bl	.L18
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L131:
	.align	2
.L130:
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
	ldr	r3, .L134
	ldrb	r2, [r3, #17]
	ldr	r3, .L134+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L132
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L132:
	@ sp needed
	bx	lr
.L135:
	.align	2
.L134:
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
	ldr	r4, .L144
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L137
	ldr	r1, .L144+4
	lsls	r1, r1, #24
	ldr	r5, .L144+8
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	beq	.L138
.L140:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L144+12
	bl	.L18
	cmp	r0, #0
	beq	.L137
	movs	r0, #1
.L139:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L138:
	ldr	r1, .L144+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L19
	cmp	r0, #0
	bne	.L140
.L137:
	movs	r0, #3
	b	.L139
.L145:
	.align	2
.L144:
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
	ldr	r3, .L147
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L147+4
	ldr	r3, .L147+8
	bl	.L18
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L148:
	.align	2
.L147:
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
	beq	.L150
	movs	r3, #128
	strh	r3, [r4]
.L150:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L154
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
	ldr	r3, .L154+4
	bl	.L18
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L155:
	.align	2
.L154:
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
	ldr	r3, .L157
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L18
	mov	r2, sp
	ldr	r3, .L157+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L157+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L158:
	.align	2
.L157:
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
	ldr	r3, .L161
	movs	r6, r0
	movs	r5, #1
	bl	.L18
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L160
	movs	r2, #255
	ldr	r3, .L161+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L161+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L160
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L160:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L162:
	.align	2
.L161:
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
	bne	.L164
.L173:
	movs	r0, #0
.L165:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L164:
	ldr	r7, .L189
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L166:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L173
	cmp	r6, #0
	beq	.L167
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L167
	ldr	r3, .L189+4
	ldr	r2, .L189+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L167
	ldr	r2, .L189+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L187:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L188:
	bl	PAU_setBattleGauge
.L168:
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
	ldr	r3, .L189+16
	bl	.L18
	cmp	r0, #0
	bne	.L174
	adds	r6, r6, #1
	b	.L166
.L167:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L169
	ldr	r3, .L189+4
	ldr	r2, .L189+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L169
	ldr	r2, .L189+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L187
.L169:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L170
.L171:
	ldr	r3, .L189+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L188
.L170:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L171
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L171
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L168
	b	.L171
.L174:
	movs	r0, #1
	b	.L165
.L190:
	.align	2
.L189:
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
.L193:
	lsls	r0, r4, #24
	ldr	r3, .L201
	lsrs	r0, r0, #24
	bl	.L18
	cmp	r0, #0
	beq	.L192
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L192
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L201+4
	bl	.L18
.L192:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L193
	ldr	r3, .L201+8
	@ sp needed
	bl	.L18
	ldr	r3, .L201+12
	bl	.L18
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L202:
	.align	2
.L201:
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
	bhi	.L204
	ldr	r3, .L206
	ldrb	r0, [r5, #27]
	bl	.L18
	ldr	r3, .L206+4
	bl	.L18
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L205
	adds	r2, r4, #0
.L205:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L204:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L207:
	.align	2
.L206:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC132:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
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
	.word	.LC132
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
.L51:
	bx	r6
.L114:
	bx	r7

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
	push	{r4, lr}
	cmp	r3, #0
	beq	.L11
	ldr	r1, [r0, #44]
	ldr	r4, .L19
	ldrh	r2, [r1, #2]
	ldrh	r4, [r4]
	subs	r2, r2, r4
	strh	r2, [r3, #2]
	ldrh	r2, [r1, #4]
	ldr	r1, .L19+4
	ldrh	r1, [r1]
	subs	r2, r2, r1
	strh	r2, [r3, #4]
.L11:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L10
	ldr	r1, [r0, #52]
	ldr	r0, .L19
	ldrh	r2, [r1, #2]
	ldrh	r0, [r0]
	adds	r2, r2, r0
	strh	r2, [r3, #2]
	ldrh	r2, [r1, #4]
	ldr	r1, .L19+4
	ldrh	r1, [r1]
	subs	r2, r2, r1
	strh	r2, [r3, #4]
.L10:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L20:
	.align	2
.L19:
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.size	PAU_adjustBAnimLocs, .-PAU_adjustBAnimLocs
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
	ldr	r5, .L36
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L36+4
	bl	.L38
	cmp	r0, #0
	beq	.L21
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L21
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L21
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L21
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L21
	ldr	r1, .L36+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L36+12
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	beq	.L25
.L26:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L36+16
	bl	.L40
.L21:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L25:
	ldr	r1, .L36+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	bne	.L26
	b	.L21
.L37:
	.align	2
.L36:
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
	ldr	r3, .L42
	bl	.L38
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L42+4
	bl	.L40
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L43:
	.align	2
.L42:
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
	ldr	r3, .L45
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L46:
	.align	2
.L45:
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
	ldr	r3, .L48
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L49:
	.align	2
.L48:
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
	ldr	r3, .L51
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L52:
	.align	2
.L51:
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
	beq	.L54
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L54
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L54
	ldr	r4, .L69
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L69+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L55
	movs	r1, r4
	movs	r0, r5
	bl	.L71
	ldr	r1, .L69+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L71
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L54
.L56:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L55:
	ldr	r3, .L69+12
	movs	r0, r7
	bl	.L38
	movs	r1, r4
	movs	r5, r0
	bl	.L71
	movs	r2, #1
	cmp	r0, #0
	bne	.L56
	ldr	r1, .L69+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L71
	movs	r2, #2
	cmp	r0, #0
	bne	.L56
.L54:
	movs	r2, #0
	b	.L56
.L70:
	.align	2
.L69:
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
	ldr	r3, .L73
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L74:
	.align	2
.L73:
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
	ldr	r1, .L76
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
.L77:
	.align	2
.L76:
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
	ldr	r3, .L79
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L80:
	.align	2
.L79:
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
	ldr	r3, .L83
	ldr	r1, [r3]
	ldr	r3, .L83+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L82
	adds	r3, r0, #0
.L82:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L84:
	.align	2
.L83:
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
	beq	.L87
	movs	r3, #0
	ldr	r4, .L99
	str	r3, [sp]
	movs	r3, r2
	bl	.L40
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L89
	cmp	r7, #0
	bne	.L90
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L99+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L71
	ldr	r3, .L99+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L97:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L98
.L89:
	cmp	r7, #0
	bne	.L92
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L99+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L71
	ldr	r3, .L99+8
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
.L98:
	movs	r0, #0
	bl	.L71
.L96:
	ldr	r3, .L99+12
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
	ldr	r3, .L99+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L99+20
	bl	.L38
.L87:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L90:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L99+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L71
	ldr	r3, .L99+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L97
.L92:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L99+4
	movs	r0, r6
	bl	.L40
	ldr	r3, .L99+8
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
	ldr	r5, .L99+4
	asrs	r4, r4, #16
	bl	.L39
	b	.L96
.L100:
	.align	2
.L99:
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
	bne	.LCB687
	b	.L101	@long jump
.LCB687:
	ldr	r3, .L122
	ldrb	r0, [r5, #27]
	bl	.L38
	ldr	r3, .L122+4
	ldr	r6, [r3]
	ldr	r3, .L122+8
	ldrb	r1, [r3]
	movs	r3, #1
	movs	r0, r3
	lsls	r0, r0, r1
	ldr	r2, [r6, #8]
	tst	r2, r0
	bne	.LCB701
	b	.L101	@long jump
.LCB701:
	ldr	r1, .L122+12
	ldrb	r1, [r1]
	lsls	r3, r3, r1
	tst	r2, r3
	bne	.LCB707
	b	.L101	@long jump
.LCB707:
	ldrb	r3, [r4, #18]
	ldr	r2, .L122+16
	ldr	r1, .L122+16
	lsls	r3, r3, #2
	ldrb	r2, [r3, r2]
	adds	r3, r1, r3
	ldrb	r1, [r3, #1]
	ldr	r0, .L122+20
	cmp	r2, #255
	beq	.L105
	ldr	r3, [r6, #12]
	lsls	r2, r2, #2
	ldr	r0, [r2, r3]
	ldr	r3, [r6, #16]
	adds	r0, r3, r0
.L105:
	ldr	r3, .L122+24
	bl	.L38
	ldr	r3, .L122+28
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, [sp, #4]
	movs	r5, r0
	cmp	r2, #0
	bne	.L106
	rsbs	r3, r3, #0
	lsls	r3, r3, #16
	asrs	r3, r3, #16
.L106:
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	ldr	r2, [sp]
	ldrh	r3, [r4, #2]
	adds	r3, r2, r3
	strh	r3, [r5, #2]
	ldr	r2, .L122+32
	ldrh	r3, [r4, #4]
	ldrh	r2, [r2]
	subs	r3, r3, r2
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
	beq	.L107
	ldr	r3, [r6, #20]
.L108:
	str	r3, [r5, #48]
	ldrb	r3, [r7, #18]
	ldr	r2, .L122+16
	lsls	r3, r3, #2
	adds	r3, r2, r3
	ldrb	r2, [r3, #2]
	ldrb	r1, [r3, #3]
	ldr	r0, .L122+20
	cmp	r2, #255
	beq	.L109
	ldr	r3, [r6, #12]
	lsls	r2, r2, #2
	ldr	r0, [r2, r3]
	ldr	r3, [r6, #16]
	adds	r0, r3, r0
.L109:
	ldr	r3, .L122+24
	bl	.L38
	ldrh	r3, [r7, #2]
	ldr	r2, [sp]
	adds	r3, r2, r3
	strh	r3, [r0, #2]
	ldr	r2, .L122+32
	ldrh	r3, [r7, #4]
	ldrh	r2, [r2]
	subs	r3, r3, r2
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
	beq	.L110
	ldr	r3, [r6, #20]
.L111:
	str	r3, [r4, #48]
	ldr	r3, .L122+36
	bl	.L38
	ldr	r6, .L122+40
	ldr	r3, .L122+44
	movs	r0, r6
	bl	.L38
	cmp	r0, #0
	bne	.L112
	ldr	r3, .L122+48
	movs	r1, #5
	movs	r0, r6
	bl	.L38
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L122+52
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L122+56
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L122+60
	ldr	r3, [r3]
	str	r3, [r0, #56]
	movs	r3, #0
	str	r3, [r0, #60]
	str	r3, [r0, #64]
	str	r3, [r0, #68]
	str	r3, [r0, #72]
.L112:
	ldr	r3, [sp, #4]
	cmp	r3, #0
	beq	.L113
	str	r5, [r0, #68]
	str	r4, [r0, #72]
.L101:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L107:
	ldr	r3, [r6, #24]
	b	.L108
.L110:
	ldr	r3, [r6, #24]
	b	.L111
.L113:
	str	r5, [r0, #60]
	str	r4, [r0, #64]
	b	.L101
.L123:
	.align	2
.L122:
	.word	GetUnit
	.word	battleAnims
	.word	BA2_AB_UNCOMPFRAMEDATA
	.word	BA2_AB_UNCOMPOAMDATA
	.word	PAU_backupBAnimRoundScripts
	.word	gAISFrames_DummyNoFrames
	.word	CreateAIS
	.word	PAU_bAnimDistX
	.word	PAU_bAnimDistY
	.word	SortAISs
	.word	.LANCHOR0
	.word	ProcFind
	.word	ProcStart
	.word	33554436
	.word	33554440
	.word	33554444
	.size	PAU_initPairUpPartner, .-PAU_initPairUpPartner
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
	ldr	r3, .L125
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L125+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L125+8
	bl	.L38
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L125+12
	ldr	r3, .L125+16
	bl	.L38
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L126:
	.align	2
.L125:
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
	ldr	r3, .L131
	movs	r5, r1
	bl	.L38
	ldr	r3, .L131+4
	bl	.L38
	cmp	r0, #39
	bhi	.L128
	ldr	r3, .L131+8
.L130:
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
.L128:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L130
.L132:
	.align	2
.L131:
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
	ldr	r1, .L150
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L150+4
	movs	r2, #14
	adds	r1, r1, #40
	movs	r5, r0
	add	r0, sp, #16
	bl	.L38
	ldr	r1, .L150+8
	ldr	r3, .L150+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L150+16
	bl	.L38
	ldr	r3, .L150+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L134
	ldr	r3, .L150+24
	str	r3, [sp, #4]
.L134:
	movs	r7, #0
	ldr	r3, .L150+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L139:
	movs	r0, r5
	ldr	r3, .L150+32
	bl	.L38
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L150+36
	bl	.L38
	ldr	r3, .L150+40
	movs	r1, r0
	movs	r0, r5
	bl	.L38
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L150+44
	bl	.L38
	cmp	r7, #6
	bne	.L135
	ldr	r6, .L150+48
	ldr	r0, [sp, #8]
	bl	.L71
	ldr	r3, .L150+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L71
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L136
	adds	r3, r0, #0
.L136:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L137:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L141
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L142
	cmp	r4, #0
	blt	.L143
	movs	r2, #21
	cmp	r4, #0
	beq	.L144
	movs	r6, #4
	cmp	r4, #9
	ble	.L148
	cmp	r4, #99
	ble	.L146
.L149:
	movs	r0, #5
.L138:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L150+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L150+52
	bl	.L38
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L150+56
	bl	.L40
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L139
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L135:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L137
.L141:
	movs	r2, #20
	movs	r6, #3
	b	.L149
.L142:
	movs	r2, #20
	movs	r6, #3
.L146:
	movs	r0, #6
	b	.L138
.L143:
	movs	r2, #20
	movs	r6, #3
.L148:
	movs	r0, #7
	b	.L138
.L144:
	movs	r6, r4
	b	.L148
.L151:
	.align	2
.L150:
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
	ldr	r5, .L155
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L155+4
	adds	r0, r0, #56
	bl	.L38
	ldr	r3, .L155+8
	str	r0, [r4, #60]
	bl	.L38
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L155+12
	adds	r0, r0, #44
	bl	.L157
	movs	r6, #52
.L153:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L157
	cmp	r6, #108
	bne	.L153
	ldr	r0, .L155+16
	lsls	r0, r0, #16
	ldr	r3, .L155+20
	lsrs	r0, r0, #16
	bl	.L38
	ldr	r3, .L155+24
	movs	r1, r0
	movs	r0, r4
	bl	.L38
	movs	r1, r5
	ldr	r3, .L155+28
	movs	r2, #12
	adds	r1, r1, #80
	add	r0, sp, #4
	bl	.L38
	ldr	r4, .L155+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L40
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L155+36
	bl	.L40
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L156:
	.align	2
.L155:
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
	ldr	r3, .L163
	bl	.L38
	ldrb	r0, [r5, #2]
	ldr	r3, .L163+4
	bl	.L38
	movs	r1, #13
	ldr	r3, .L163+8
	movs	r5, r0
	bl	.L38
	movs	r6, r0
	ldr	r3, .L163+12
	bl	.L38
	ldr	r7, .L163+16
	ldr	r0, .L163+20
	movs	r1, r7
	ldr	r3, .L163+24
	bl	.L38
	ldr	r0, .L163+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L163+32
	bl	.L38
	ldr	r0, [r4, #60]
	ldr	r3, .L163+36
	adds	r0, r0, #44
	bl	.L38
	movs	r2, r5
	ldr	r0, [r4, #60]
	movs	r1, r6
	bl	PAU_infoWindowPositionUnit
	ldr	r0, [r4, #60]
	movs	r3, r0
	adds	r3, r3, #43
	ldrb	r1, [r3]
	adds	r0, r0, #44
	ldr	r3, .L163+40
	bl	.L38
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L163+44
	ldr	r7, [r4, #60]
	bl	.L38
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L163+48
	movs	r0, r7
	bl	.L38
	ldr	r3, .L163+52
	ldr	r0, [r4, #60]
	lsls	r1, r6, #1
	adds	r1, r1, #70
	adds	r1, r1, r3
	adds	r0, r0, #44
	ldr	r3, .L163+56
	bl	.L38
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L163+60
	ldr	r3, .L163+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L163+68
	bl	.L38
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L159
	movs	r6, #192
	orrs	r4, r3
	lsls	r4, r4, #16
	lsrs	r4, r4, #16
	lsls	r6, r6, #3
.L160:
	movs	r7, #128
	ldr	r5, [sp, #4]
	ldr	r3, .L163+52
	adds	r5, r5, #84
	adds	r5, r3, r5
	lsls	r7, r7, #7
	movs	r2, r7
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L163+72
	bl	.L38
	movs	r1, r4
	movs	r2, r7
	movs	r0, r5
	ldr	r3, .L163+72
	bl	.L38
	ldr	r3, .L163+76
	movs	r0, r6
	bl	.L38
	ldr	r3, .L163+80
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	ldr	r2, .L163+52
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r3, r2, r3
	movs	r2, #0
	orrs	r0, r7
	lsls	r0, r0, #16
	lsrs	r0, r0, #16
	adds	r4, r0, #2
	adds	r0, r0, #3
.L161:
	cmp	r1, r2
	bgt	.L162
	@ sp needed
	movs	r0, #3
	ldr	r3, .L163+84
	bl	.L38
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L159:
	ldr	r4, .L163+88
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L163+92
	lsrs	r4, r4, #16
	b	.L160
.L162:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L161
.L164:
	.align	2
.L163:
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
	ldr	r3, .L166
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L38
	ldr	r3, .L166+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L166+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L166+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L166+16
	ldr	r3, .L166+20
	bl	.L38
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L167:
	.align	2
.L166:
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
	ldr	r0, .L169
	ldr	r3, .L169+4
	bl	.L38
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L169+8
	bl	.L38
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L170:
	.align	2
.L169:
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
	ldr	r6, .L173
	@ sp needed
	movs	r7, r0
	ldr	r5, .L173+4
	ldrb	r0, [r6, #12]
	bl	.L39
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L39
	ldr	r3, .L173+8
	movs	r5, r0
	bl	.L38
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r1, [r5, r1]
	ldrsb	r2, [r4, r2]
	ldrsb	r3, [r4, r3]
	ldrsb	r0, [r5, r0]
	ldr	r6, .L173+12
	bl	.L71
	movs	r6, r0
	ldr	r3, .L173+16
	bl	.L38
	movs	r3, r7
	movs	r2, #0
	movs	r1, r6
	movs	r0, r4
	ldr	r6, .L173+20
	bl	.L71
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L173+24
	bl	.L38
	movs	r0, r4
	ldr	r3, .L173+28
	bl	.L38
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L174:
	.align	2
.L173:
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
	ldr	r3, .L177
	ldrb	r2, [r3, #17]
	ldr	r3, .L177+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L175
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L175:
	@ sp needed
	bx	lr
.L178:
	.align	2
.L177:
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
	ldr	r4, .L187
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L180
	ldr	r1, .L187+4
	lsls	r1, r1, #24
	ldr	r5, .L187+8
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	beq	.L181
.L183:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L187+12
	bl	.L38
	cmp	r0, #0
	beq	.L180
	movs	r0, #1
.L182:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L181:
	ldr	r1, .L187+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L39
	cmp	r0, #0
	bne	.L183
.L180:
	movs	r0, #3
	b	.L182
.L188:
	.align	2
.L187:
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
	ldr	r3, .L190
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L190+4
	ldr	r3, .L190+8
	bl	.L38
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L191:
	.align	2
.L190:
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
	beq	.L193
	movs	r3, #128
	strh	r3, [r4]
.L193:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L197
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
	ldr	r3, .L197+4
	bl	.L38
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L198:
	.align	2
.L197:
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
	ldr	r3, .L200
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L38
	mov	r2, sp
	ldr	r3, .L200+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L200+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L201:
	.align	2
.L200:
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
	ldr	r3, .L204
	movs	r6, r0
	movs	r5, #1
	bl	.L38
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L203
	movs	r2, #255
	ldr	r3, .L204+4
	ldr	r3, [r3]
	lsls	r5, r5, #1
	ldrb	r3, [r3]
	lsls	r2, r2, #1
	ands	r5, r2
	adds	r5, r3, r5
	ldr	r3, .L204+8
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L203
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L203:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L205:
	.align	2
.L204:
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
	bne	.L207
.L216:
	movs	r0, #0
.L208:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L207:
	ldr	r7, .L232
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L209:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L216
	cmp	r6, #0
	beq	.L210
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L210
	ldr	r3, .L232+4
	ldr	r2, .L232+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L210
	ldr	r2, .L232+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L230:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L231:
	bl	PAU_setBattleGauge
.L211:
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
	ldr	r3, .L232+16
	bl	.L38
	cmp	r0, #0
	bne	.L217
	adds	r6, r6, #1
	b	.L209
.L210:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L212
	ldr	r3, .L232+4
	ldr	r2, .L232+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L212
	ldr	r2, .L232+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L230
.L212:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L213
.L214:
	ldr	r3, .L232+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #2
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L231
.L213:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L214
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L214
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L211
	b	.L214
.L217:
	movs	r0, #1
	b	.L208
.L233:
	.align	2
.L232:
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
.L236:
	lsls	r0, r4, #24
	ldr	r3, .L244
	lsrs	r0, r0, #24
	bl	.L38
	cmp	r0, #0
	beq	.L235
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L235
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L244+4
	bl	.L38
.L235:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L236
	ldr	r3, .L244+8
	@ sp needed
	bl	.L38
	ldr	r3, .L244+12
	bl	.L38
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L245:
	.align	2
.L244:
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
	bhi	.L247
	ldr	r3, .L249
	ldrb	r0, [r5, #27]
	bl	.L38
	ldr	r3, .L249+4
	bl	.L38
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L248
	adds	r2, r4, #0
.L248:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L247:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L250:
	.align	2
.L249:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	PAU_infoWindowDisplayProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC147:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_aisProcInstr
.LC148:
	.ascii	"PAU_AISProc\000"
	.section	.rodata
	.align	2
	.set	.LANCHOR0,. + 0
	.type	PAU_aisProcInstr, %object
	.size	PAU_aisProcInstr, 40
PAU_aisProcInstr:
	.short	1
	.short	0
	.word	.LC148
	.short	14
	.short	1
	.word	0
	.short	2
	.short	0
	.word	PAU_haltBAnims
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
	.word	.LC147
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
.L38:
	bx	r3
.L40:
	bx	r4
.L39:
	bx	r5
.L71:
	bx	r6
.L157:
	bx	r7

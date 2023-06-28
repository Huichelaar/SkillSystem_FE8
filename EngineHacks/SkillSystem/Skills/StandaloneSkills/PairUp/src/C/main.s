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
	ldr	r5, .L45
	ldr	r3, [r5]
	ldrsb	r0, [r3, r0]
	ldr	r3, .L45+4
	bl	.L25
	cmp	r0, #0
	beq	.L30
	ldr	r3, [r5]
	ldr	r3, [r3, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L30
	ldr	r3, [r4, #4]
	ldrb	r3, [r3, #4]
	cmp	r3, #81
	beq	.L30
	movs	r3, r4
	movs	r2, #15
	adds	r3, r3, #48
	ldrb	r3, [r3]
	ands	r3, r2
	cmp	r3, #4
	beq	.L30
	movs	r3, #48
	ldr	r2, [r4, #12]
	tst	r2, r3
	bne	.L30
	ldr	r1, .L45+8
	lsls	r1, r1, #24
	movs	r0, r4
	ldr	r5, .L45+12
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L34
.L35:
	movs	r1, #17
	movs	r0, #16
	ldrb	r2, [r4, #11]
	ldrsb	r1, [r4, r1]
	ldrsb	r0, [r4, r0]
	movs	r3, #0
	ldr	r4, .L45+16
	bl	.L20
.L30:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L34:
	ldr	r1, .L45+20
	lsls	r1, r1, #24
	movs	r0, r4
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L35
	b	.L30
.L46:
	.align	2
.L45:
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
	ldr	r3, .L48
	bl	.L25
	adds	r4, r4, #42
	ldrb	r1, [r4]
	movs	r3, #0
	str	r0, [sp]
	movs	r2, #8
	movs	r0, #2
	ldr	r4, .L48+4
	bl	.L20
	pop	{r0, r1, r4}
	pop	{r0}
	bx	r0
.L49:
	.align	2
.L48:
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
	ldr	r4, .L60
	ldrb	r2, [r4]
	strh	r3, [r0, #42]
	adds	r3, r3, #4
	strh	r3, [r0, #44]
	movs	r5, r0
	ldr	r3, .L60+4
	cmp	r2, #0
	beq	.L51
	movs	r2, r4
	adds	r2, r2, #76
	ldrb	r2, [r2]
	cmp	r2, #0
	beq	.L51
	movs	r2, r4
	adds	r2, r2, #152
	ldrb	r2, [r2]
	cmp	r2, #0
	bne	.L52
.L51:
	movs	r0, r5
	bl	.L25
.L50:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L52:
	ldr	r2, [r4, #72]
	str	r2, [r0, #64]
	movs	r2, r4
	adds	r2, r2, #148
	ldr	r0, [r2]
	adds	r4, r4, #224
	bl	.L25
	ldr	r3, [r4]
	movs	r1, r3
	ldr	r2, .L60+8
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r1, r1, #80
	str	r3, [r5, #68]
	strh	r2, [r1]
	ldr	r2, .L60+12
	ldrb	r2, [r2]
	lsls	r2, r2, #24
	asrs	r2, r2, #24
	lsls	r2, r2, #4
	adds	r3, r3, #82
	strh	r2, [r3]
	b	.L50
.L61:
	.align	2
.L60:
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
	ldr	r3, .L63
	@ sp needed
	ldr	r2, [r3]
	movs	r3, #128
	ldrb	r1, [r2]
	rsbs	r3, r3, #0
	orrs	r3, r1
	strb	r3, [r2]
	bx	lr
.L64:
	.align	2
.L63:
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
	ldr	r3, .L66
	ldr	r2, [r3]
	ldrb	r3, [r2]
	ands	r3, r1
	strb	r3, [r2]
	bx	lr
.L67:
	.align	2
.L66:
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
	ldr	r3, .L69
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	lsrs	r0, r0, #7
	bx	lr
.L70:
	.align	2
.L69:
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
	beq	.L72
	ldrb	r7, [r0, #27]
	cmp	r7, #0
	beq	.L72
	bl	PAU_getPairUpFlag
	cmp	r0, #0
	beq	.L72
	ldr	r4, .L87
	ldr	r3, [sp, #4]
	lsls	r4, r4, #24
	ldr	r6, .L87+4
	lsrs	r4, r4, #24
	lsls	r3, r3, #26
	bpl	.L73
	movs	r1, r4
	movs	r0, r5
	bl	.L89
	ldr	r1, .L87+8
	lsls	r1, r1, #24
	movs	r4, r0
	lsrs	r1, r1, #24
	movs	r0, r5
	bl	.L89
	orrs	r4, r0
	lsls	r4, r4, #24
	movs	r2, #3
	lsrs	r4, r4, #24
	beq	.L72
.L74:
	@ sp needed
	movs	r0, r2
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L73:
	ldr	r3, .L87+12
	movs	r0, r7
	bl	.L25
	movs	r1, r4
	movs	r5, r0
	bl	.L89
	movs	r2, #1
	cmp	r0, #0
	bne	.L74
	ldr	r1, .L87+8
	lsls	r1, r1, #24
	movs	r0, r5
	lsrs	r1, r1, #24
	bl	.L89
	movs	r2, #2
	cmp	r0, #0
	bne	.L74
.L72:
	movs	r2, #0
	b	.L74
.L88:
	.align	2
.L87:
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
	beq	.L91
	adds	r5, r5, #4
.L91:
	ldr	r6, .L103
	ldr	r4, .L103+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L103+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L103+12
	bl	.L25
	ldr	r3, [sp, #4]
	adds	r3, r3, #54
	ldrb	r3, [r3]
	ldr	r2, .L103+16
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	ldr	r0, .L103+20
	ldrsb	r7, [r2, r3]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L103+24
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
	bls	.L94
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L103+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L103+32
	bl	.L89
	ldr	r3, .L103+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L103+8
.L102:
	bl	.L89
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L96
	strb	r3, [r2]
.L90:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L94:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L103+28
	ldr	r6, .L103+32
	bl	.L89
	ldr	r3, .L103+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L103+36
	movs	r3, r5
	b	.L102
.L96:
	movs	r3, #0
	ldr	r0, [sp, #4]
	strb	r3, [r2]
	ldr	r3, .L103+40
	bl	.L25
	b	.L90
.L104:
	.align	2
.L103:
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
	beq	.L106
	adds	r5, r5, #4
.L106:
	ldr	r6, .L118
	ldr	r4, .L118+4
	movs	r1, #0
	movs	r0, r6
	bl	.L20
	movs	r1, #0
	ldr	r0, .L118+8
	bl	.L20
	movs	r0, #3
	ldr	r3, .L118+12
	bl	.L25
	movs	r2, #54
	movs	r7, #4
	ldr	r3, [sp, #4]
	ldrsb	r2, [r3, r2]
	ldr	r3, .L118+16
	ldr	r0, .L118+20
	adds	r3, r3, r2
	ldrsb	r7, [r3, r7]
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L118+24
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
	bls	.L109
	movs	r0, #10
	subs	r7, r0, r7
	ldr	r0, .L118+28
	lsls	r7, r7, #1
	movs	r1, r6
	movs	r3, r5
	movs	r2, r4
	adds	r0, r7, r0
	ldr	r6, .L118+32
	bl	.L89
	ldr	r3, .L118+36
	movs	r2, r4
	adds	r0, r7, r3
	movs	r3, r5
	ldr	r1, .L118+8
.L117:
	bl	.L89
	ldr	r2, [sp, #4]
	adds	r2, r2, #54
	ldrb	r3, [r2]
	adds	r3, r3, #1
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, #4
	beq	.L111
	strb	r3, [r2]
.L105:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L109:
	movs	r7, #30
	subs	r7, r7, r4
	lsls	r7, r7, #1
	adds	r1, r6, r7
	movs	r3, r5
	movs	r2, r4
	ldr	r0, .L118+28
	ldr	r6, .L118+32
	bl	.L89
	ldr	r3, .L118+8
	movs	r2, r4
	adds	r1, r7, r3
	ldr	r0, .L118+36
	movs	r3, r5
	b	.L117
.L111:
	movs	r4, #0
	ldr	r0, [sp, #4]
	strb	r4, [r2]
	ldr	r3, .L118+40
	bl	.L25
	movs	r1, r4
	ldr	r0, .L118
	ldr	r5, .L118+4
	bl	.L16
	movs	r1, r4
	ldr	r0, .L118+8
	bl	.L16
	b	.L105
.L119:
	.align	2
.L118:
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
	ldr	r3, .L121
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	movs	r3, #127
	ands	r0, r3
	bx	lr
.L122:
	.align	2
.L121:
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
	ldr	r1, .L124
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
.L125:
	.align	2
.L124:
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
	ldr	r3, .L127
	@ sp needed
	ldr	r3, [r3]
	ldrb	r0, [r3]
	bx	lr
.L128:
	.align	2
.L127:
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
	ldr	r3, .L131
	ldr	r1, [r3]
	ldr	r3, .L131+4
	ldrb	r2, [r3]
	adds	r3, r2, #0
	cmp	r2, r0
	bls	.L130
	adds	r3, r0, #0
.L130:
	strb	r3, [r1]
	@ sp needed
	bx	lr
.L132:
	.align	2
.L131:
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
	ldr	r3, .L157
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
	ldr	r3, .L157+4
	bl	.L25
	ldr	r3, [r5, #4]
	ldr	r5, [r3, #52]
	movs	r3, #0
	movs	r6, r5
	str	r0, [sp, #8]
.L147:
	ldrh	r0, [r6]
	subs	r7, r6, r5
	cmp	r0, #0
	bne	.LCB1049
	b	.L135	@long jump
.LCB1049:
	ldr	r1, [sp, #4]
	lsrs	r2, r0, #8
	cmp	r1, #0
	beq	.L136
	cmp	r2, #0
	bne	.L137
	ldr	r2, [sp, #12]
	cmp	r0, r2
	bne	.L138
	ldr	r3, .L157+8
	movs	r0, r1
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L139
	ldr	r3, .L157+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L139:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L146
	ldr	r3, [sp, #8]
	lsls	r0, r3, #24
	lsrs	r0, r0, #24
.L156:
	ldr	r3, .L157+16
	lsls	r0, r0, #1
	ldrh	r3, [r0, r3]
	strh	r3, [r4]
.L146:
	adds	r5, r5, r7
	ldrh	r0, [r5, #2]
	subs	r0, r0, #1
	lsls	r0, r0, #16
.L154:
	lsrs	r0, r0, #16
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L137:
	cmp	r2, #1
	bne	.L138
	cmp	r3, #0
	bne	.L138
	ldr	r7, [sp, #8]
	adds	r2, r2, #254
	ands	r7, r2
	ands	r0, r2
	cmp	r0, r7
	bne	.L138
	ldr	r3, .L157+8
	ldr	r0, [sp, #4]
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L142
	ldr	r3, .L157+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L142:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L143
	ldr	r3, .L157+16
	lsls	r7, r7, #1
	ldrh	r3, [r7, r3]
	strh	r3, [r4]
.L143:
	ldrh	r3, [r6, #2]
.L138:
	adds	r6, r6, #4
	b	.L147
.L136:
	cmp	r2, #0
	bne	.L144
	ldr	r3, .L157+8
	bl	.L25
	movs	r2, #4
	ldrsh	r3, [r0, r2]
	strh	r3, [r4]
	cmp	r3, #30
	bne	.L145
	ldr	r3, .L157+12
	ldrh	r3, [r3]
	strh	r3, [r4]
.L145:
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	adds	r3, r3, #1
	bne	.L146
	ldrb	r0, [r6]
	ldr	r3, .L157+4
	bl	.L25
	b	.L156
.L144:
	cmp	r2, #1
	bne	.L138
	adds	r2, r2, #254
	ands	r0, r2
	cmp	r0, #4
	beq	.L138
	cmp	r0, #9
	beq	.L138
	b	.L156
.L135:
	subs	r3, r3, #1
	lsls	r0, r3, #16
	b	.L154
.L158:
	.align	2
.L157:
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
	beq	.L159
	movs	r3, #0
	ldr	r4, .L171
	str	r3, [sp]
	movs	r3, r2
	bl	.L20
	ldr	r6, [r5, #68]
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	movs	r2, #46
	ldrsh	r0, [r5, r2]
	cmp	r6, #0
	beq	.L161
	cmp	r7, #0
	bne	.L162
	movs	r1, #50
	ldrsh	r2, [r5, r1]
	ldr	r6, .L171+4
	movs	r4, #54
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L89
	ldr	r3, .L171+8
	ldrh	r4, [r3]
	subs	r4, r0, r4
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	lsls	r4, r4, #16
	movs	r1, #58
	ldrsh	r2, [r5, r1]
	asrs	r4, r4, #16
.L169:
	movs	r0, #46
	ldrsh	r1, [r5, r0]
	str	r1, [sp]
	movs	r1, #88
	b	.L170
.L161:
	cmp	r7, #0
	bne	.L164
	movs	r1, #54
	ldrsh	r2, [r5, r1]
	ldr	r6, .L171+4
	movs	r4, #50
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, r7
	bl	.L89
	ldr	r3, .L171+8
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
.L170:
	movs	r0, #0
	bl	.L89
.L168:
	ldr	r3, .L171+12
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
	ldr	r3, .L171+16
	orrs	r3, r2
	ldr	r2, [sp, #8]
	strh	r3, [r2, #8]
	movs	r0, r2
	ldr	r3, .L171+20
	bl	.L25
.L159:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L162:
	movs	r1, #52
	ldrsh	r2, [r5, r1]
	ldr	r6, .L171+4
	movs	r4, #56
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	movs	r0, #0
	bl	.L89
	ldr	r3, .L171+8
	ldrh	r4, [r3]
	adds	r4, r4, r0
	lsls	r4, r4, #16
	movs	r2, #44
	ldrsh	r3, [r5, r2]
	asrs	r4, r4, #16
	movs	r1, #60
	ldrsh	r2, [r5, r1]
	b	.L169
.L164:
	movs	r1, #56
	ldrsh	r2, [r5, r1]
	movs	r4, #52
	ldrsh	r1, [r5, r4]
	str	r0, [sp]
	ldr	r4, .L171+4
	movs	r0, r6
	bl	.L20
	ldr	r3, .L171+8
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
	ldr	r5, .L171+4
	asrs	r4, r4, #16
	bl	.L16
	b	.L168
.L172:
	.align	2
.L171:
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
	bne	.LCB1394
	b	.L173	@long jump
.LCB1394:
	ldrb	r0, [r5, #27]
	ldr	r3, .L198
	bl	.L25
	add	r3, sp, #24
	adds	r1, r3, #6
	bl	PAU_findPairUpBAnim
	ldr	r3, .L198+4
	ldr	r2, .L198+8
	ldr	r3, [r3]
	lsls	r0, r0, #5
	adds	r3, r3, r0
	ldrb	r0, [r2]
	movs	r2, #1
	movs	r5, r2
	lsls	r5, r5, r0
	ldr	r1, [r3, #8]
	tst	r1, r5
	bne	.LCB1414
	b	.L173	@long jump
.LCB1414:
	ldr	r0, .L198+12
	ldrb	r0, [r0]
	lsls	r2, r2, r0
	tst	r1, r2
	bne	.LCB1420
	b	.L173	@long jump
.LCB1420:
	ldr	r2, [r3, #16]
	str	r2, [sp, #16]
	ldrb	r0, [r7, #18]
	ldr	r1, .L198+16
	lsls	r0, r0, #2
	ldrb	r2, [r0, r1]
	adds	r1, r1, r0
	ldr	r5, [r3, #12]
	ldrb	r1, [r1, #1]
	ldr	r0, .L198+20
	cmp	r2, #255
	beq	.L175
	lsls	r2, r2, #2
	ldr	r0, [r2, r5]
	ldr	r2, [sp, #16]
	adds	r0, r2, r0
.L175:
	ldr	r2, [r3, #20]
	ldr	r3, [r3, #24]
	str	r3, [sp, #8]
	ldr	r3, .L198+24
	str	r2, [sp, #20]
	bl	.L25
	ldr	r3, .L198+28
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, [sp, #12]
	str	r0, [sp, #4]
	cmp	r3, #0
	bne	.L176
	rsbs	r6, r6, #0
	lsls	r6, r6, #16
	asrs	r6, r6, #16
.L176:
	ldrh	r3, [r7, #2]
	lsls	r6, r6, #16
	ldr	r2, [sp, #4]
	lsrs	r6, r6, #16
	adds	r3, r6, r3
	strh	r3, [r2, #2]
	ldr	r2, .L198+32
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
	beq	.L177
	ldr	r3, [sp, #20]
	str	r3, [sp, #8]
.L177:
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	str	r2, [r3, #48]
	ldrb	r3, [r4, #18]
	ldr	r2, .L198+16
	lsls	r3, r3, #2
	adds	r2, r2, r3
	ldrb	r3, [r2, #2]
	ldrb	r1, [r2, #3]
	ldr	r0, .L198+20
	cmp	r3, #255
	beq	.L178
	lsls	r3, r3, #2
	ldr	r0, [r3, r5]
	ldr	r3, [sp, #16]
	adds	r0, r3, r0
.L178:
	ldr	r3, .L198+24
	bl	.L25
	ldrh	r3, [r4, #2]
	adds	r6, r6, r3
	strh	r6, [r0, #2]
	ldr	r2, .L198+32
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
	ldr	r3, .L198+36
	adds	r3, r3, #8
	str	r3, [sp, #8]
	movs	r5, r0
	movs	r0, r3
	ldr	r3, .L198+40
	bl	.L25
	movs	r4, r0
	cmp	r0, r6
	bne	.L179
	ldr	r3, .L198+44
	movs	r1, #5
	ldr	r0, [sp, #8]
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r3, [r3]
	str	r3, [r0, #44]
	ldr	r3, .L198+48
	ldr	r3, [r3]
	str	r3, [r0, #48]
	ldr	r3, .L198+52
	ldr	r3, [r3]
	str	r3, [r0, #52]
	ldr	r3, .L198+56
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
.L179:
	ldr	r3, [sp, #4]
	movs	r2, #2
	ldrsh	r2, [r3, r2]
	movs	r3, #2
	ldrsh	r0, [r7, r3]
	ldr	r3, .L198+60
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
	beq	.L180
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
	ldr	r3, .L198+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #91
.L197:
	strb	r0, [r3]
	subs	r0, r0, #128
	subs	r3, r3, #1
	strb	r0, [r3]
	movs	r3, r7
	muls	r3, r7
	movs	r0, r6
	muls	r0, r6
	adds	r0, r0, r3
	ldr	r3, .L198+68
	bl	.L25
	movs	r3, r4
	lsls	r1, r0, #16
	movs	r0, #128
	asrs	r1, r1, #16
	asrs	r2, r1, #1
	adds	r3, r3, #86
	strh	r2, [r3]
	lsls	r0, r0, #6
	ldr	r3, .L198+72
	bl	.L25
	adds	r4, r4, #84
	strh	r0, [r4]
.L173:
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L180:
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
	ldr	r3, .L198+64
	bl	.L25
	movs	r3, r4
	asrs	r0, r0, #8
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	adds	r3, r3, #89
	b	.L197
.L199:
	.align	2
.L198:
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
	ldr	r7, .L211
	movs	r5, r0
	movs	r0, r7
	ldr	r3, .L211+4
	adds	r0, r0, #8
	bl	.L25
	subs	r4, r0, #0
	bne	.L201
	movs	r0, r5
	ldr	r3, .L211+8
	bl	.L25
.L200:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L201:
	movs	r2, #32
	ldrh	r3, [r5, #16]
	bics	r3, r2
	strh	r3, [r5, #16]
	movs	r0, r5
	ldr	r3, .L211+12
	bl	.L25
	ldr	r3, .L211+16
	movs	r6, #0
	ldrsh	r6, [r3, r6]
	ldr	r3, .L211+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r2, [sp, #4]
	cmp	r3, #0
	beq	.L203
	ldr	r3, .L211+24
	ldr	r3, [r3]
	cmp	r3, r0
	beq	.L203
	ldr	r3, .L211+28
	movs	r0, r5
	bl	.L25
	movs	r1, #1
	ldr	r3, .L211+32
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r7
	ldr	r3, .L211+36
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
.L204:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r2, .L211+40
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
	b	.L200
.L203:
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
	beq	.L204
	movs	r1, #2
	ldrsh	r2, [r5, r1]
	movs	r1, #128
	lsls	r0, r6, #16
	ldr	r5, .L211+44
	lsrs	r0, r0, #16
	lsls	r1, r1, #1
	bl	.L16
	b	.L204
.L212:
	.align	2
.L211:
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
	ldr	r6, .L224
	movs	r4, r0
	movs	r0, r6
	ldr	r3, .L224+4
	sub	sp, sp, #20
	adds	r0, r0, #8
	bl	.L25
	subs	r5, r0, #0
	bne	.L214
	movs	r0, r4
	ldr	r3, .L224+8
	bl	.L25
.L213:
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L214:
	movs	r2, #32
	ldrh	r3, [r4, #16]
	bics	r3, r2
	strh	r3, [r4, #16]
	movs	r0, r4
	ldr	r3, .L224+12
	bl	.L25
	movs	r7, r5
	ldr	r3, .L224+16
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #8]
	ldr	r3, .L224+20
	ldrh	r3, [r3]
	lsls	r2, r0, #1
	str	r0, [sp, #4]
	str	r2, [sp, #12]
	adds	r7, r7, #43
	cmp	r3, #0
	beq	.L216
	ldr	r3, .L224+24
	ldr	r3, [r3]
	cmp	r3, r0
	bne	.L216
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L224+28
	rsbs	r1, r1, #0
	bl	.L25
	movs	r0, r6
	movs	r1, r5
	ldr	r3, .L224+32
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
	ldr	r3, .L224+36
	movs	r0, r4
	bl	.L25
	ldrh	r3, [r0, #2]
	strh	r3, [r6, #44]
.L217:
	movs	r3, #16
	ldrb	r2, [r7]
	orrs	r3, r2
	strb	r3, [r7]
	movs	r3, r5
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L224+40
	ldrb	r3, [r3]
	adds	r5, r5, #42
	strb	r3, [r5]
	movs	r3, #8
	ldrh	r2, [r4]
	orrs	r2, r3
	strh	r2, [r4]
	ldr	r2, [sp, #4]
	lsls	r0, r2, #3
	ldr	r2, .L224+44
	ldr	r2, [r0, r2]
	ldrh	r1, [r2]
	orrs	r3, r1
	strh	r3, [r2]
	b	.L213
.L216:
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
	beq	.L217
	ldr	r3, .L224+36
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
	ldr	r6, .L224+48
	bl	.L89
	b	.L217
.L225:
	.align	2
.L224:
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
	ldr	r5, .L237
	ldrh	r3, [r6, #8]
	lsls	r4, r1, #10
	lsls	r4, r4, #16
	asrs	r4, r4, #16
	ands	r3, r5
	orrs	r3, r4
	ldr	r2, [r0, #96]
	strh	r3, [r6, #8]
	ldrh	r3, [r2, #8]
	ldr	r0, .L237+4
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
	adds	r0, r0, #8
	ldr	r3, .L237+8
	bl	.L25
	cmp	r0, #0
	beq	.L226
	ldr	r2, [r0, #60]
	cmp	r2, #0
	beq	.L229
	ldrh	r3, [r2, #8]
	ands	r3, r5
	orrs	r3, r4
	strh	r3, [r2, #8]
.L229:
	ldr	r3, [r0, #68]
	cmp	r3, #0
	beq	.L226
	ldrh	r1, [r3, #8]
	ands	r5, r1
	orrs	r4, r5
	strh	r4, [r3, #8]
.L226:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L238:
	.align	2
.L237:
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
	ldr	r3, .L275
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp, #24]
	movs	r3, r0
	adds	r3, r3, #43
	movs	r4, r0
	ldrb	r3, [r3]
	cmp	r1, #0
	bne	.L240
	ldr	r2, .L275+4
	ldr	r5, [r2]
	ldr	r2, [r0, #48]
	str	r2, [sp, #16]
	ldr	r2, [r0, #60]
	ldr	r7, [r0, #44]
	str	r2, [sp, #12]
	ldr	r6, [r0, #64]
	lsls	r3, r3, #30
	bmi	.L241
.L271:
	ldrb	r0, [r5, #27]
	ldr	r3, .L275+8
	bl	.L25
	movs	r3, r6
	ldr	r6, [sp, #16]
	str	r3, [sp, #16]
	ldr	r3, [sp, #12]
	movs	r5, r0
	str	r7, [sp, #12]
	movs	r7, r3
	b	.L241
.L240:
	ldr	r2, .L275+12
	ldr	r5, [r2]
	ldr	r2, [r0, #56]
	str	r2, [sp, #16]
	ldr	r2, [r0, #68]
	ldr	r7, [r0, #52]
	str	r2, [sp, #12]
	ldr	r6, [r0, #72]
	lsls	r3, r3, #28
	bpl	.L271
.L241:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #42
	adds	r2, r2, #41
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	lsrs	r3, r3, #1
	cmp	r2, r3
	bne	.L242
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
	ldr	r3, .L275+16
	bl	.L25
.L242:
	movs	r3, r4
	movs	r2, r4
	adds	r3, r3, #41
	adds	r2, r2, #42
	ldrb	r3, [r3]
	ldrb	r2, [r2]
	cmp	r3, r2
	bcc	.LCB2212
	b	.L243	@long jump
.LCB2212:
	movs	r1, #0
	str	r2, [sp]
	movs	r0, r1
	movs	r2, #128
	ldr	r5, .L275+20
	bl	.L16
	lsls	r3, r0, #24
	lsrs	r3, r3, #24
	str	r3, [sp, #16]
	ldr	r3, [sp, #20]
	cmp	r3, #0
	beq	.L244
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
	ldr	r3, .L275+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L275+28
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
	ldr	r3, .L275+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	strh	r0, [r3, #4]
	adds	r4, r4, #91
.L274:
	ldrb	r4, [r4]
	ldr	r3, [sp, #16]
	adds	r4, r3, r4
	lsls	r4, r4, #24
	ldr	r3, .L275+24
	lsrs	r4, r4, #24
	lsls	r4, r4, #1
	movs	r1, r6
	ldrsh	r0, [r4, r3]
	bl	.L16
	ldr	r3, [sp, #20]
	adds	r0, r3, r0
	ldr	r3, .L275+32
	strh	r0, [r7, #2]
	ldrsh	r0, [r4, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	strh	r0, [r7, #4]
.L239:
	add	sp, sp, #52
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L244:
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
	ldr	r3, .L275+24
	movs	r1, r6
	ldrsh	r0, [r2, r3]
	ldr	r5, .L275+28
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
	ldr	r3, .L275+32
	ldrsh	r0, [r2, r3]
	movs	r1, r6
	rsbs	r0, r0, #0
	bl	.L16
	ldr	r3, [sp, #24]
	adds	r0, r3, r0
	ldr	r3, [sp, #12]
	adds	r4, r4, #89
	strh	r0, [r3, #4]
	b	.L274
.L243:
	movs	r2, #128
	ldr	r3, [sp, #20]
	lsls	r2, r2, #18
	lsls	r3, r3, #3
	str	r7, [r3, r2]
	ldr	r1, [sp, #16]
	ldr	r2, .L275+36
	str	r1, [r3, r2]
	movs	r1, #14
	add	r3, sp, #32
	adds	r1, r1, r3
	movs	r0, r5
	bl	PAU_findPairUpBAnim
	ldr	r3, [sp, #20]
	ldr	r2, .L275+40
	lsls	r3, r3, #1
	strh	r0, [r3, r2]
	ldr	r2, .L275+44
	ldr	r2, [r2]
	lsls	r0, r0, #5
	adds	r0, r2, r0
	ldr	r3, [sp, #20]
	ldr	r1, [r0, #12]
	ldr	r2, .L275+48
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
	beq	.L246
	ldrb	r3, [r2]
	tst	r3, r1
	beq	.L247
.L272:
	movs	r1, #16
	bics	r3, r1
	strb	r3, [r2]
	b	.L247
.L246:
	ldrb	r3, [r2]
	lsls	r1, r3, #30
	bmi	.L272
.L247:
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r3, [r3]
	lsls	r2, r3, #26
	bmi	.L248
	ldr	r2, [sp, #12]
	ldrb	r1, [r2, #18]
	ldr	r2, .L275+52
	ldrh	r2, [r2]
	ldrb	r5, [r6, #18]
	cmp	r2, #0
	bne	.L249
	ldr	r2, [sp, #20]
	cmp	r2, #0
	bne	.LCB2460
	b	.L250	@long jump
.LCB2460:
	lsls	r3, r3, #28
	bmi	.LCB2466
	b	.L251	@long jump
.LCB2466:
.L249:
	movs	r0, r7
	ldr	r3, .L275+56
	bl	.L25
	ldr	r3, .L275+56
	movs	r1, r5
	ldr	r0, [sp, #16]
	bl	.L25
	ldr	r3, [sp, #12]
	ldrh	r3, [r3, #14]
	strh	r3, [r7, #14]
	ldr	r2, [sp, #16]
	ldrh	r3, [r6, #14]
	strh	r3, [r2, #14]
	ldr	r3, .L275+52
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.LCB2485
	b	.L253	@long jump
.LCB2485:
	ldr	r3, .L275+60
	movs	r0, r7
	bl	.L25
	ldr	r3, .L275+64
	bl	.L25
	cmp	r0, #0
	bne	.LCB2493
	b	.L253	@long jump
.LCB2493:
	movs	r1, #1
	movs	r0, r7
	ldr	r3, .L275+68
	rsbs	r1, r1, #0
	bl	.L25
	ldr	r0, .L275+72
	movs	r1, r4
	ldr	r3, .L275+76
	adds	r0, r0, #56
	bl	.L25
	movs	r1, #1
	ldr	r3, .L275+80
	bl	.L25
.L248:
	movs	r3, r4
	movs	r2, #0
	adds	r3, r3, #41
	strb	r2, [r3]
	ldr	r3, .L275+84
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	ldr	r2, .L275+88
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
	beq	.L254
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
.L273:
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
	b	.L239
.L250:
	lsls	r3, r3, #30
	bpl	.LCB2593
	b	.L249	@long jump
.LCB2593:
.L251:
	subs	r3, r1, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bhi	.L252
	movs	r1, r3
.L252:
	subs	r3, r5, #2
	lsls	r3, r3, #24
	lsrs	r3, r3, #24
	cmp	r3, #1
	bls	.LCB2609
	b	.L249	@long jump
.LCB2609:
	movs	r5, r3
	b	.L249
.L276:
	.align	2
.L275:
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
.L253:
	movs	r3, #128
	lsls	r3, r3, #18
	ldr	r1, [r3]
	movs	r3, #8
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L277
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L277+4
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	ldr	r2, .L277+8
	ldr	r1, [r2]
	ldrh	r2, [r1]
	bics	r2, r3
	strh	r2, [r1]
	b	.L248
.L254:
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
	b	.L273
.L278:
	.align	2
.L277:
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
	beq	.L280
	movs	r2, r0
	adds	r2, r2, #43
	ldrb	r0, [r2]
	lsls	r2, r0, #31
	bpl	.L281
	movs	r1, #0
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L280:
	ldr	r2, [r4, #68]
	cmp	r2, #0
	beq	.L279
	movs	r3, r4
	adds	r3, r3, #43
	ldrb	r5, [r3]
	lsls	r3, r5, #29
	bpl	.L284
	movs	r1, #1
	movs	r0, r4
	bl	PAU_swapBAnimLocs
.L279:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L281:
	ldr	r2, .L292
	ldrh	r5, [r2]
	ldr	r2, .L292+4
	ldr	r1, [r4, #44]
	ldrh	r2, [r2]
	lsls	r0, r0, #30
	bpl	.L282
	ldrh	r0, [r3, #2]
	subs	r0, r0, r5
	strh	r0, [r1, #2]
	ldrh	r3, [r3, #4]
	adds	r2, r2, r3
	strh	r2, [r1, #4]
	b	.L280
.L282:
	ldrh	r0, [r1, #2]
	subs	r0, r0, r5
	strh	r0, [r3, #2]
	ldrh	r1, [r1, #4]
	adds	r2, r2, r1
	strh	r2, [r3, #4]
	b	.L280
.L284:
	ldr	r3, .L292
	ldr	r1, .L292+4
	ldr	r0, [r4, #52]
	ldrh	r3, [r3]
	ldrh	r1, [r1]
	lsls	r4, r5, #28
	bpl	.L285
	ldrh	r4, [r2, #2]
	adds	r3, r3, r4
	strh	r3, [r0, #2]
	ldrh	r3, [r2, #4]
	adds	r1, r1, r3
	strh	r1, [r0, #4]
	b	.L279
.L285:
	ldrh	r4, [r0, #2]
	adds	r3, r3, r4
	strh	r3, [r2, #2]
	ldrh	r3, [r0, #4]
	adds	r1, r1, r3
	strh	r1, [r2, #4]
	b	.L279
.L293:
	.align	2
.L292:
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
	bne	.L295
.L301:
	movs	r3, r0
	adds	r3, r3, #47
	ldrb	r3, [r3]
	cmp	r3, #0
	bne	.L296
.L297:
	@ sp needed
	movs	r0, #1
	ldr	r3, .L308
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L295:
	movs	r2, r0
	ldr	r1, .L308+4
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
	ldr	r7, .L308+8
	lsrs	r3, r3, #16
.L298:
	ldr	r4, [sp, #4]
	cmp	r4, r1
	ble	.L301
	cmp	r2, #0
	beq	.L305
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L299:
	lsls	r4, r1, #6
	mov	ip, r4
	ldr	r6, [sp]
	adds	r4, r5, r3
	ands	r4, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r4, [r7, r6]
	b	.L298
.L305:
	movs	r5, #1
	b	.L299
.L296:
	ldr	r1, .L308+4
	ldrb	r5, [r1]
	ldr	r1, .L308+12
	lsls	r3, r3, #17
	adds	r3, r3, r1
	movs	r1, #0
	movs	r4, r1
	adds	r0, r0, #49
	ldrb	r2, [r0]
	ldr	r7, .L308+16
	lsrs	r3, r3, #16
.L302:
	cmp	r5, r1
	ble	.L297
	cmp	r2, #0
	beq	.L306
	subs	r2, r2, #1
	lsls	r2, r2, #24
	lsrs	r2, r2, #24
.L303:
	lsls	r0, r1, #6
	mov	ip, r0
	ldr	r6, [sp]
	adds	r0, r4, r3
	ands	r0, r6
	mov	r6, ip
	adds	r1, r1, #1
	strh	r0, [r7, r6]
	b	.L302
.L306:
	movs	r4, #1
	b	.L303
.L309:
	.align	2
.L308:
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
	bls	.L311
	movs	r2, #240
	ldr	r3, .L319
	strh	r2, [r3, #44]
	ldr	r2, .L319+4
	ldr	r1, .L319+8
	strh	r2, [r3, #48]
	ldr	r2, [r3, #52]
	ands	r1, r2
	ldr	r2, .L319+12
	orrs	r2, r1
	str	r2, [r3, #52]
	movs	r2, #32
	ldrb	r1, [r3, #1]
	orrs	r2, r1
	strb	r2, [r3, #1]
.L312:
	ldrb	r3, [r5]
	cmp	r3, #0
	bne	.L315
	ldr	r3, .L319+16
	ldr	r0, .L319+20
	bl	.L25
	ldr	r1, .L319+24
	movs	r2, #32
	ldr	r3, .L319+28
	bl	.L25
	movs	r0, r4
	ldr	r1, .L319+32
	bl	PAU_bAnimGaugeScrEntries
.L315:
	@ sp needed
	movs	r3, #0
	strh	r3, [r4, #42]
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L311:
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L313
	movs	r1, #0
	bl	PAU_bAnimGaugeScrEntries
.L313:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L314
	movs	r0, r4
	ldr	r3, .L319+36
	bl	.L25
	b	.L312
.L314:
	movs	r1, #1
	movs	r0, r4
	ldr	r3, .L319+40
	bl	.L25
	b	.L312
.L320:
	.align	2
.L319:
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
	beq	.L322
	movs	r2, #0
	movs	r1, #56
.L322:
	ldrh	r3, [r4, #42]
	adds	r3, r3, #1
	ldrh	r0, [r4, #44]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	strh	r3, [r4, #42]
	str	r0, [sp]
	ldr	r6, .L331
	movs	r0, #1
	bl	.L89
	ldr	r3, .L331+4
	movs	r2, r3
	adds	r0, r0, #48
	adds	r2, r2, #49
	strb	r0, [r2]
	ldrh	r1, [r4, #42]
	ldrh	r2, [r4, #44]
	cmp	r1, r2
	bcc	.L321
	movs	r1, #32
	ldrb	r2, [r3, #1]
	bics	r2, r1
	strb	r2, [r3, #1]
	ldrb	r3, [r5]
	cmp	r3, #0
	beq	.L324
	movs	r1, #0
	movs	r0, r4
	bl	PAU_bAnimGaugeScrEntries
.L324:
	movs	r3, r4
	adds	r3, r3, #52
	ldrb	r3, [r3]
	movs	r0, r4
	cmp	r3, #0
	beq	.L325
	ldr	r3, .L331+8
.L330:
	bl	.L25
.L321:
	@ sp needed
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L325:
	ldr	r3, .L331+12
	b	.L330
.L332:
	.align	2
.L331:
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
	ldr	r3, .L360
	ldr	r2, .L360+4
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
	ldr	r5, .L360+8
	ldr	r2, .L360+12
	ands	r2, r1
	ands	r1, r5
	movs	r5, r0
	adds	r5, r5, #47
	ldrb	r6, [r5]
	subs	r5, r5, #1
	ldrb	r5, [r5]
	cmp	r5, #0
	beq	.L334
	ldr	r5, .L360+16
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	mov	ip, r5
	movs	r5, r0
	adds	r5, r5, #48
	cmp	ip, r7
	bne	.L335
	cmp	r4, #0
	beq	.L357
.L339:
	cmp	r3, r2
	beq	.L337
.L338:
	ldr	r2, .L360+20
	ldrb	r3, [r5]
	ldrb	r2, [r2]
	cmp	r2, r3
	bls	.L349
	adds	r3, r3, #1
	b	.L359
.L335:
	cmp	r4, #0
	beq	.L339
.L357:
	cmp	r3, r1
	bne	.L338
.L337:
	movs	r3, #0
.L359:
	strb	r3, [r5]
.L349:
	cmp	r6, #0
	bne	.L347
	b	.L341
.L334:
	cmp	r6, #0
	beq	.L341
	ldr	r5, .L360+24
	ldr	r5, [r5]
	ldrb	r5, [r5, #11]
	lsls	r5, r5, #24
	asrs	r5, r5, #24
	cmp	r5, r7
	bne	.L342
	cmp	r4, #0
	beq	.L353
.L355:
	cmp	r3, r2
	beq	.L344
.L347:
	movs	r2, r0
	ldr	r1, .L360+20
	adds	r2, r2, #49
	ldrb	r3, [r2]
	ldrb	r1, [r1]
	cmp	r1, r3
	bhi	.L345
.L341:
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
	ldr	r3, .L360+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L342:
	cmp	r4, #0
	beq	.L355
.L353:
	cmp	r3, r1
	bne	.L347
.L344:
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #49
	strb	r2, [r3]
	b	.L341
.L345:
	adds	r3, r3, #1
	strb	r3, [r2]
	b	.L341
.L361:
	.align	2
.L360:
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
	ldr	r3, .L396
	movs	r5, r0
	ldrb	r0, [r0, #27]
	movs	r4, r1
	bl	.L25
	subs	r6, r0, #0
	beq	.L362
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L362
	movs	r3, #0
	str	r3, [r5, #60]
	ldr	r3, .L396+4
	cmp	r4, #3
	bne	.L366
	ldr	r2, [r0, #12]
	tst	r2, r3
	bne	.L362
	movs	r3, #17
	ldr	r2, .L396+8
	ldr	r1, [r2]
	movs	r2, #16
	ldrsb	r3, [r0, r3]
	lsls	r3, r3, #2
	ldrsb	r2, [r0, r2]
	ldr	r3, [r3, r1]
	ldrb	r3, [r3, r2]
	cmp	r3, #0
	beq	.L362
	movs	r0, #17
	movs	r3, #0
	ldr	r7, .L396+12
	ldrsb	r0, [r5, r0]
	ldrsb	r3, [r7, r3]
	lsls	r0, r0, #4
	adds	r0, r0, r3
	ldr	r3, .L396+16
	bl	.L25
	movs	r2, #17
	movs	r3, #0
	ldrsb	r2, [r5, r2]
	ldrsb	r3, [r7, r3]
	lsls	r2, r2, #4
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L396+20
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r7, .L396+24
	movs	r0, r5
	bl	.L398
	ldr	r3, .L396+28
	bl	.L25
	ldr	r3, .L396+32
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
	bl	.L398
	lsls	r3, r0, #3
	ldr	r0, .L396+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r6, #12]
.L395:
	lsls	r1, r2, #23
	bpl	.L369
	adds	r3, r3, #3
	strb	r3, [r4, #11]
.L369:
	lsls	r3, r2, #7
	bpl	.L368
	ldrb	r3, [r4, #11]
	adds	r3, r3, #64
	strb	r3, [r4, #11]
.L368:
	str	r4, [r5, #60]
.L362:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L366:
	ldr	r2, [r5, #12]
	tst	r2, r3
	bne	.L362
	movs	r0, #17
	ldr	r3, .L396+8
	ldr	r2, [r3]
	movs	r3, #16
	ldrsb	r0, [r5, r0]
	lsls	r1, r0, #2
	ldrsb	r3, [r5, r3]
	ldr	r2, [r1, r2]
	ldrb	r3, [r2, r3]
	cmp	r3, #0
	beq	.L362
	ldr	r3, .L396+16
	lsls	r0, r0, #4
	bl	.L25
	movs	r2, #17
	ldr	r3, .L396+40
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r2, #16
	strh	r3, [r0, #6]
	ldr	r3, .L396+44
	ldrb	r3, [r3]
	ldrsb	r2, [r5, r2]
	lsls	r3, r3, #24
	lsls	r2, r2, #4
	asrs	r3, r3, #24
	adds	r3, r3, r2
	movs	r4, r0
	strh	r3, [r0, #4]
	ldr	r6, .L396+24
	movs	r0, r5
	bl	.L89
	ldr	r3, .L396+28
	bl	.L25
	ldr	r3, .L396+32
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
	bl	.L89
	lsls	r3, r0, #3
	ldr	r0, .L396+36
	adds	r0, r0, r3
	ldrh	r3, [r0, #2]
	strb	r3, [r4, #11]
	ldr	r2, [r5, #12]
	b	.L395
.L397:
	.align	2
.L396:
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
	bhi	.L400
	ldr	r0, [r0, #56]
	movs	r1, #3
	bl	PAU_mapAddSMS
	movs	r0, r4
	ldr	r3, .L401
	bl	.L25
.L400:
	@ sp needed
	movs	r0, #0
	ldrh	r6, [r4, #44]
	ldr	r3, .L401+4
	ldr	r5, .L401+8
	ldrsb	r0, [r3, r0]
	movs	r1, r6
	bl	.L16
	ldr	r7, [r4, #52]
	ldrh	r3, [r7, #4]
	adds	r0, r0, r3
	strh	r0, [r7, #4]
	movs	r0, #0
	ldr	r3, .L401+12
	movs	r1, r6
	ldrsb	r0, [r3, r0]
	bl	.L16
	ldrh	r3, [r7, #6]
	adds	r0, r0, r3
	strh	r0, [r7, #6]
	movs	r0, #0
	ldr	r3, .L401+16
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
	ldr	r3, .L401+20
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
.L402:
	.align	2
.L401:
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
	ldr	r3, .L410
	sub	sp, sp, #20
	movs	r6, r0
	bl	.L25
	ldr	r3, .L410+4
	movs	r5, r0
	ldrb	r0, [r6, #27]
	bl	.L25
	ldr	r3, .L410+8
	ldrb	r3, [r3]
	movs	r4, r0
	cmp	r3, #0
	beq	.L403
	movs	r0, r6
	bl	PAU_isPairedUp
	cmp	r0, #0
	beq	.L403
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #3
	bne	.L403
	movs	r3, #17
	movs	r6, #16
	ldrsb	r3, [r4, r3]
	ldrsb	r6, [r4, r6]
	str	r3, [sp, #12]
	ldr	r3, [r4, #4]
	movs	r0, r4
	ldrb	r7, [r3, #4]
	ldr	r3, .L410+12
	bl	.L25
	movs	r3, #1
	movs	r2, r7
	str	r0, [sp]
	rsbs	r3, r3, #0
	movs	r0, r6
	ldr	r1, [sp, #12]
	ldr	r6, .L410+16
	bl	.L89
	movs	r3, r0
	movs	r2, #0
	adds	r3, r3, #62
	str	r4, [r0, #44]
	strb	r2, [r3]
	movs	r2, r5
	ldr	r3, .L410+20
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	adds	r2, r2, #80
	lsls	r3, r3, #4
	strh	r3, [r2]
	ldr	r3, .L410+24
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	strh	r3, [r2, #2]
	movs	r2, r0
	ldr	r3, .L410+28
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r2, r2, #80
	strh	r3, [r2]
	ldr	r3, .L410+32
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	lsls	r3, r3, #4
	adds	r0, r0, #82
	strh	r3, [r0]
.L403:
	movs	r0, r5
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L411:
	.align	2
.L410:
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
	ldr	r4, .L416
.L414:
	ldr	r3, [r4]
	cmp	r3, r5
	bne	.L413
	movs	r1, r7
	movs	r0, r4
	bl	.L89
.L413:
	ldr	r3, .L416+4
	adds	r4, r4, #108
	cmp	r4, r3
	bne	.L414
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L417:
	.align	2
.L416:
	.word	gProcStatePool
	.word	gProcStatePool+6912
	.size	PAU_ForEachProcExt, .-PAU_ForEachProcExt
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
	ldr	r3, .L419
	ldrsb	r5, [r0, r5]
	ldrsb	r4, [r0, r4]
	str	r0, [r3]
	ldr	r3, .L419+4
	movs	r1, #0
	ldr	r0, [r3]
	ldr	r3, .L419+8
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r2, .L419+12
	ldr	r3, .L419+16
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L420:
	.align	2
.L419:
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
	ldr	r3, .L425
	movs	r5, r1
	bl	.L25
	ldr	r3, .L425+4
	bl	.L25
	cmp	r0, #39
	bhi	.L422
	ldr	r3, .L425+8
.L424:
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
.L422:
	movs	r3, #128
	lsls	r3, r3, #5
	b	.L424
.L426:
	.align	2
.L425:
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
	ldr	r1, .L444
	sub	sp, sp, #36
	str	r2, [sp, #8]
	ldr	r3, .L444+4
	movs	r2, #14
	adds	r1, r1, #32
	movs	r5, r0
	add	r0, sp, #16
	bl	.L25
	ldr	r1, .L444+8
	ldr	r3, .L444+12
	lsls	r1, r1, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L444+16
	bl	.L25
	ldr	r3, .L444+20
	str	r3, [sp, #4]
	cmp	r0, #0
	bne	.L428
	ldr	r3, .L444+24
	str	r3, [sp, #4]
.L428:
	movs	r7, #0
	ldr	r3, .L444+28
	adds	r4, r4, #96
	adds	r3, r3, #2
	str	r4, [sp]
	str	r3, [sp, #12]
	adds	r5, r5, #52
.L433:
	movs	r0, r5
	ldr	r3, .L444+32
	bl	.L25
	add	r2, sp, #16
	lsls	r3, r7, #1
	ldrh	r0, [r3, r2]
	ldr	r3, .L444+36
	bl	.L25
	ldr	r3, .L444+40
	movs	r1, r0
	movs	r0, r5
	bl	.L25
	ldr	r3, [sp]
	lsls	r1, r3, #1
	ldr	r3, [sp, #12]
	movs	r0, r5
	adds	r1, r3, r1
	ldr	r3, .L444+44
	bl	.L25
	cmp	r7, #6
	bne	.L429
	ldr	r6, .L444+48
	ldr	r0, [sp, #8]
	bl	.L89
	ldr	r3, .L444+12
	movs	r4, r0
	ldr	r0, [r3]
	bl	.L89
	adds	r3, r4, #0
	lsls	r2, r4, #24
	lsls	r1, r0, #24
	cmp	r1, r2
	bge	.L430
	adds	r3, r0, #0
.L430:
	subs	r4, r3, r4
	lsls	r4, r4, #24
	asrs	r4, r4, #24
.L431:
	movs	r3, r4
	adds	r3, r3, #99
	blt	.L435
	movs	r3, r4
	adds	r3, r3, #9
	blt	.L436
	cmp	r4, #0
	blt	.L437
	movs	r2, #21
	cmp	r4, #0
	beq	.L438
	movs	r6, #4
	cmp	r4, #9
	ble	.L442
	cmp	r4, #99
	ble	.L440
.L443:
	movs	r0, #5
.L432:
	ldr	r3, [sp]
	adds	r0, r0, r3
	ldr	r3, .L444+28
	lsls	r0, r0, #1
	adds	r0, r0, r3
	movs	r1, r6
	ldr	r3, .L444+52
	bl	.L25
	asrs	r2, r4, #31
	adds	r3, r4, r2
	eors	r3, r2
	lsls	r3, r3, #24
	movs	r0, r5
	lsrs	r3, r3, #24
	movs	r2, r6
	movs	r1, #56
	ldr	r4, .L444+56
	bl	.L20
	ldr	r3, [sp]
	adds	r7, r7, #1
	adds	r3, r3, #64
	str	r3, [sp]
	adds	r5, r5, #8
	cmp	r7, #7
	bne	.L433
	add	sp, sp, #36
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L429:
	ldr	r3, [sp, #4]
	ldrsb	r4, [r3, r7]
	b	.L431
.L435:
	movs	r2, #20
	movs	r6, #3
	b	.L443
.L436:
	movs	r2, #20
	movs	r6, #3
.L440:
	movs	r0, #6
	b	.L432
.L437:
	movs	r2, #20
	movs	r6, #3
.L442:
	movs	r0, #7
	b	.L432
.L438:
	movs	r6, r4
	b	.L442
.L445:
	.align	2
.L444:
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
	ldr	r5, .L449
	movs	r4, r0
	movs	r0, r5
	movs	r1, r4
	sub	sp, sp, #20
	ldr	r3, .L449+4
	adds	r0, r0, #48
	bl	.L25
	ldr	r3, .L449+8
	str	r0, [r4, #60]
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r1, #6
	ldr	r7, .L449+12
	adds	r0, r0, #44
	bl	.L398
	movs	r6, #52
.L447:
	ldr	r3, [r4, #60]
	movs	r1, #8
	adds	r0, r3, r6
	adds	r6, r6, #8
	bl	.L398
	cmp	r6, #108
	bne	.L447
	ldr	r0, .L449+16
	lsls	r0, r0, #16
	ldr	r3, .L449+20
	lsrs	r0, r0, #16
	bl	.L25
	ldr	r3, .L449+24
	movs	r1, r0
	movs	r0, r4
	bl	.L25
	movs	r1, r5
	ldr	r3, .L449+28
	movs	r2, #12
	adds	r1, r1, #72
	add	r0, sp, #4
	bl	.L25
	ldr	r4, .L449+32
	add	r0, sp, #4
	movs	r2, #12
	movs	r1, #20
	bl	.L20
	movs	r2, #32
	movs	r1, #128
	ldr	r0, .L449+36
	bl	.L20
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L450:
	.align	2
.L449:
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
	ldr	r3, .L456
	bl	.L25
	ldrb	r0, [r5, #2]
	ldr	r3, .L456+4
	bl	.L25
	movs	r1, #13
	ldr	r3, .L456+8
	movs	r5, r0
	bl	.L25
	movs	r6, r0
	ldr	r3, .L456+12
	bl	.L25
	ldr	r7, .L456+16
	ldr	r0, .L456+20
	movs	r1, r7
	ldr	r3, .L456+24
	bl	.L25
	ldr	r0, .L456+28
	lsls	r3, r6, #1
	movs	r1, r7
	movs	r2, #0
	adds	r0, r3, r0
	str	r3, [sp, #4]
	ldr	r3, .L456+32
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r3, .L456+36
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
	ldr	r3, .L456+40
	bl	.L25
	ldr	r3, [r5]
	ldrh	r0, [r3]
	ldr	r3, .L456+44
	ldr	r7, [r4, #60]
	bl	.L25
	adds	r7, r7, #44
	movs	r1, r0
	ldr	r3, .L456+48
	movs	r0, r7
	bl	.L25
	ldr	r0, [r4, #60]
	ldr	r7, .L456+52
	lsls	r1, r6, #1
	adds	r1, r1, #70
	ldr	r3, .L456+56
	adds	r1, r1, r7
	adds	r0, r0, #44
	bl	.L25
	ldr	r0, [r4, #60]
	movs	r2, r5
	movs	r1, r6
	bl	PAU_infoWindowDrawStats
	ldr	r4, .L456+60
	ldr	r3, .L456+64
	lsls	r1, r4, #24
	ldr	r0, [r3]
	lsrs	r1, r1, #24
	ldr	r3, .L456+68
	bl	.L25
	movs	r3, #128
	lsls	r3, r3, #1
	cmp	r0, #0
	beq	.L452
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L456+72
	lsrs	r4, r4, #16
.L453:
	ldr	r5, [sp, #4]
	adds	r5, r5, #84
	adds	r5, r7, r5
	movs	r2, #0
	movs	r1, r6
	movs	r0, r5
	ldr	r3, .L456+76
	bl	.L25
	movs	r2, #128
	movs	r1, r4
	lsls	r2, r2, #7
	movs	r0, r5
	ldr	r3, .L456+76
	bl	.L25
	ldr	r3, .L456+80
	movs	r0, r6
	bl	.L25
	movs	r2, #0
	ldr	r3, .L456+84
	ldrb	r1, [r3]
	ldr	r3, [sp, #4]
	adds	r3, r3, #21
	adds	r3, r3, #255
	adds	r4, r0, #2
	adds	r3, r7, r3
	adds	r0, r0, #3
.L454:
	cmp	r1, r2
	bgt	.L455
	@ sp needed
	movs	r0, #3
	ldr	r3, .L456+88
	bl	.L25
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L452:
	ldr	r4, .L456+92
	orrs	r4, r3
	lsls	r4, r4, #16
	ldr	r6, .L456+96
	lsrs	r4, r4, #16
	b	.L453
.L455:
	strh	r4, [r3]
	strh	r0, [r3, #2]
	adds	r2, r2, #1
	adds	r3, r3, #64
	b	.L454
.L457:
	.align	2
.L456:
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
	ldr	r3, .L459
	@ sp needed
	ldrb	r0, [r1, #2]
	movs	r4, r1
	bl	.L25
	ldr	r3, .L459+4
	ldrh	r2, [r0, #16]
	strh	r2, [r3, #14]
	ldrb	r2, [r4, #2]
	strb	r2, [r3, #13]
	ldr	r2, .L459+8
	ldr	r2, [r2]
	ldrb	r1, [r2, #16]
	strb	r1, [r3, #19]
	ldrb	r2, [r2, #17]
	strb	r2, [r3, #20]
	ldr	r2, .L459+12
	ldrb	r2, [r2]
	strb	r2, [r3, #17]
	bl	PAU_setPairUpFlag
	movs	r0, #0
	bl	PAU_setPairUpGauge
	movs	r2, #32
	movs	r1, #0
	ldr	r0, .L459+16
	ldr	r3, .L459+20
	bl	.L25
	movs	r0, #23
	pop	{r4}
	pop	{r1}
	bx	r1
.L460:
	.align	2
.L459:
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
	ldr	r0, .L462
	ldr	r3, .L462+4
	bl	.L25
	movs	r1, r5
	movs	r0, r4
	ldr	r3, .L462+8
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L463:
	.align	2
.L462:
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
	ldr	r6, .L472
	ldr	r5, .L472+4
	movs	r7, r0
	ldrb	r0, [r6, #12]
	bl	.L16
	movs	r4, r0
	ldrb	r0, [r6, #13]
	bl	.L16
	ldr	r3, .L472+8
	movs	r5, r0
	bl	.L25
	movs	r3, #17
	movs	r2, #16
	movs	r1, #17
	movs	r0, #16
	ldrsb	r2, [r4, r2]
	ldrsb	r1, [r5, r1]
	ldrsb	r3, [r4, r3]
	ldr	r6, .L472+12
	ldrsb	r0, [r5, r0]
	bl	.L89
	movs	r6, r0
	ldr	r3, .L472+16
	bl	.L25
	movs	r3, r7
	movs	r1, r6
	movs	r2, #0
	movs	r0, r4
	ldr	r6, .L472+20
	bl	.L89
	ldr	r3, .L472+24
	ldrb	r3, [r3]
	cmp	r3, #0
	beq	.L467
	ldr	r0, .L472+28
	ldr	r3, .L472+32
	bl	.L25
	subs	r1, r0, #0
	beq	.L467
	ldr	r0, .L472+36
	ldr	r3, .L472+40
	adds	r0, r0, #84
	bl	.L25
.L467:
	@ sp needed
	movs	r0, r5
	movs	r1, r4
	ldr	r3, .L472+44
	bl	.L25
	movs	r0, r4
	ldr	r3, .L472+48
	bl	.L25
	movs	r3, #64
	ldr	r2, [r4, #12]
	orrs	r3, r2
	movs	r0, #0
	str	r3, [r4, #12]
	pop	{r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L473:
	.align	2
.L472:
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
	ldr	r3, .L476
	ldrb	r2, [r3, #17]
	ldr	r3, .L476+4
	ldrb	r3, [r3]
	cmp	r2, r3
	bne	.L474
	movs	r3, #35
	ldr	r2, [r0, #12]
	orrs	r3, r2
	str	r3, [r0, #12]
.L474:
	@ sp needed
	bx	lr
.L477:
	.align	2
.L476:
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
	ldr	r4, .L486
	ldr	r0, [r4]
	ldr	r2, [r0, #12]
	lsls	r3, r3, #4
	tst	r2, r3
	bne	.L479
	ldr	r1, .L486+4
	lsls	r1, r1, #24
	ldr	r5, .L486+8
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	beq	.L480
.L482:
	ldr	r0, [r4]
	bl	PAU_makePairUpTargetList
	ldr	r3, .L486+12
	bl	.L25
	cmp	r0, #0
	beq	.L479
	movs	r0, #1
.L481:
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L480:
	ldr	r1, .L486+16
	lsls	r1, r1, #24
	ldr	r0, [r4]
	lsrs	r1, r1, #24
	bl	.L16
	cmp	r0, #0
	bne	.L482
.L479:
	movs	r0, #3
	b	.L481
.L487:
	.align	2
.L486:
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
	ldr	r3, .L489
	@ sp needed
	ldr	r0, [r3]
	bl	PAU_makePairUpTargetList
	ldr	r0, .L489+4
	ldr	r3, .L489+8
	bl	.L25
	movs	r0, #7
	pop	{r4}
	pop	{r1}
	bx	r1
.L490:
	.align	2
.L489:
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
	beq	.L492
	movs	r3, #128
	strh	r3, [r4]
.L492:
	@ sp needed
	bl	PAU_getPairUpGauge
	ldrh	r3, [r4]
	orrs	r3, r0
	ldr	r2, .L496
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
	ldr	r3, .L496+4
	bl	.L25
	pop	{r0, r1, r4, r5, r6}
	pop	{r0}
	bx	r0
.L497:
	.align	2
.L496:
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
	ldr	r3, .L499
	movs	r2, #2
	ldr	r3, [r3]
	adds	r1, r1, #6
	bl	.L25
	mov	r2, sp
	ldr	r3, .L499+4
	ldrh	r2, [r2, #6]
	ldr	r3, [r3]
	strb	r2, [r3]
	ldr	r3, .L499+8
	ldr	r2, [r3]
	mov	r3, sp
	ldrh	r3, [r3, #6]
	lsrs	r3, r3, #8
	strb	r3, [r2]
	add	sp, sp, #12
	@ sp needed
	pop	{r0}
	bx	r0
.L500:
	.align	2
.L499:
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
	bge	.L502
	movs	r3, #0
	strh	r3, [r4]
	strh	r3, [r4, #2]
	strh	r3, [r5, #62]
	strh	r3, [r6, #62]
.L501:
	@ sp needed
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L502:
	ldr	r3, .L504
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
	b	.L501
.L505:
	.align	2
.L504:
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
	ldr	r3, .L513
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
.L507:
	ldr	r3, .L513+4
	ldrb	r3, [r3]
	cmp	r5, r3
	blt	.L511
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L511:
	cmp	r4, #0
	beq	.L512
	subs	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L508:
	ldr	r3, [sp, #4]
	lsls	r0, r5, #6
	adds	r0, r3, r0
	ldr	r3, [sp]
	adds	r1, r3, r7
	cmp	r6, #0
	beq	.L509
	movs	r2, #128
	lsls	r2, r2, #3
	bl	PAU_forecastDrawIconHFlip
.L510:
	adds	r5, r5, #1
	b	.L507
.L512:
	movs	r7, #1
	b	.L508
.L509:
	movs	r2, r6
	ldr	r3, .L513+8
	bl	.L25
	b	.L510
.L514:
	.align	2
.L513:
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
	beq	.L515
	bl	PAU_forecastDrawGaugeIcons.part.0
.L515:
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
	ldr	r0, .L548
	bl	PAU_isPairedUp
	movs	r4, r0
	ldr	r0, .L548+4
	bl	PAU_isPairedUp
	movs	r2, #128
	movs	r5, r0
	ldr	r3, .L548+8
	lsls	r2, r2, #5
	cmp	r4, #0
	bne	.LCB4855
	b	.L521	@long jump
.LCB4855:
	cmp	r0, #0
	bne	.LCB4857
	b	.L522	@long jump
.LCB4857:
	ldr	r1, .L548+12
	ldr	r0, .L548+16
	bl	.L25
	movs	r1, #12
.L546:
	movs	r3, #1
	str	r3, [sp, #4]
.L523:
	ldr	r6, .L548+20
	movs	r3, #0
	movs	r2, #15
	movs	r0, r6
	ldr	r7, .L548+24
	bl	.L398
	ldr	r7, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r7, r7, #35
	adds	r3, r3, #56
	lsls	r7, r7, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L548
	ldr	r3, .L548+28
	adds	r0, r7, r6
	bl	.L25
	cmp	r4, #0
	beq	.L525
	movs	r0, r7
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r4
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L525:
	movs	r3, #159
	ldr	r4, .L548+4
	lsls	r3, r3, #2
	ldr	r6, .L548+20
	adds	r0, r7, r3
	movs	r2, r4
	ldr	r1, [sp, #8]
	ldr	r3, .L548+28
	adds	r0, r0, r6
	bl	.L25
	cmp	r5, #0
	beq	.L526
	ldr	r3, .L548+32
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
.L526:
	movs	r3, r4
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #191
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r7, r3
	adds	r1, r1, #72
	ldr	r3, .L548+36
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r4
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.LCB4938
	b	.L527	@long jump
.LCB4938:
	movs	r3, r4
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	beq	.LCB4945
	b	.L527	@long jump
.LCB4945:
	movs	r2, r4
	adds	r3, r3, #255
	adds	r2, r2, #100
	strh	r3, [r2]
	movs	r2, r4
	movs	r5, #1
	adds	r2, r2, #106
	strh	r3, [r2]
	rsbs	r5, r5, #0
.L528:
	movs	r0, r7
	adds	r4, r4, #114
	ldr	r6, .L548+20
	ldrb	r2, [r4]
	adds	r0, r0, #126
	ldr	r3, .L548+40
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L530
	movs	r2, #255
.L530:
	movs	r1, #2
	bl	.L25
	movs	r0, r7
	adds	r0, r0, #254
	movs	r2, r5
	adds	r0, r6, r0
	ldr	r5, .L548+40
	movs	r1, #2
	bl	.L16
	ldr	r4, .L548+4
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
	ldr	r3, .L548
	adds	r3, r3, #90
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	adds	r4, r4, #92
	movs	r2, #0
	ldrsh	r3, [r4, r2]
	str	r3, [sp, #8]
	ldr	r3, .L548
	adds	r3, r3, #72
	ldrh	r0, [r3]
	ldr	r6, .L548+44
	bl	.L89
	movs	r4, #255
	cmp	r0, #181
	beq	.L532
	ldr	r3, [sp, #4]
	ldr	r2, [sp, #8]
	subs	r4, r3, r2
	mvns	r3, r4
	asrs	r3, r3, #31
	ands	r4, r3
.L532:
	ldr	r3, .L548
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	str	r3, [sp, #4]
	ldr	r3, .L548
	adds	r3, r3, #72
	ldrh	r0, [r3]
	bl	.L89
	movs	r6, #255
	cmp	r0, #181
	beq	.L534
	ldr	r3, [sp, #4]
	mvns	r6, r3
	asrs	r6, r6, #31
	ands	r6, r3
.L534:
	movs	r0, r7
	ldr	r3, .L548
	adds	r3, r3, #114
	ldrb	r2, [r3]
	ldr	r3, .L548+20
	adds	r0, r0, #138
	adds	r0, r0, r3
	cmp	r2, #99
	bls	.L536
	movs	r2, #255
.L536:
	movs	r1, #2
	bl	.L16
	movs	r0, r7
	ldr	r5, .L548+20
	adds	r0, r0, #11
	adds	r0, r0, #255
	movs	r2, r4
	adds	r0, r0, r5
	ldr	r4, .L548+40
	movs	r1, #2
	bl	.L20
	movs	r0, r7
	ldr	r3, .L548
	adds	r0, r0, #139
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L20
	ldr	r3, .L548+48
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
	ldr	r4, .L548+52
	bl	.L20
	adds	r1, r7, #1
	adds	r1, r1, #255
	ldr	r4, .L548+56
	adds	r1, r1, r5
	ldr	r0, .L548+60
	bl	.L20
	movs	r1, r7
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L548+64
	bl	.L20
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r7, r3
	adds	r1, r1, r5
	ldr	r0, .L548+68
	bl	.L20
	ldr	r3, .L548+4
	adds	r3, r3, #74
	ldr	r6, .L548+72
	ldrh	r0, [r3]
	bl	.L89
	movs	r3, #162
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r7, r3
	ldr	r4, .L548+76
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L20
	ldr	r3, .L548
	adds	r3, r3, #74
	ldrh	r0, [r3]
	bl	.L89
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
.L522:
	ldr	r1, .L548+80
	ldr	r0, .L548+16
	bl	.L25
	movs	r1, #11
.L547:
	str	r5, [sp, #4]
	b	.L523
.L521:
	cmp	r0, #0
	beq	.L524
	ldr	r1, .L548+84
	ldr	r0, .L548+16
	bl	.L25
	movs	r1, #11
	b	.L546
.L524:
	ldr	r1, .L548+88
	ldr	r0, .L548+16
	bl	.L25
	movs	r1, #10
	b	.L547
.L527:
	movs	r3, r4
	adds	r3, r3, #90
	movs	r5, #0
	ldrsh	r5, [r3, r5]
	ldr	r3, .L548
	adds	r3, r3, #92
	movs	r2, #0
	ldrsh	r3, [r3, r2]
	subs	r5, r5, r3
	mvns	r3, r5
	asrs	r3, r3, #31
	ands	r5, r3
	b	.L528
.L549:
	.align	2
.L548:
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
	ldr	r7, .L571
	sub	sp, sp, #20
	str	r0, [sp, #12]
	movs	r0, r7
	bl	PAU_isPairedUp
	movs	r5, r0
	ldr	r0, .L571+4
	bl	PAU_isPairedUp
	str	r0, [sp]
	cmp	r5, #0
	bne	.LCB5225
	b	.L551	@long jump
.LCB5225:
	movs	r2, #128
	lsls	r2, r2, #5
	cmp	r0, #0
	bne	.LCB5229
	b	.L552	@long jump
.LCB5229:
	ldr	r1, .L571+8
	ldr	r0, .L571+12
	ldr	r3, .L571+16
	bl	.L25
	movs	r1, #12
.L570:
	movs	r3, #1
.L568:
	ldr	r6, .L571+20
	movs	r2, #19
	movs	r0, r6
	str	r3, [sp, #4]
	ldr	r4, .L571+24
	movs	r3, #0
	bl	.L20
	ldr	r4, [sp, #4]
	ldr	r3, [sp, #12]
	adds	r4, r4, #35
	adds	r3, r3, #56
	lsls	r4, r4, #1
	movs	r1, r3
	str	r3, [sp, #8]
	ldr	r2, .L571
	ldr	r3, .L571+28
	adds	r0, r4, r6
	bl	.L25
	cmp	r5, #0
	beq	.L555
	movs	r0, r4
	adds	r0, r0, #12
	movs	r2, #1
	movs	r1, r5
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L555:
	movs	r3, #223
	ldr	r5, .L571+4
	ldr	r6, .L571+20
	lsls	r3, r3, #2
	adds	r0, r4, r3
	movs	r2, r5
	ldr	r3, .L571+28
	ldr	r1, [sp, #8]
	adds	r0, r0, r6
	bl	.L25
	ldr	r3, [sp]
	cmp	r3, #0
	beq	.L556
	ldr	r3, .L571+32
	ldrb	r0, [r3]
	ldr	r3, [sp, #4]
	lsls	r0, r0, #5
	subs	r0, r3, r0
	ldr	r3, .L571+36
	adds	r0, r0, r3
	lsls	r0, r0, #1
	movs	r2, #0
	ldr	r1, [sp]
	adds	r0, r0, r6
	bl	PAU_forecastDrawGaugeIcons.part.0
.L556:
	movs	r3, r5
	adds	r3, r3, #74
	ldrh	r2, [r3]
	movs	r3, #255
	ldr	r1, [sp, #12]
	lsls	r3, r3, #2
	adds	r0, r4, r3
	adds	r1, r1, #72
	ldr	r3, .L571+40
	adds	r0, r6, r0
	bl	.L25
	movs	r3, r5
	adds	r3, r3, #72
	ldrh	r3, [r3]
	cmp	r3, #0
	bne	.L557
	movs	r3, r5
	adds	r3, r3, #125
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	bne	.L557
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
.L557:
	movs	r0, r4
	adds	r5, r5, #114
	ldr	r3, .L571+20
	ldrb	r2, [r5]
	adds	r0, r0, #126
	adds	r0, r0, r3
	ldr	r3, .L571+44
	cmp	r2, #99
	bls	.L558
	movs	r2, #255
.L558:
	movs	r1, #2
	bl	.L25
	movs	r0, r4
	ldr	r3, .L571+4
	ldr	r6, .L571+20
	adds	r3, r3, #90
	adds	r0, r0, #254
	ldr	r5, .L571+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L571+4
	adds	r0, r0, #127
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	movs	r0, r4
	ldr	r3, .L571+4
	adds	r0, r0, #255
	adds	r3, r3, #100
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L571+4
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L571+48
	adds	r0, r4, r3
	movs	r1, #2
	adds	r0, r0, r6
	bl	.L16
	ldr	r3, .L571+4
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L571+52
	adds	r0, r4, r3
	adds	r0, r0, r6
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	ldr	r3, .L571
	adds	r3, r3, #114
	ldrb	r2, [r3]
	adds	r0, r0, #138
	adds	r0, r0, r6
	cmp	r2, #99
	bls	.L560
	movs	r2, #255
.L560:
	movs	r1, #2
	bl	.L16
	movs	r0, r4
	movs	r3, r7
	ldr	r5, .L571+20
	adds	r0, r0, #11
	adds	r3, r3, #90
	adds	r0, r0, #255
	ldr	r6, .L571+44
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L89
	movs	r0, r4
	movs	r3, r7
	adds	r0, r0, #139
	adds	r3, r3, #92
	adds	r0, r0, #255
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L89
	movs	r3, r7
	adds	r3, r3, #100
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L571+56
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L89
	movs	r3, r7
	adds	r3, r3, #106
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L571+60
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L89
	movs	r3, r7
	adds	r3, r3, #94
	movs	r2, #0
	ldrsh	r2, [r3, r2]
	ldr	r3, .L571+64
	adds	r0, r4, r3
	adds	r0, r0, r5
	movs	r1, #2
	bl	.L89
	movs	r0, r4
	adds	r0, r0, #130
	movs	r2, #34
	movs	r3, #35
	adds	r0, r0, r5
	movs	r1, #3
	ldr	r6, .L571+68
	bl	.L89
	adds	r1, r4, #1
	adds	r1, r1, #255
	ldr	r6, .L571+72
	adds	r1, r1, r5
	ldr	r0, .L571+76
	bl	.L89
	movs	r1, r4
	adds	r1, r1, #129
	adds	r1, r1, #255
	adds	r1, r1, r5
	ldr	r0, .L571+80
	bl	.L89
	movs	r3, #128
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L571+84
	bl	.L89
	movs	r3, #160
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L571+88
	bl	.L89
	movs	r3, #192
	lsls	r3, r3, #2
	adds	r1, r4, r3
	adds	r1, r1, r5
	ldr	r0, .L571+92
	bl	.L89
	ldr	r3, .L571+4
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L571+96
	bl	.L25
	movs	r3, #226
	movs	r2, #128
	lsls	r3, r3, #2
	movs	r1, r0
	adds	r0, r4, r3
	ldr	r6, .L571+100
	adds	r0, r0, r5
	lsls	r2, r2, #7
	bl	.L89
	movs	r3, r7
	adds	r3, r3, #74
	ldrh	r0, [r3]
	ldr	r3, .L571+96
	bl	.L25
	movs	r2, #192
	movs	r1, r0
	subs	r0, r4, #4
	adds	r0, r0, r5
	lsls	r2, r2, #6
	bl	.L89
	add	sp, sp, #20
	@ sp needed
	pop	{r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L552:
	ldr	r1, .L571+104
	ldr	r0, .L571+12
	ldr	r3, .L571+16
	bl	.L25
	movs	r1, #11
.L569:
	ldr	r3, [sp]
	b	.L568
.L551:
	movs	r2, #128
	ldr	r3, [sp]
	lsls	r2, r2, #5
	cmp	r3, #0
	beq	.L554
	ldr	r1, .L571+108
	ldr	r0, .L571+12
	ldr	r3, .L571+16
	bl	.L25
	movs	r1, #11
	b	.L570
.L554:
	ldr	r1, .L571+112
	ldr	r0, .L571+12
	ldr	r3, .L571+16
	bl	.L25
	movs	r1, #10
	b	.L569
.L572:
	.align	2
.L571:
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
	beq	.L574
	cmp	r3, #2
	beq	.L575
.L573:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L574:
	ldr	r3, .L577
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsStandard
	b	.L573
.L575:
	ldr	r3, .L577
	bl	.L25
	movs	r0, r4
	bl	PAU_forecastDrawContentsExtended
	b	.L573
.L578:
	.align	2
.L577:
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
	ldr	r3, .L582
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
	blt	.L580
	adds	r3, r3, #20
.L580:
	movs	r2, r4
	@ sp needed
	adds	r2, r2, #48
	strb	r3, [r2]
	movs	r3, #0
	adds	r4, r4, #49
	strb	r3, [r4]
	ldr	r3, .L582+4
	bl	.L25
	pop	{r4}
	pop	{r0}
	bx	r0
.L583:
	.align	2
.L582:
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
	beq	.L585
	adds	r6, r6, #4
.L585:
	ldr	r0, .L594
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	movs	r4, r0
	ldr	r0, .L594+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	adds	r5, r5, #53
	ldrb	r3, [r5]
	adds	r4, r4, #10
	ldr	r1, .L594+8
	adds	r4, r4, r0
	cmp	r3, #127
	bls	.L588
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L594+12
	ldr	r5, .L594+16
	bl	.L16
	movs	r3, r6
	movs	r2, r4
	ldr	r1, .L594+20
	ldr	r0, .L594+24
	bl	.L16
.L589:
	@ sp needed
	movs	r0, #3
	ldr	r3, .L594+28
	bl	.L25
	pop	{r3, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L588:
	movs	r5, #30
	subs	r5, r5, r4
	lsls	r5, r5, #1
	movs	r3, r6
	movs	r2, r4
	adds	r1, r1, r5
	ldr	r0, .L594+12
	ldr	r7, .L594+16
	bl	.L398
	ldr	r1, .L594+20
	movs	r3, r6
	movs	r2, r4
	ldr	r0, .L594+24
	adds	r1, r5, r1
	bl	.L398
	b	.L589
.L595:
	.align	2
.L594:
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
	ldr	r7, .L612
	ldr	r6, .L612+4
	cmp	r3, #127
	bhi	.L597
.L599:
	movs	r0, r7
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	rsbs	r5, r0, #0
.L598:
	movs	r2, #83
	ldrsb	r2, [r7, r2]
	movs	r7, #1
	cmp	r2, #0
	bgt	.L600
	subs	r3, r2, #1
	sbcs	r2, r2, r3
	lsls	r7, r2, #1
.L600:
	movs	r3, #83
	ldrsb	r3, [r6, r3]
	movs	r2, #1
	cmp	r3, #0
	bgt	.L603
	beq	.L604
	movs	r2, #2
.L603:
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
	ldr	r3, .L612+8
	lsls	r1, r1, #3
	adds	r0, r0, #67
	bl	.L25
.L604:
	cmp	r7, #0
	beq	.L596
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
	ldr	r3, .L612+8
	adds	r0, r0, #19
	bl	.L25
.L596:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L597:
	movs	r0, r6
	bl	PAU_isPairedUp
	movs	r5, #1
	cmp	r0, #0
	bne	.L598
	ldr	r3, [sp, #4]
	ldrb	r3, [r3]
	cmp	r3, #127
	bls	.L599
	movs	r5, r0
	b	.L598
.L613:
	.align	2
.L612:
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
	bls	.L615
	ldr	r0, .L622
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	ldrb	r3, [r6]
	movs	r7, r0
	cmp	r3, #127
	bhi	.L616
.L615:
	ldr	r0, .L622+4
	bl	PAU_isPairedUp
	subs	r3, r0, #1
	sbcs	r0, r0, r3
	subs	r7, r7, r0
.L616:
	movs	r2, #255
	ldr	r3, [r4, #44]
	lsls	r3, r3, #2
	ands	r3, r2
	ldr	r2, .L622+8
	lsls	r3, r3, #1
	ldrsh	r1, [r3, r2]
	ldr	r2, .L622+12
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
	ble	.L617
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L622+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #72
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L622+20
	ldr	r7, .L622+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L398
.L617:
	movs	r3, #81
	ldrsb	r3, [r4, r3]
	cmp	r3, #1
	ble	.L614
	movs	r2, r6
	movs	r1, r5
	ldr	r0, .L622+16
	adds	r3, r3, r0
	adds	r2, r2, #40
	adds	r1, r1, #24
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	lsls	r2, r2, #16
	lsls	r1, r1, #16
	str	r3, [sp]
	movs	r0, #4
	ldr	r3, .L622+20
	ldr	r4, .L622+24
	lsrs	r2, r2, #16
	lsrs	r1, r1, #16
	bl	.L20
.L614:
	@ sp needed
	pop	{r0, r1, r2, r4, r5, r6, r7}
	pop	{r0}
	bx	r0
.L623:
	.align	2
.L622:
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
	beq	.L625
	ldr	r3, .L635
	bl	.L25
	cmp	r0, #0
	beq	.L626
	movs	r3, r4
	adds	r3, r3, #53
	ldrb	r3, [r3]
	lsls	r3, r3, #24
	asrs	r3, r3, #24
	cmp	r3, r0
	beq	.L626
	movs	r0, r4
	ldr	r3, .L635+4
.L634:
	bl	.L25
.L624:
	@ sp needed
	pop	{r4}
	pop	{r0}
	bx	r0
.L626:
	movs	r0, r4
	bl	PAU_forecastDrawContents
	movs	r0, r4
	bl	PAU_forecastPutTilemaps
	ldr	r3, .L635+8
	bl	.L25
.L625:
	movs	r3, r4
	adds	r3, r3, #50
	ldrb	r3, [r3]
	cmp	r3, #1
	bne	.L624
	movs	r0, r4
	bl	PAU_forecastPutWeaponTriangleArrows
	movs	r0, r4
	bl	PAU_forecastPutMultipliers
	movs	r0, r4
	ldr	r3, .L635+12
	b	.L634
.L636:
	.align	2
.L635:
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
	ldr	r3, .L639
	movs	r6, r0
	movs	r5, #1
	bl	.L25
	lsls	r5, r5, r0
	movs	r0, r6
	lsls	r4, r5, #24
	lsrs	r4, r4, #24
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L638
	ldr	r3, .L639+4
	ldr	r3, [r3]
	ldrb	r2, [r3]
	adds	r3, r2, r4
	ldr	r2, .L639+8
	ldrb	r2, [r2]
	cmp	r3, r2
	blt	.L638
	adds	r4, r4, #1
	lsls	r4, r4, #24
	lsrs	r4, r4, #24
.L638:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L640:
	.align	2
.L639:
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
	bne	.L642
.L651:
	movs	r0, #0
.L643:
	@ sp needed
	pop	{r1, r2, r3, r4, r5, r6, r7}
	pop	{r1}
	bx	r1
.L642:
	ldr	r7, .L667
	ldr	r3, [r7]
	ldr	r3, [r3]
	lsls	r3, r3, #16
	lsrs	r3, r3, #16
	str	r3, [sp]
	bl	PAU_getBattleHitCount
	movs	r6, #0
	str	r0, [sp, #4]
.L644:
	ldr	r3, [sp, #4]
	cmp	r6, r3
	bge	.L651
	cmp	r6, #0
	beq	.L645
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L645
	ldr	r3, .L667+4
	ldr	r2, .L667+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L645
	ldr	r2, .L667+12
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #7
.L665:
	movs	r0, #0
	ldr	r1, [r3]
	orrs	r2, r1
	str	r2, [r3]
.L666:
	bl	PAU_setBattleGauge
.L646:
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
	ldr	r3, .L667+16
	bl	.L25
	cmp	r0, #0
	bne	.L652
	adds	r6, r6, #1
	b	.L644
.L645:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L647
	ldr	r3, .L667+4
	ldr	r2, .L667+8
	ldr	r3, [r3]
	ldrb	r2, [r2]
	ldrb	r3, [r3]
	cmp	r2, r3
	bhi	.L647
	ldr	r2, .L667+20
	ldr	r3, [r7]
	strb	r2, [r3, #4]
	movs	r2, #128
	lsls	r2, r2, #8
	b	.L665
.L647:
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #1
	bne	.L648
.L649:
	ldr	r3, .L667+4
	ldr	r3, [r3]
	ldrb	r0, [r3]
	adds	r0, r0, #1
	lsls	r0, r0, #24
	lsrs	r0, r0, #24
	b	.L666
.L648:
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #1
	beq	.L649
	movs	r0, r4
	bl	PAU_isPairedUp
	cmp	r0, #2
	beq	.L649
	movs	r0, r5
	bl	PAU_isPairedUp
	cmp	r0, #2
	bne	.L646
	b	.L649
.L652:
	movs	r0, #1
	b	.L643
.L668:
	.align	2
.L667:
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
.L671:
	lsls	r0, r4, #24
	ldr	r3, .L679
	lsrs	r0, r0, #24
	bl	.L25
	cmp	r0, #0
	beq	.L670
	ldr	r3, [r0]
	cmp	r3, #0
	beq	.L670
	movs	r1, #0
	ldr	r3, [r0, #12]
	bics	r3, r5
	str	r3, [r0, #12]
	strb	r1, [r0, #27]
	ldr	r3, .L679+4
	bl	.L25
.L670:
	adds	r4, r4, #1
	cmp	r4, #64
	bne	.L671
	ldr	r3, .L679+8
	@ sp needed
	bl	.L25
	ldr	r3, .L679+12
	bl	.L25
	pop	{r4, r5, r6}
	pop	{r0}
	bx	r0
.L680:
	.align	2
.L679:
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
	bhi	.L682
	ldr	r3, .L684
	ldrb	r0, [r5, #27]
	bl	.L25
	ldr	r3, .L684+4
	bl	.L25
	lsls	r3, r0, #24
	adds	r2, r0, #0
	asrs	r3, r3, #24
	cmp	r3, r4
	ble	.L683
	adds	r2, r4, #0
.L683:
	lsls	r2, r2, #24
	asrs	r4, r2, #24
.L682:
	movs	r0, r4
	@ sp needed
	pop	{r4, r5, r6}
	pop	{r1}
	bx	r1
.L685:
	.align	2
.L684:
	.word	GetUnit
	.word	prMovGetter
	.size	PAU_minMov, .-PAU_minMov
	.global	ITEM_MONSTER_STONE
	.global	PAU_forecastProcInstr
	.section	.rodata.str1.1,"aMS",%progbits,1
.LC404:
	.ascii	"PAU_Forecast\000"
	.global	PAU_infoWindowDisplayProcInstr
.LC405:
	.ascii	"PAU_InfoWindowDisplayProc\000"
	.global	PAU_offsetMapSpriteProcInstr
.LC406:
	.ascii	"PAU_OffsetMapSpriteProc\000"
	.global	PAU_bAnimGaugeProcInstr
.LC407:
	.ascii	"PAU_BAnimGaugeAppearProc\000"
	.global	PAU_delayAISProcInstr
.LC408:
	.ascii	"PAU_DelayAISProc\000"
	.global	PAU_aisProcInstr
.LC409:
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
	.word	.LC409
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
	.word	.LC408
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
	.word	.LC405
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
	.word	.LC406
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
	.word	.LC404
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
	.word	.LC407
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
.L89:
	bx	r6
.L398:
	bx	r7

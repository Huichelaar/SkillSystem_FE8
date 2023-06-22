@ Hooked at 0x56D2C.
@ Draw pair-up gauge symbols when battle overlay gets drawn.
@ Also remove pair-up gauge when battle overlay gets removed.
@ Registers:
@   r4: endT for easing function.
@   r5: 0 if appear, 1 if disappear.
.thumb

push  {r6-r7}
ldr   r0, =PAU_bAnimGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r6, r0

@ Left.
ldr   r0, =gpUnitLeft_BattleStruct
ldr   r0, [r0]
bl    PAU_isPairedUp
mov   r7, r0
cmp   r7, #0x0
beq   L1
  cmp   r6, #0x0
  bne   L2
    ldr   r0, =PAU_bAnimGaugeProcInstr
    mov   r1, #0x3
    ldr   r3, =ProcStart
    bl    GOTO_R3
    mov   r6, r0
    mov   r0, #0x29
    strb  r5, [r6, r0]      @ disappear.
    mov   r0, #0x2C
    strh  r4, [r6, r0]      @ limit.
    mov   r0, #0x2F
    mov   r1, #0x0
    strb  r1, [r6, r0]      @ rightPairUpType.
    mov   r0, #0x30
    strb  r1, [r6, r0]      @ leftGaugeVal.
    bl    PAU_getPairUpGauge
    mov   r1, #0x31
    strb  r0, [r6, r1]      @ rightGaugeVal.
  L2:
  mov   r0, #0x2E
  strb  r7, [r6, r0]        @ leftPairUpType.

@ Right.
L1:
ldr   r0, =gpUnitRight_BattleStruct
ldr   r0, [r0]
bl    PAU_isPairedUp
mov   r7, r0
cmp   r7, #0x0
beq   L3
  cmp   r6, #0x0
  bne   L4
    ldr   r0, =PAU_bAnimGaugeProcInstr
    mov   r1, #0x3
    ldr   r3, =ProcStart
    bl    GOTO_R3
    mov   r6, r0
    mov   r0, #0x29
    strb  r5, [r6, r0]      @ disappear.
    mov   r0, #0x2C
    strh  r4, [r6, r0]      @ limit.
    mov   r0, #0x2E
    mov   r1, #0x0
    strb  r1, [r6, r0]      @ leftPairUpType.
    mov   r0, #0x30
    strb  r1, [r6, r0]      @ leftGaugeVal.
    bl    PAU_getPairUpGauge
    mov   r1, #0x31
    strb  r0, [r6, r1]      @ rightGaugeVal.
  L4:
  mov   r0, #0x2F
  strb  r7, [r6, r0]        @ rightPairUpType.

@ Vanilla, overwritten by hook.
L3:
ldr   r0, =gProc_ekrWindowAppear
mov   r1, #0x3
ldr   r3, =ProcStart
bl    GOTO_R3
str   r5, [r0, #0x44]

pop   {r6-r7}
ldr   r1, =0x8056D35
bx    r1
GOTO_R3:
bx    r3

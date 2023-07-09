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
cmp   r6, #0x0
bne   L5                    @ If proc doesn't exist,
  cmp   r5, #0x1            @ and overlay is to disappear,
  beq   L3                  @ don't start proc.
L5:

@ Check if promotion.
ldr   r0, =gBattleStats
ldrh  r0, [r0]
ldr   r1, =0x110            @ 0x10 promo_prep (branch screen?), 0x100 promo.
tst   r0, r1
bne   L3                    @ Don't start proc if promotion.

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
    mov   r0, #0x34
    mov   r1, #0x0
    strb  r1, [r6, r0]      @ ending.
    mov   r0, #0x2F
    strb  r1, [r6, r0]      @ rightPairUpType.
    mov   r0, #0x2E
    strb  r7, [r6, r0]      @ leftPairUpType.
    bl    PAU_getPairUpGauge
    mov   r1, #0x30
    strb  r0, [r6, r1]      @ leftGaugeVal.
    mov   r0, #0x0
    mov   r1, #0x31
    strb  r0, [r6, r1]      @ rightGaugeVal.
  L2:
  mov   r0, #0x29
  strb  r5, [r6, r0]        @ disappear.
  mov   r0, #0x2C
  strh  r4, [r6, r0]        @ limit.
  mov   r0, r6
  mov   r1, #0x0  
  ldr   r3, =ProcGoto
  bl    GOTO_R3

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
    mov   r0, #0x34
    mov   r1, #0x0
    strb  r1, [r6, r0]      @ ending.
    mov   r0, #0x2E
    strb  r1, [r6, r0]      @ leftPairUpType.
    mov   r0, #0x2F
    strb  r7, [r6, r0]      @ rightPairUpType.
    bl    PAU_getPairUpGauge
    mov   r1, #0x31
    strb  r0, [r6, r1]      @ rightGaugeVal.
    mov   r0, #0x0
    mov   r1, #0x30
    strb  r0, [r6, r1]      @ leftGaugeVal.
  L4:
  mov   r0, #0x29
  strb  r5, [r6, r0]        @ disappear.
  mov   r0, #0x2C
  strh  r4, [r6, r0]        @ limit.
  mov   r0, r6
  mov   r1, #0x0  
  ldr   r3, =ProcGoto
  bl    GOTO_R3

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

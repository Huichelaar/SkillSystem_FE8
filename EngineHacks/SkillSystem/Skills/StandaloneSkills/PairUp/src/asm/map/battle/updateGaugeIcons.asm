@ Hooked at 0x81628. Where default map battle round happens.
@ Updates gauge icons.
.thumb

push  {r4-r5}
mov   r5, #0x0

ldr   r0, =PAU_mapGaugeProcInstr
ldr   r3, =ProcFind
bl    GOTO_R3
mov   r4, r0
cmp   r4, #0x0
beq   Return
  mov   r0, r4
  mov   r1, #0x0
  bl    updateGauge
  orr   r5, r0
  mov   r0, r4
  mov   r1, #0x1
  bl    updateGauge
  orr   r5, r0
  cmp   r5, #0x0
  beq   Return
    mov   r0, r4
    mov   r1, #0x0
    ldr   r3, =ProcGoto
    bl    GOTO_R3         @ Update screen entries.

@ Vanilla, overwritten by hook.
Return:
pop   {r4-r5}
ldr   r1, =gMapAnimData
mov   r0, r1
add   r0, #0x58
ldrb  r0, [r0]
ldr   r3, =0x8081631
GOTO_R3:
bx    r3


@ Registers:
@   r0: proc*
@   r1: 0 for right, 1 for left.
updateGauge:
push  {r4-r5, r14}
mov   r4, r0
mov   r5, r1
mov   r2, #0x0
mov   r12, r2             @ Indicates we don't need to update screen entries.

@ Don't change gauge values if solo animation.
ldr   r1, =gMapAnimData
mov   r2, #0x5E
ldrb  r2, [r1, r2]
cmp   r2, #0x1
ble   Return2

@ Don't change gauge values for certain spells.
ldr   r1, =gMapAnimData
mov   r2, #0x54
ldr   r2, [r1, r2]
cmp   r2, #0x0
beq   L1                  @ Spells without dedicated procs affect gauge.
  ldr   r1, =gBattleSpellAnimationId1
  mov   r2, #0x1
  eor   r2, r5
  lsl   r2, #0x1
  ldsh  r0, [r1, r2]
  bl    PAU_doesStatusSpellAffectGauge
  mov   r2, #0x0
  mov   r12, r2           @ Indicates we don't need to update screen entries.
  cmp   r0, #0x0
  beq   Return2
L1:

@ Check if dual skills triggered.
ldr   r1, =gMapAnimData
mov   r2, #0x50
ldr   r2, [r1, r2]
ldr   r3, =BattleBufferWidth
lsl   r3, #0x5
lsr   r3, #0x5
sub   r2, r3              @ ptr to current round.
ldrb  r2, [r2, #0x4]      @ Procced skill.
ldr   r3, =DualStrikeID
lsl   r3, #0x5
lsr   r3, #0x5
cmp   r2, r3
beq   dualStrikeProcced
  ldr   r3, =DualGuardID
  lsl   r3, #0x5
  lsr   r3, #0x5
  cmp   r2, r3
  bne   incr

@ dualGuardProcced.
mov   r2, #0x5C
ldrb  r2, [r1, r2]
mov   r3, #0x8            @ BATTLE_HIT_INFO_RETALIATION
and   r2, r3
lsr   r2, #0x3
cmp   r2, r5
beq   incr
  mov   r1, #0x30
  add   r1, r5
  mov   r2, #0x0
  strb  r2, [r4, r1]      @ Clear gaugeVal.
  mov   r2, #0x1
  mov   r12, r2           @ Indicates we need to update screen entries.
  b     Return2

dualStrikeProcced:
mov   r2, #0x5C
ldrb  r2, [r1, r2]
mov   r3, #0x8            @ BATTLE_HIT_INFO_RETALIATION
and   r2, r3
lsr   r2, #0x3
cmp   r2, r5
bne   incr
  mov   r1, #0x30
  add   r1, r5
  mov   r2, #0x0
  strb  r2, [r4, r1]      @ Clear gaugeVal.
  mov   r2, #0x1
  mov   r12, r2           @ Indicates we need to update screen entries.
  b     Return2

@ Increment gaugeVal if no dual skills triggered for unit.
incr:
mov   r1, #0x2E
add   r1, r5
ldrb  r1, [r4, r1]        @ pairUpType.
cmp   r1, #0x0
beq   Return2             @ Nothing to do if not paired-up.
  mov   r1, #0x30
  add   r1, r5
  ldrb  r2, [r4, r1]      @ gaugeVal.
  ldr   r3, =PAU_gaugeSize
  ldrb  r3, [r3]
  cmp   r2, r3
  bge   Return2           @ Nothing to increment if already full.
    add   r2, #0x1        @ increment.
    strb  r2, [r4, r1]
    mov   r2, #0x1
    mov   r12, r2         @ Indicates we need to update screen entries.

Return2:
mov   r0, r12
pop   {r4-r5}
pop   {r1}
bx    r1

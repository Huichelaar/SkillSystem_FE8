@ Hooked at 0x2BF24.
@ Ensures stats won't go below 0 for negative growth units.
@ Args:
@   r0: Unit*
@   r1: BattleUnit*
.thumb

push  {r4-r5, r14}
mov   r4, r0
mov   r5, r1

@mov   r0, r4
ldr   r1, =NegativeGrowthsID
lsl   r1, #0x18
lsr   r1, #0x18
ldr   r3, =SkillTester
bl    GOTO_R3
cmp   r0, #0x0
beq   Vanilla

  @ Negative growths. Make sure stats don't go below 0 (1 for HP).
  
  @ HP.
  mov   r0, #0x12
  mov   r1, #0x73
  ldrb  r2, [r4, r0]
  ldsb  r3, [r5, r1]
  add   r3, r2
  bgt   Next
    sub   r3, r2, #0x1
    neg   r3, r3
    strb  r3, [r5, r1]        @ Min HP is 1.
  Next:
  
  @ Other stats.
  mov   r0, #0x14
  mov   r1, #0x74
  Loop:
    ldrb  r2, [r4, r0]
    ldsb  r3, [r5, r1]
    add   r3, r2
    bpl   Next2
      neg   r3, r2
      strb  r3, [r5, r1]      @ Other stat min is 0.
    Next2:
    add   r0, #0x1
    add   r1, #0x1
    cmp   r0, #0x19
    ble   Loop
  
  pop   {r4-r5}
  pop   {r0}
  bx    r0

Vanilla:
@ overwritten by hook.
mov   r2, r4
mov   r12, r5
mov   r1, #0x12
ldr   r0, =0x802BF2D
bx    r0
GOTO_R3:
bx    r3

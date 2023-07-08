@ Hooked at 0x2FC58.
@ Increment battle pair-up gauge for StaffDoorChestUseItem actions.
@ Registers:
@   r0: Unit*.
@   r4: gActionData.
.thumb

push  {r5}

@ Vanilla, overwritten by hook.
ldrb  r1, [r4, #0x12]
lsl   r1, #0x1
add   r0, #0x1E
ldrh  r5, [r0, r1]
mov   r1, #0xFF
and   r5, r1          @ Item.

mov   r0, r5
ldr   r3, =GetSpellAssocStructPtr
bl    GOTO_R3
cmp   r0, #0x0
beq   Return
  mov   r1, #0x4
  ldsh  r0, [r0, r1]
  ldr   r3, =PAU_doesStatusSpellAffectGauge
  bl    GOTO_R3
  cmp   r0, #0x0
  beq   Return
    bl    PAU_getBattleGauge
    ldr   r1, =PAU_gaugeSize
    ldrb  r1, [r1]
    cmp   r0, r1
    bge   Return
      add   r0, #0x1
      bl    PAU_setBattleGauge

Return:
mov   r0, r5
pop   {r5}
ldr   r3, =0x802FC63
GOTO_R3:
bx    r3

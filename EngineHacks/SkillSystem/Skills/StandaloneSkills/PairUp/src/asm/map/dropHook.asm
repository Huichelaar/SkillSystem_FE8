@ Hooked at 0x32230.
@ Start proc that deletes backupUnit's MU and
@ offsets new KOIDO's MU as well as mainUnit's MU.
@ Registers:
@   r4: gActionData.
.thumb

ldr   r0, =PAU_showBothMapSprites
ldrb  r0, [r0]
cmp   r0, #0x0
beq   Return
  ldrb  r0, [r4, #0xC]
  ldr   r3, =GetUnit
  bl    GOTO_R3
  bl    PAU_isPairedUp
  cmp   r0, #0x0
  beq   Return
    ldr   r0, =PAU_offsetMapSpriteProcInstr
    ldr   r1, =gMoveUnitExtraDataArray
    ldrb  r2, [r1]
    cmp   r2, #0x0
    beq   Return
      mov   r2, #0x48
      ldr   r1, [r1, r2]
      ldr   r3, =ProcStart
      bl    GOTO_R3
      mov   r1, #0x1
      ldr   r3, =ProcGoto
      bl    GOTO_R3
      
@ Vanilla, overwritten by hook
Return:
ldrb  r0, [r4, #0xC]
ldr   r3, =GetUnit
bl    GOTO_R3
ldrb  r1, [r4, #0x13]
ldrb  r2, [r4, #0x14]
ldr   r3, =0x8032239
GOTO_R3:
bx    r3

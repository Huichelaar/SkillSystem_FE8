@ Hooked at 0x59DE8. Calls function to start pair-up partner AISes during battle init.
.thumb

@ Call function for Left AISes.
ldr   r1, =0x2000000
ldr   r0, [r1]            @ frontLeftAIS.
ldr   r1, [r1, #0x4]      @ backLeftAIS.
cmp   r0, #0x0
beq   L1
  cmp   r1, #0x0
  beq   L1
    ldr   r2, =gpUnitLeft_BattleStruct
    ldr   r2, [r2]
    mov   r3, #0x0            @ 0 for Left AIS.
    bl    PAU_initPairUpPartner
L1:

@ Call function for Right AISes.
ldr   r1, =0x2000000
ldr   r0, [r1, #0x8]      @ frontRightAIS.
ldr   r1, [r1, #0xC]      @ backRightAIS.
cmp   r0, #0x0
beq   L2
  cmp   r1, #0x0
  beq   L2
    ldr   r2, =gpUnitRight_BattleStruct
    ldr   r2, [r2]
    mov   r3, #0x1            @ 1 for Right AIS.
    bl    PAU_initPairUpPartner
L2:

@ Vanilla, overwritten by hook.
ldr   r0, =gSomethingRelatedToAnimAndDistance
mov   r1, #0x0
ldsh  r0, [r0, r1]
ldr   r1, =0x8059E05
cmp   r0, #0x4
bne   Return
  ldr   r1, =0x8059DF3      @ If distance == 4, hide both front left and back left AISes.

Return:
mov   r0, r1
bx    r0

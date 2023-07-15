@ Hooked at 0x2770C, 0x27760, 0x277B4, 0x27804 and 0x27870.
@ Offsets status icons for paired-up units.
@ Registers:
@   r4: Unit*.
.thumb

push  {r6-r7, r14}

@ Vanilla, overwritten by hook.
sub   r7, r1, r0    @ x.
mov   r0, #0x11
ldsb  r0, [r4, r0]
lsl   r0, #0x4
mov   r5, #0xE
ldsh  r1, [r2, r5]
sub   r6, r0, r1    @ y.

ldr   r0, =PAU_showBothMapSprites
ldrb  r0, [r0]
cmp   r0, #0x0
beq   Return
  mov   r0, r4
  bl    PAU_isPairedUp
  cmp   r0, #0x0
  beq   Return
    ldr   r0, =PAU_mapOffs
    mov   r1, #0x0
    ldsb  r0, [r0, r1]
    add   r7, r0
    add   r6, r0

Return:
mov   r3, r7
mov   r2, r6
pop   {r6-r7}
pop   {r0}
bx    r0

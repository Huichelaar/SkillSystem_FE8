@ Hooked at 0x88400.
@ Draw condition icon.
@   r4: gStatScreen struct. +0xC is a Unit*.
@   r5: 1 if icons are to display, 0 otherwise.
.thumb

@ Draw condition icon.
sub   sp, #0x4
ldr   r0, [r4, #0xC]        @ Unit*
mov   r1, #0x30
ldrb  r0, [r0, r1]          @ Status and duration.
mov   r1, #0xF
and   r0, r1                @ Status.
cmp   r0, #0x0
beq   skipIcon              @ Healthy, display nothing.
  cmp   r5, #0x0
  beq   drawCount           @ Only draw icon depending on game clock.
    lsl   r0, #0x4
    ldr   r1, =MSS_StatusIconPlacementArr
    add   r0, r1
    ldr   r3, [r0, #0x8]    @ OAMData mask, specifically size 'n shape.
    cmp   r3, #0x0
    beq   skipIcon          @ Nothing to display if OAMData mask == 0.
      ldr   r1, =0x80053E9  @ ObjInsertSafe.
      mov   r12, r1
      ldrh  r1, [r0, #0x4]  @ OAM2.
      str   r1, [sp]
      ldrh  r1, [r0]        @ X.
      ldrh  r2, [r0, #0x2]  @ Y.
      mov   r0, #0x4        @ Priority.
      bl    GOTO_R12
      b     skipIcon

drawCount:                  @ Draw status count if not drawing status icon.
@ Draw most significant digit.
ldr   r1, =0x80053E9        @ ObjInsertSafe.
mov   r12, r1
mov   r0, #0x4              @ Priority.
mov   r1, #76               @ X.
mov   r2, #86               @ Y.
ldr   r3, =0x8288
str   r3, [sp]              @ OAM2.
ldr   r3, =0x8590F44        @ OAMData mask, specifically size 'n shape. 8x8 sprite.
bl    GOTO_R12

@ Draw least significant digit.
ldr   r1, =0x80053E9        @ ObjInsertSafe.
mov   r12, r1
mov   r0, #0x4              @ Priority.
mov   r1, #84               @ X.
mov   r2, #86               @ Y.
ldr   r3, =0x82A8
str   r3, [sp]              @ OAM2.
ldr   r3, =0x8590F44        @ OAMData mask, specifically size 'n shape. 8x8 sprite.
bl    GOTO_R12
skipIcon:

@ Vanilla, overwritten by hook.
ldr   r0, =0x8088409
mov   r12, r0
ldr   r2, [r4, #0xC]
ldr   r0, [r2, #0xC]
mov   r1, #0x20
and   r0, r1

add   sp, #0x4
GOTO_R12:
bx    r12

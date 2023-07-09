@ Hooked at 0x240FC.
@ Disable "Arena" command if unit is paired-up.
@ Registers:
@   r0: unit state bitfield (+0xC).
@   r2: Unit*
.thumb

@ Vanilla, overwritten by hook.
mov   r1, #0x40
tst   r0, r1
bne   dontShow
  mov   r0, r2
  bl    PAU_isPairedUp
  cmp   r0, #0x0
  bne   dontShow
    ldr   r2, =gActiveUnit
    ldr   r2, [r2]
    ldr   r3, =0x8024105
    b     Return

dontShow:
ldr   r3, =0x802411F
Return:
bx    r3

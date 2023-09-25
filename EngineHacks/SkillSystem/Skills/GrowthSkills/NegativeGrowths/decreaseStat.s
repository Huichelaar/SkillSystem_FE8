@ Replaces GetStatIncrease at 0x2B9A0.
@ Allows GetStatIncrease to also decrease stat if growth is negative.
@ Args:
@   r0: growth.

.equ Roll1RN, 0x8000CA1

.thumb
push  {r14}
cmp   r0, #0x0
blt   NegativeGrowth
  bl    calcStatChange
  b     Return
NegativeGrowth:
  neg   r0, r0
  bl    calcStatChange
  neg   r0, r0
Return:
pop   {r1}
bx    r1


@ r0: absolute value of growth
calcStatChange:
push  {r4, r14}
mov   r4, #0x0

Loop:
  cmp   r0, #0x64
  ble   RNGRoll
    add   r4, #0x1
    sub   r0, #0x64
    b     Loop

RNGRoll:
ldr   r1, =Roll1RN
bl    GOTO_R1
cmp   r0, #0x0
beq   Return2
  add   r4, #0x1

Return2:
mov   r0, r4
pop   {r4}
pop   {r1}
GOTO_R1:
bx    r1

@ Looper for condition.
@ Don't show RText for condition if unit is healthy.
@   r0: helpBoxProc*
.thumb

push  {r14}
mov   r2, r0

ldr   r0, =0x2003bfc          @ StatScreenStruct
ldr   r0, [r0, #0xc]          @ Unit*
mov   r1, #0x30
ldrb  r0, [r0, r1]            @ Unit condition and duration.
mov   r1, #0xF
and   r0, r1                  @ Unit condition.
lsl   r0, #0x4
ldr   r1, =MSS_StatusIconPlacementArr
add   r0, r1
ldr   r0, [r0, #0x8]          @ OAMData mask, specifically size 'n shape.
cmp   r0, #0x0
bne   Return                  @ If not zero, then status. Display RText.
  mov   r0, #0x50
  ldrh  r0, [r2, r0]          @ Previously pressed key.
  ldr   r1, =0x80893e5        @ TryRelocateHbRight
  cmp   r0, #0x10
  beq   Relocate
    ldr   r1, =0x80893b5      @ TryRelocateHbLeft
    cmp   r0, #0x20
    beq   Relocate
      ldr   r1, =0x8089355    @ TryRelocateHbUp
      cmp   r0, #0x40
      beq   Relocate
        ldr   r1, =0x8089385  @ TryRelocateHbDown

Relocate:
mov   r0, r2
bl    GOTO_R1

Return:
pop   {r0}
bx    r0
GOTO_R1:
bx    r1

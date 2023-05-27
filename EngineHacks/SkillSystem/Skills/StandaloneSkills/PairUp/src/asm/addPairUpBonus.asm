@ For use with MSG.
.thumb
.align

.equ StatOffset,LitPool

.macro blh to, reg=r3
	ldr \reg, =\to
	mov lr, \reg
	.short 0xF800
.endm

@goes in stat getters

push {r4-r6, lr}
mov r4, r0 @stat
mov r5, r1 @unit

mov   r0, r5
bl    PAU_isPairedUp
ldr   r1, =PAU_offStatBoost
cmp   r0, #0x1
beq   ApplyPAUBonus
  ldr   r1, =PAU_defStatBoost
  cmp   r0, #0x2
  beq   ApplyPAUBonus
  b     Return

ApplyPAUBonus:
ldr   r0, =StatOffset
ldrb  r0, [r0]
ldrb  r0, [r1, r0]          @ Stat Bonus.
add   r4, r0


Return:
mov r0, r4
mov r1, r5
pop {r4-r6,pc}


.ltorg
.align

LitPool:
@WORD StatOffset

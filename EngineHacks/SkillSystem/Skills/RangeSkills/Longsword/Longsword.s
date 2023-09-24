.thumb

.macro _blh to, reg=r3
	ldr \reg, =\to
	mov lr, \reg
	.short 0xF800
.endm

@arguments:
	@r0: unit pointer
	@r1: item id
	@r2: min max range word
@retuns
	@r0: updated min max range word
.set GetWeaponType, 0x8017548
.set BonusWeaponType, 0x0 @Swords
push 	{lr}
add 	sp, #-0x4
str 	r2, [sp]
mov 	r0, r1

_blh GetWeaponType
cmp 	r0, #BonusWeaponType	@check if item is matching weapon type
bne   End
  ldr   r2, =0x10002  @ Range 1-2
  str   r2, [sp]

End:
ldr 	r0, [sp]
add 	sp, #0x4
pop 	{r1}
bx 	r1
.ltorg
.align

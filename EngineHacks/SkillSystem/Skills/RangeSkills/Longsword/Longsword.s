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
.set ChapterData, 0x202BCF0
.set BonusWeaponType, 0x0     @ Swords
push 	{lr}
add 	sp, #-0x4
str 	r2, [sp]

ldrb  r0, [r0, #0xB]          @ Unit deployment byte.
mov   r2, #0xC0
and   r0, r2                  @ Unit allegiance.
ldr   r2, =ChapterData
ldrb  r2, [r2, #0xF]          @ Current phase.
cmp   r0, r2
bne   End                     @ Don't apply if phase doesn't match unit allegiance.
  mov 	r0, r1
  _blh GetWeaponType
  cmp 	r0, #BonusWeaponType
  bne   End                   @ Don't apply if item is not matching weapon type.
    ldr   r2, =0x10002        @ Range 1-2.
    str   r2, [sp]

End:
ldr 	r0, [sp]
add 	sp, #0x4
pop 	{r1}
bx 	r1
.ltorg
.align

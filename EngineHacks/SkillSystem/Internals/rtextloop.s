@ Skills RTextLooper, when moving from other RText to skills.
@   r0: helpBoxProc*
.thumb

push  {r4-r5, r14}
sub   sp, #0x8
mov   r4, r0

@ Find number of skills.
ldr   r0, =0x2003bfc      @ StatScreenStruct
ldr   r0, [r0, #0xc]      @ Unit*
mov   r1, sp
ldr   r3, =Skill_Getter_NoClass+0x1
bl    GOTO_R3
mov   r5, r0              @ Number of skills.

@ If number of skills = 0, return to previous entry.
cmp   r5, #0x0
bne   L1
  ldr   r0, [r4, #0x2C]   @ Current helpBox entry.
  ldrh  r0, [r0, #0x12]   @ helpBox slot number.
  cmp   r0, #0x0
  beq   goLeft
    @ Go back up.
    mov   r0, r4
    ldr   r3, =0x8089355  @ TryRelocateHbUp
    bl    GOTO_R3
    b     Return
  goLeft:
    mov   r0, r4
    ldr   r3, =0x80893B5  @ TryRelocateHbLeft
    bl    GOTO_R3
    b     Return

L1:
@ Use slot to determine which key should be stored.
ldr   r0, [r4, #0x2C]     @ Current helpBox entry.
ldrh  r0, [r0, #0x12]     @ helpBox slot number.
cmp   r0, #0x0
bne   keyDown
@ keyRight
  mov   r1, #0x10
  b     L2
keyDown:
  mov   r1, #0x80
L2:
mov   r2, #0x50
strh  r1, [r4, r2]
  
@ Use slot to determine if starting from left or right.
lsr   r0, #0x1            @ slots 0 and 1 are for left, 2 for right.
lsl   r1, r0, #0x3
lsl   r0, #0x4
add   r0, r1
ldr   r1, =ST_Skills
add   r0, r1

@ Update helpBox entry to next entry.
@ This one won't have a looper/redirect so we won't bother checking or calling it.
sub   r1, r5, #0x1
lsl   r1, #0x2
ldr   r0, [r0, r1]
str   r0, [r4, #0x2C]

Return:
add   sp, #0x8
pop   {r4-r5}
pop   {r0}
bx    r0
GOTO_R3:
bx    r3

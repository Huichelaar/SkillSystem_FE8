@ Skills RTextLooper, when moving from skills to other skills.
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

ldr   r0, [r4, #0x2C]
ldrh  r0, [r0, #0x12]     @ HelpBox entry slot.
lsr   r1, r0, #0x4        @ Number of total skills for slot.
cmp   r1, r5
beq   Return
  @ Slot shouldn't be available for current char
  @ as current char doesn't have the same number of skills.
  @ So we move to first skill of correct number of skills.
  
  @ If number of skills = 0, go up.
  cmp   r5, #0x0
  bne   L1
    ldr   r0, [r4, #0x2C]   @ Current helpBox entry.
    ldr   r0, [r0]          @ Up.
    str   r0, [r4, #0x2C]
    mov   r0, #0x40         @ KeyUp.
    mov   r1, #0x50
    strh  r0, [r4, r1]
    b     Return
  
  @ Otherwise, move to first skill.
  L1:
  ldr   r0, =ST_Skills
  sub   r1, r5, #0x1
  lsl   r1, #0x2
  ldr   r0, [r0, r1]
  str   r0, [r4, #0x2C]     @ Current helpBox entry.
  mov   r0, #0x20           @ KeyLeft.
  mov   r1, #0x50
  strh  r0, [r4, r1]

Return:
add   sp, #0x8
pop   {r4-r5}
pop   {r0}
bx    r0
GOTO_R3:
bx    r3

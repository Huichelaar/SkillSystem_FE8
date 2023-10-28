@ Return unit's skills except class and class lvup skills.
@ Arguments:  r0 = Unit. r1 = ptr to skill buffer, sized two words.
@ Returns:    r0 = buffer size. Also buffer in arg r1 will have changed.
.thumb

push  {r4-r7, r14}
mov   r4, r8
mov   r5, r9
push  {r4-r5}
mov   r4, r0
mov   r8, r1
mov   r0, #0x0
mov   r9, r0              @ buffer size.

@ Clear buffer.
@mov   r0, #0x0
str   r0, [r1]
str   r0, [r1, #0x4]

@ Return if no unit
ldr   r0, [r4]
cmp   r0, #0x0
beq   return

  @ Prepare initial skill buffer.
  mov   r0, r4
  ldr   r1, =Skill_Getter+0x1
  bl    GOTO_R1
  mov   r5, r0            @ skill buffer.

  @ Class skill.
  ldr   r0, [r4, #0x4]
  ldrb  r0, [r0, #0x4]    @ r0 = class id.
  ldr   r1, =ClassSkillTable
  ldrb  r6, [r1, r0]      @ skill byte.

  @ Class lvup skills.
  ldr   r0, [r4, #0x4]
  ldrb  r0, [r0, #0x4]    @ r0 = class id.
  lsl   r0, #0x2
  ldr   r1, =ClassLevelUpSkillTable
  ldr   r7, [r1, r0]

  @ Remove relevant skills from buffer.
  mov   r0, #0x0
  Loop:
    ldrb  r2, [r5, r0]
    cmp   r2, #0x0
    beq   return          @ If not a skill, buffer is finished.
      cmp   r6, r2
      beq   next          @ If a class skill, go to next iteration.
        mov   r1, #0x1
        cmp   r7, #0x0    @ If no class lvup list, add skill.
        beq   addSkill
          Loop2:          @ Loop over class lvup skills.
            ldrb  r3, [r7, r1]
            cmp   r3, #0x0
            beq   addSkill
              cmp   r2, r3
              beq   next    @ If a class lvup skill, go to next iteration.
                add   r1, #0x2
                b     Loop2
    addSkill:
    mov   r1, r8
    mov   r3, r9
    strb  r2, [r1, r3]
    add   r3, #0x1
    mov   r9, r3
    
    next:
    add   r0, #0x1
    b     Loop

return:
mov   r0, r9
pop   {r4-r5}
mov   r8, r4
mov   r9, r5
pop   {r4-r7}
pop   {r1}
GOTO_R1:
bx    r1

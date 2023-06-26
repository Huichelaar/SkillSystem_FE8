@ Hooked at 0x73E70.
@ Sets up window and blendcontrol before palettes get darkened.
.thumb

@ Vanilla, overwritten by hook.
mov   r2, #0x80
lsl   r2, #0x1
swi   #0xC                          @ CpuFastSet.

@ Init BLDCNT.
ldr   r1, =gLCDIOBuffer+0x3C        @ BLDCNT.
mov   r0, #0xC1                     @ BG0 first target + BLDY darker.
strh  r0, [r1]
mov   r0, #0x0
strh  r0, [r1, #0xA]                @ EVY.

@ Init Window0.
ldr   r1, =gLCDIOBuffer
mov   r0, #0x3F
strb  r0, [r1, #0x1]                @ Display Window0.
ldr   r1, =gLCDIOBuffer+0x2C        @ WIN0H.
mov   r0, #0xF0                     @ [0, 240].
strh  r0, [r1]
ldr   r0, =0x3068
strh  r0, [r1, #0x4]                @ WIN0V.
mov   r0, #0x3F
strb  r0, [r1, #0x8]                @ WININ (first byte, only window 0 stuff).
mov   r0, #0x1F
strb  r0, [r1, #0xA]                @ WINOUT. Disable outside window colour special effect.

ldr   r0, =0x8073E79
bx    r0

bits 16
org 0x7c00 ;starts at 0x7c00 

start:
   jmp main


main:
   ; zero out data segments
   mov ax, 0
   mov ds, ax
   mov es, ax

   ;setup stack pointer and stack
   mov ss, ax
   mov sp, 0x7C00 ;stack grows downwards from this memory address

   hlt ;an OS that does something

.halt:
   jmp .halt

times 510-($-$$) db 0 ;padding
dw 0AA55h ;magick number
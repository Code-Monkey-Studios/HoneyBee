;
; A simple boot sector that prints a message to the screen using a BIOS routine.
;
  mov ah, 0x0e ; int 10/ ah = 0eh -> scrolling teletype BIOS routine
  mov al, 'H'
  call my_print_function
  mov al, 'e'
  call my_print_function
  mov al, 'l'
  call my_print_function
  mov al, 'l'
  call my_print_function
  mov al, 'o'
  call my_print_function
  jmp $        ; Jump to the current address ( i.e. forever ).

  %include "..\print\my_print_function.asm" ; this will simply get replaced by
                             ; the contents of the file
;
; Padding and magic BIOS number.
;
  times 510-($-$$) db 0 ; Pad the boot sector out with zeros
  dw 0xaa55             ; Last two bytes form the magic number ,
                        ; so BIOS knows we are a boot sector.
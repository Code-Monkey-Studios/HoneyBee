my_print_function :
    pusha ; Push all register values to the stack
	mov ah , 0x0e ; int =10/ ah =0 x0e -> BIOS tele - type output
    int 0x10 ; print the character in al
    popa  ; Restore original register values
	ret
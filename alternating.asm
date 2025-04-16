print:
mov bh, 65
mov bl, 98
mov ah, 0x0e
mov al, bh
int 0x10
add bh, 2
mov ah, 0x0e
mov al, bl
int 0x10
add bl, 2
cmp bl, 123
je exit
jmp print

exit:
jmp $

times 510-($-$$) db 0
dw 0xAA55

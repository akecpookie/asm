loop:
mov bl, 97
mov bh, 65
mov ah, 0x0e
mov al, bh
int 0x10
mov ah, 0x0e
mov al, bl
cmp bl, 123
je exit
int 0x10
inc bh
inc bl
jmp loop

exit:
jmp $

times 510-($-$$) db0
dw 0xAA55

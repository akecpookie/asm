mov bh, 65
mov bl, 97

uppercase:
mov ah, 0x0e
mov al, bh
int 0x10
inc bh
inc bl
cmp bh, 90
and bl, 1
je lowercase

lowercase:
mov ah, 0x0e
mov al, bl
int 0x10
inc bh
inc bl
je exit
and bl, 1
jne uppercase


exit:
jmp$

times 510-($-$$) db 0
dw 0xAA55

[org 0x7c00]
    mov bp, 0x8000  ;set stack location
    mov sp, bp

    mov bx, 0x9000 ; es:bx = 0x0000:0x9000 makes our buffer starting from 0x9000
    mov dh, 2 ; read 2 sectors
    ; the bios sets 'dl' for our boot disk number 
    ; we provide it as a flag when on using qemu 
    
    call disk_load

    call print
    call print_nl

    mov bx, 0x9000 + 512
   
    call print
    call print_nl

    jmp $

%include "print.asm"
%include "load_sect.asm"
%include "print_hex.asm"

; Magic number
times 510 - ($-$$) db 0
dw 0xaa55

db 'hello from sector 2'     ; sector 2 = 512 bytes
times 493  db 0

db 'hello from sector 3' ,0  ; sector 3 = 512 bytes


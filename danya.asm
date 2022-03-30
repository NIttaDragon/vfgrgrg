.model tiny
.code
org 100h
start:  mov ah,9
        mov bx,1
        lea dx,text1
        int 21h

        mov ah,3Fh
        xor bx,bx
        mov cx,20
        lea dx,buf1
        int 21h

        mov ah,9
        mov bx,1
        lea dx,text2
        int 21h

        mov ah,3Fh
        xor bx,bx
        mov cx,20
        lea dx,buf2
        int 21h

        mov dl,[buf1]
        add dl,[buf2]
        add dl,'0'
        mov ah,2
        int 21h
        ret

text1 db "Enter 1st number:",0Ah,'$'
text2 db "Enter 2nd number:",0Ah,'$'

buf1 db 1
buf2 db 1

end start

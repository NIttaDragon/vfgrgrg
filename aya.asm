.model tiny
.code
org 100h
start:
      ;mov ah, 1
      ;int 21h
      ;
      ;cmp al,2fh
      ;
      ;sub al,30h
      ;xor ah,ah
      ;xchg ax,ax
      ;mov dx,0Ah
      ;mul dx
      ;
      mov ax,5d
      mov bx,3d
      cmp ax,bx
      jle m1
      jg m2
m1:
      sub ax,1d
      mov cx,ax
      imul cx
      jmp m3
m2:
      neg ax
      mov cx,ax

      add cx,5d
      imul cx
      jmp m3
m3:
      mov ah, 2
      int 21h
      ret

end start

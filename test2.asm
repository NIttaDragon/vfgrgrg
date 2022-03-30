include io.asm
Dosseg
.model small
.stack 100
;>tlink p1.obj+ioproc.obj
.data
  x dw ?
  y dw ?
.code
.startup
start:
      lea dx,text1

      InInt x
      mov ax,x
      InInt y
      mov bx,y

      lea dx,text1

      cmp ax,bx ; сравнение чисел
      jge m1 ; если >=
      jl m2 ; если <
m1:
      add bx,ax ; сложение чисел
      jmp m3
m2:
      mov x,ax
      lea dx,text1
      OutInt x
      jmp m3
m3:
      mov y,bx
      lea dx,text1
      OutInt y
ret
;.exit 0
text1 db "Enter 1st number:",0Ah,'$'
end ;start

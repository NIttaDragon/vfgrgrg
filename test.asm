.model tiny
.code
org 100h
start:
      mov ah,1 ;ввод первого числа
      int 21h

      sub al,30h ; перевод из кода числа в число

      mov dl,al ;перезапись

      mov ah,1 ;ввод второго числа
      int 21h

      sub al,30h ; перевод из кода числа в число

			cmp dl,al ; сравнение чисел
			jge m1 ; если >=
			jl m2 ; если <
m1:
      add dl,al ; сложение чисел

m2:
			add dl,30h ; первод из числа в код числа
      mov ah,6 ; вывод числа
      int 21h

      ret

end start

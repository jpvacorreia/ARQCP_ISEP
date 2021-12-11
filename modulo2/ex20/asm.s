.section .data
.global num
.equ CHECK_EVEN, 2

.section .text

.global check_num #char  check_num(void)


check_num:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl num, %eax
movl $2, %ecx
cdq
idivl %ecx
movl %edx, %ecx
cmp $0, %ecx
je even_num
jne odd_num
ret

even_num:
movl $1, %eax
movl num, %ecx
cmp $0, %ecx
jl negative_num
addl $2, %eax
jmp end
ret

odd_num:
movl $2, %eax
movl num, %ecx
cmp $0, %ecx
jl negative_num
addl $2, %eax
jmp end
ret

negative_num:
jmp end
ret


end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


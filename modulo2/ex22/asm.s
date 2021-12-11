.section .data
.global num

aux: .int 0

.section .text

.global fa #int f(void)
.global fa2 #int f2(void)
.global fa3 #int f3(void)
.global fa4 #int f4(void)


fa:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl i, %eax
movl j, %ecx
cdq
cmp %eax, %ecx
je f_if
addl %ecx, %eax
subl $1,%eax
jmp end
ret

f_if:
subl %ecx, %eax
addl $1, %eax
jmp end
ret

fa2:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
movl i, %eax
movl j, %ecx
cdq
cmp %eax, %ecx
jl f2_if
addl $1, %ecx
mull %ecx
jmp end
ret

f2_if:
subl $1, %eax
mull %ecx
jmp end
ret

fa3:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl i, %eax
movl j, %ecx
cdq
cmp %eax, %ecx
jg f3_else
mull %ecx
movl %eax, %ecx
movl i, %eax
addl $1, %eax
divl %ecx
jmp end
ret

f3_else:

addl %eax, %ecx
addl j, %eax
addl $2, %eax
divl %ecx
jmp end
ret

fa4:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl j, %eax
addl i, %eax
movl $10, %ecx
cdq
cmp %eax, %ecx
jg f4_if
movl j, %eax
mull %eax
movl $3, %ecx
divl %ecx 
jmp end
ret

f4_if:
movl i, %eax
mull %eax
movl $4, %ecx
mull %ecx
jmp end 
ret

end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


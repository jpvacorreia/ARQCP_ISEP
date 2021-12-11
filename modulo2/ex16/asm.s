.section .data
.global num
res: .int 0 
.section .text

.global steps # int steps(void)


steps:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

# program
movl num, %eax # places num to %eax
cmp $0, %eax
jl negative_number
jmp make_steps
ret

negative_number:
movl $-1, %edx
mull %edx
jmp make_steps
ret

make_steps:
movl %eax, res
#1
movl $3, %ecx #places 3 to %ecx
movl $0, %edx
mull %ecx
#2
addl $6, %eax
adcl $0, %edx
#3
movl $3 , %ecx
idivl %ecx
movl $0, %edx
cdq
#4
addl $12, %eax
adcl $0, %edx
#5
subl res, %eax
sbbl $0, %edx
#6
subl $1, %eax
sbbl $0, %edx
jmp end
ret

end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


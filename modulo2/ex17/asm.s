.section .data
.global A
.global B
.global C
.global D

resl: .long 0 # resl -> result low
resh: .long 0 # resh -> result high

#.global CONST
.section .text
.global compute # 

compute:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program

movl A, %eax
cdq
movl $0, %edx

movl B, %ecx
mull %ecx # A*B into edx:eax
cdq

movl C, %ecx

addl C, %eax
adcl $0, %edx

movl D, %ecx

divl %ecx
cdq

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



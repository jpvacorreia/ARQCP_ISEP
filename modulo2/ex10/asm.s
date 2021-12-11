.section .data

.global op1
.global op2
resl: .long 0 
resh: .long 0

.section .text

.global sum2ints # long long sum2ints(void)


sum2ints:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl $0, %eax # places 0 to %eax
movl op1, %eax #places op1 to eax
cdq
movl %eax, resl
movl %edx, resh
movl op2, %eax
cdq
addl %eax, resl #add op2
adcl %edx, resh #propagate carry
movl resl, %eax
movl resh, %edx

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



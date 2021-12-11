.section .data
.global op1
.global op2
.global s
#.global CONST
.section .text
.global sum # int sum()
.global sum_v2 # int sum_v2()
.global swapBytes # short swapBytes() 

swapBytes:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movw s, %cx # places s to cx
movl $0, %eax # places 0 to edx
movb %cl, %ah # places least significant 8 bits in ah
movb %ch, %al # places most significant 8 bits in al
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



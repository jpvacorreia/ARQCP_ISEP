.section .data
.global byte1
.global byte2

.section .text
.global concatBytes # short concatBytes()

concatBytes:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

# body
movl $0x0, %eax
movb byte1, %al # place op1 in eax
movb byte2, %ah # place op2 in eax

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


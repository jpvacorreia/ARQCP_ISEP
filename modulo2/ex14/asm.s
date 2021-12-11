.section .data

base:
.int 4

height:
.int 4

.global base
.global height

.section .text

.global getArea # char isMultiple(void)


getArea:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

# program
movl base, %eax # places base to %eax
cdq
movl height, %edx #places height to %edx
cmpl $0, %eax
mull %edx
movl $2, %ecx
divl %ecx
jmp end
ret

end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


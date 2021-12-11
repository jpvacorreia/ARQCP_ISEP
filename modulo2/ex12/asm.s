.section .data

.global B
.global A

.section .text

.global isMultiple # char isMultiple(void)


isMultiple:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

# program
movl $0, %edx
movl A, %eax # places 0 to %eax
cdq
movl B, %ecx #places op1 to %eax
cmpl $0, %eax
je divisor_zero #verifies if divisor = 0
divl %ecx

cmpl $0, %edx
je jump_is_equal #verifies if rest = 0
movl $0, %eax
jmp end
ret

divisor_zero:
jmp end
ret

jump_is_equal:
movl $1, %eax
jmp end
ret

end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


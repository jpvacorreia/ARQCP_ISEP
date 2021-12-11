.section .data
.global op1
.global op2

resl: .long 0 # resl -> result low
resh: .long 0 # resh -> result high

#.global CONST
.section .text
.global test_flags # char test_flags()

test_flags:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program

movl op2, %eax
adcl op1, %eax

je jmp_equal_zero_flag
jo jmp_overflow
movl $0, %eax
jmp end

jmp_equal_zero_flag:
movl $1, %eax
jmp end

jmp_overflow:
movl $1, %eax

end:

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



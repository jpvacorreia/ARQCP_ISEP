.section .data
.global base
.global height

resl: .long 0 # resl -> result low
resh: .long 0 # resh -> result high

#.global CONST
.section .text
.global getArea # 

getArea:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program

movl base, %eax
movl height, %edx

mull %edx

movl $2, %ecx

divl %ecx

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



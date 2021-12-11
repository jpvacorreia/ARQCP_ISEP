.section .data
.global A
.global B
.global C
.global D

resl: .long 0 # resl -> result low
resh: .long 0 # resh -> result high

#.global CONST
.section .text
.global sum_and_subtract # long long int crossSumBytes()

sum_and_subtract:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl C, %eax # edx:eax = C
cdq
movl %eax, resl # adds lowerD to resl
movl %edx, resh # adds greaterD to resh

movl D, %eax # edx:eax = D
cdq

subl %eax, resl # %eax = C - D (lower)
sbbl %edx, resh # %edx = C - D (greater)

movsxb A, %eax # moves A into %eax
cdq # %ead to edx:eax

addl %eax, resl 
adcl %edx, resh


movswl B, %eax
cdq # %ead to edx:eax

addl %eax, resl
adcl %edx, resh


movl resl, %eax
movl resh, %edx

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



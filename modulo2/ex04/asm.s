.section .data
.global op1
.global op2
op3:
.int 2
.global op3
op4:
.int 2
.global op4
.section .text
.global sum # int sum()
.global sum_v3 # int sum_v3()
sum:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
movl op1, %ecx # place op1 in ecx
movl op2, %eax # place op2 in eax
addl %ecx, %eax #add ecx to eax. Result is in eax
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret
sum_v3:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
movl op4, %ecx # place op4 in ecx
movl op3, %eax # place op3 in eax
addl %ecx, %eax #add ecx to eax. Result is in eax
movl op2 , %ecx
subl %ecx, %eax #sub op2 to eax. Result is in eax
movl op1, %ecx
addl %ecx, %eax #add op1 to eax. Result is in eax
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret

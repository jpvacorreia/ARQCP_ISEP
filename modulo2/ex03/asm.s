.section .data
.global op1
.global op2
#.global CONST
.section .text
.global sum # int sum()
.global sum_v2 # int sum_v2()
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

sum_v2:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
#movl CONST, %edx # place CONST in edx
movl $15, %edx # places 15 (CONST) to edx
movl op2, %eax # place op2 in eax
subl %edx, %eax #substracts edx to eax. Result is in eax
movl op1, %ecx # place op1 in ecx
subl %edx, %ecx #substracts edx to ecx. Result is in ecx
subl %ecx, %eax #add ecx to eax. Result is in eax
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


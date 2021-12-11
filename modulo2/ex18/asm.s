.section .data
.global i

.equ A,0x20
.equ B,0x10

.section .text

.global function #int function(void)


function:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function

# program
movl i, % eax
mull %eax
movl %eax, %ecx
movl i, %eax # limit value in % ecx
movl $0 , %edx # iterating index in %edx (i =0)

my_loop : # loop start
cmpl %eax , %edx # compare index with limit value
jge end_my_loop # jump if i >= limit
# loop body
addl %ecx, %ecx
addl $1 , %edx # increments index (i+=1)
jmp my_loop


end_my_loop :
movl %ecx, %eax
cdq
movl $A, %ecx
mull %ecx
movl $B, %ecx
divl %ecx
jmp end
ret

end:
# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret


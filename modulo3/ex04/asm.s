.section .data
.global array
.global num
.global ptrvec

.section .text
.global vec_add_one # void str_copy_porto()

vec_add_one:
# prologue
pushl %ebp # save previous stack frame pointer
pushl %esi
movl %esp, %ebp # the stack frame pointer for sum function
# program

movl ptrvec, %ecx
movl num, %edx
movl $0, %eax

loop:
movl (%ecx), %esi # copy value of 

cmpl %edx, %eax # compares char from s1 with $0 (end of string)
je end
addl $1, %esi
movl %esi, (%ecx)

incl %eax
addl $4, %ecx
jmp loop


end:

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %esi
popl %ebp # restore the previous stack frame pointer
ret


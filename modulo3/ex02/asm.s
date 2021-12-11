.section .data
.global s1
.global s2
.global ptr1
.global ptr2

char : 
	.asciz "118"

.section .text
.global str_copy_porto # int str_copy_porto()

str_copy_porto:
# prologue
pushl %ebp # save previous stack frame pointer
pushl %esi
movl %esp, %ebp # the stack frame pointer for sum function
# program

movl ptr1, %ecx
movl ptr2, %edx
movl $0, %esi # counter = 0

movl $0, %eax

loop:
movb (%ecx), %al # copy char from s1 ( pointed by % ecx ) to %al

cmpb $0, %al # compares char from s1 with $0 (end of string)
jz end
incl %esi
cmpb $118, %al # compares char from s1 with $118 = "v"
je exchange_char

movb %al, (%edx) # copy value to ptr2[i]
incl %ecx # increment string pointer of s1
incl %edx # increment string pointer of s2


jmp loop

exchange_char:
movb $98, %al # exchange v with b
movb %al, (%edx) # copy value to ptr2[i]
incl %ecx # increment string pointer of s1
incl %edx # increment string pointer of s2

jmp loop


end:
movb $0, (%edx)
movl %esi, %eax

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %esi
popl %ebp # restore the previous stack frame pointer
ret


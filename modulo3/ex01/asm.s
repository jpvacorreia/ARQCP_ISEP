.section .data # section identifier ( data )
.global ptr1
char : 
	.asciz "0"

.section .text # section identifier ( text )
.global zero_count

zero_count : # function start
# prologue
pushl % ebp # save previous stack frame pointer
movl %esp , % ebp # the stack frame pointer for our function
# body

movl ptr1 ,%edx # copy str address to % edx ( notice the $)
movl $0 ,%eax # counter = 0

str_loop :
movb (%edx) ,% cl # copy char from str1 ( pointed by % edx ) to %cl
cmpb $0 ,% cl # check if this is the end of the string
jz str_loop_end # jump if it is the end
cmpb char, %cl
je is_zero
incl %edx # move to the next char in str1
jmp str_loop # next iteration

is_zero:
incl %eax # counter ++
incl %edx # move to the next char in str1
jmp str_loop

str_loop_end :
# note : return value ( counter ) in % eax

# epilogue
movl %ebp , % esp # restore the stack pointer (" clear " the stack )
popl % ebp # restore the stack frame pointer
ret # return from the function

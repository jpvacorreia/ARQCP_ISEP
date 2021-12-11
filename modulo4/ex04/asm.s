.section .data
	
.section .text
	.global sum_smaller #int sum_smaller(int num1, int num2, int *smaller)

#return the subtraction of two numbers (num1-num2), and place the smaller of the two in the memory area pointed to by smaller.

sum_smaller:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %eax
	movl 12(%ebp), %ebx
	movl 16(%ebp), %edi
	
	cmpl %ebx, %eax 
	jge num1_greater
	jmp num2_greater

	num1_greater:
	movl %ebx, (%edi)
	jmp sum

	num2_greater:
	movl %eax, (%edi)
	
	sum:
	addl %ebx, %eax

	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	#popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret


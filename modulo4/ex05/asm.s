.section .data
	
.section .text
	.global inc_and_square #int inc_and_square(int *v1, int v2)

#decrements by one the value pointed to by v1 and returns the square of v2.

inc_and_square:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	#pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %edi
	movl 12(%ebp), %ecx
	
	incl (%edi)

	movl %ecx, %eax

	imull %ecx, %eax

	

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


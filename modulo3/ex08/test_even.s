.section .data

	.global ptrvec
	.global num
	.global even
	
.section .text

	.global test_even		# int test_even(void)
			
	
	test_even:
	
		pushl %ebp			# save previous stack frame pointer
		movl %esp, %ebp		# the stack frame pointer to vec_sum_even
		pushl %esi
		pushl %edi
	
		movl even, %eax
		cdq
		movl $2, %ecx		# the divisor
		movl $1, %esi		# for cmov purposes
		movl $0, %edi		# for cmov purposes
		
		idivl %ecx
		
		cmpl $0, %edx
		cmove %esi, %eax
		cmovne %edi, %eax
		
		popl %edi
		popl %esi
		movl %ebp, %esp		# restore the previous stack frame pointer ("clear the stack")
		popl %ebp			# restore the previous stack frame pointer
		ret
		
		
		

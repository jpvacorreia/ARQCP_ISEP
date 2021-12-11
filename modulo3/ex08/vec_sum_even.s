.section .data

	.global ptrvec
	.global num
	.global even
	
.section .text

	.global vec_sum_even	# int vec_sum_even(void)
	
	vec_sum_even:
		
		# prologue
		pushl %ebp			# save previous stack frame pointer
		movl %esp, %ebp		# the stack frame pointer to vec_sum_even
		pushl %ebx
		pushl %esi
		
		movl ptrvec, %edx
		movl num, %ecx		# loop counter
		movl $0, %ebx		# placeholder sum value while eax is used for test_even results
		
		cmpl $0, %ecx
		je end_loop
		
	vec_loop:
	
		movl (%edx), %esi
		movl %esi, even
	
		# not safeguarding eax due to the fact that I need its result from test_even
		pushl %ecx			# safeguard our loop counter
		pushl %edx			# safeguard our vector pointer
		call test_even
		popl %edx
		popl %ecx		
		
		cmpl $1, %eax
		jne continue_loop

		addl (%edx), %ebx
		
	continue_loop:
	
		addl $4, %edx
		loop vec_loop
		
	end_loop:
	
		movl %ebx, %eax
	
		# epilogue
		popl %esi
		popl %ebx
		movl %ebp, %esp		# restore the previous stack frame pointer ("clear the stack")
		popl %ebp			# restore the previous stack frame pointer
		ret
		
	

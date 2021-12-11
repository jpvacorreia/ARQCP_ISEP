.section .data
	
.section .text
	.global count_even #int count_even(short *a, int n);

# detects if two strings are equal. If the strings are equal, the function should return 1, or 0 otherwise.

count_even:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Space for local variable
	subl $4, (%esp)	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %edi  # vector of numbers
	movl 12(%ebp), %esi	# n
	movl $0, -4(%ebp) # zero out local variable (number of even numbers)
	

	cmpl $0, %esi 		# check if n = 0;
	je end

	# zero out
	movl $0, %ecx	# counter < n
	movl $0, %eax	# zero out %eax to use in idiv
	movl $2, %ebx	# 2 to %ebx to check if even
	movl $0, %edx 	# will be used in the division

		
	compare:
		cmpl %ecx, %esi # check if end of vector
		je end
		
		movw (%edi), %ax # get vector[i] into %ax
		movsxw %ax, %eax
		#cwd				# convert word to double	
		cdq				# convert double to quad
		
		divl %ebx		# division between %eax and %ebx
		
		cmpl $0, %edx 	# check if remainder = 0 (even)
		jz continue		

		addl $2, %edi	# increment vector pointer
		incl %ecx		# increment counter
		
		jmp compare 	# loop

		continue:
			addl $1, -4(%ebp)			
			addl $2, %edi		# increment vector pointer
			incl %ecx		# increment counter

			jmp compare		# loop
		


	end:
	movl $0, %eax
	movl -4(%ebp), %eax
	
	# Restore Regsiters
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret


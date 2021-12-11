.section .data
	.global ptrvec #short int ptr
	.global num    # int
	.global x      #short int 

.section .text
	.global exists    #int void
	.global vec_diff  #int void

#tests if the short int x exists more than once in the array of short int elements pointed by ptrvec with num elements. The function should return 1 if short int x has duplicates or 0 if not.
#Use the previous function to implement a function int vec_diff(void) that computes the number of elements in the array of short int elements pointed by ptrvec that do not have duplicates.


exists:

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	

	movl ptrvec, %edi	# move pointer to %edi
	movl num, %ecx		# move number of elements to counter %ecx
	movl $0, %ebx		# zero out
	movw x, %bx			# move x to %bx
	movl $0, %eax		# zero out %eax (return)
	movl $0, %edx		# zero out
	cmpl $0, %ecx		# check if vector is not empty
	je end_exists		# jump end if empty


	loop:
		movw (%edi), %ax	# save pointed by (from vector) to %ax
		cmpw %bx, %ax		# compare x with pointed by
		jne continue		# 
		incl %edx			# increment counter of the value pointed by (repeated number)
		continue:
			addl $2, %edi  	# increment vector pointer

	
		loopne loop
	
	movl $0, %eax		# saves zero on return register
	cmpl $2, %edx		# checks the counter with 2 
	jl end_exists		# jump end if lower than 2, thus returning 0
	addl $1, %eax		# saves 1 on return register 

	end_exists:
	# Restore Registers
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret
	
	
vec_diff:
	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	###########################################################
	# Save Registers
	######################################################
	pushl %ebx
	pushl %esi
	pushl %edi
	######################################################
	
	movl $0, %eax		# zero %eax
	movl num, %ecx		# save number of elements in %ecx
	cmpl $0, %ecx		# check if vector is empty		
	je end_vec_diff		# jump if vector.length = 0
	movl ptrvec, %edi	# move vector pointer to %edi
	
	movl $0, %ebx		# zero out
	movl $0, %edx		# zero out
	

	run_vec:
		movw (%edi), %dx	# move pointed by to %dx
		movw %dx, x			# %dx to pointed by x that will be used in exists()
			pushl %ecx		# save reg
			pushl %edx		# save reg
				call exists
			popl %edx		# pop reg
			popl %ecx		# pop reg
		
		cmpl $1, %eax	# checks if exists() return is 1 
		je duplicate	# jump if equal to 1
		incl %ebx		# increments number of not repeated numbers
		
		duplicate:
		decl %ecx		# decreases vector length counter
		addl $2, %edi	# increments the pointer to the next 

	cmp $0, %ecx		# checks if vector counter has finished searching the vector
	jne run_vec			# loop until vector counter = 0

	movl %ebx, %eax		# returns number of non repeater numbers


	end_vec_diff:
	# Restore Registers
	######################################################
	popl %edi
	popl %esi
	popl %ebx
	######################################################
	
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret




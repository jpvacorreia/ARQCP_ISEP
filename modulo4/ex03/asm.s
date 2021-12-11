.section .data
	
.section .text
	.global greatest  #int smallest(int a, int b, int c)


#returns the smaller of three integer numbers (passed as parameters).

greatest :

	#prologue
	pushl %ebp       # save previous stack frame pointer
	movl %esp, %ebp  # the stack frame pointer for sum function
	# Save Registers
	######################################################
	pushl %ebx
	#pushl %esi
	pushl %edi
	######################################################
	movl 8(%ebp), %ebx	# first parameter
	movl 12(%ebp), %ecx # second parameter
	movl 16(%ebp), %edi # third parameter

	compare_a_b:
	cmpl %ecx, %ebx
	jge compare_a_c
	jmp compare_b_c


	compare_a_c:
	cmpl %edi, %ebx
	jge greater_a
	jmp greater_c

	compare_b_c:
	cmpl %edi, %ecx
	jge greater_b
	jmp greater_c
	
	greater_a:
	movl %ebx, %eax
	jmp end

	greater_b:
	movl %ecx, %eax
	jmp end

	greater_c:
	movl %edi, %eax

	end:
	# Restore Regsiters
	######################################################
	popl %edi
	#popl %esi
	popl %ebx
	######################################################
	# epilogue
	movl %ebp, %esp  #  restore the previous stack pointer ("clear" the stack)
	popl %ebp        #  restore the previous stack frame pointer
	ret



# #########################
	# caller-save temporaries

	# pushl %eax # save %eax on stack
	# pushl %edx # save %edx on stack
	# pushl %ecx # save %ecx on stack


	# popl %ecx # restore %ecx
	# popl %edx # restore %edx
	# popl %eax # restore %eax
# #########################

.section .data 

.section .text 
	.global greater_date #void changes(int *ptr):
	
#inverts the 4 least significative bits of the second byte of an integer, but only when the value of those 4 bits is greater than 7.
changes:  #void changes(int *ptr):
	# prologue 
	pushl %ebp # save previous stack frame pointer 
	movl %esp, %ebp # the stack frame pointer for sum function

	pushl %ebx # save %ebx on stack
	pushl %esi # save %esi on stack
	pushl %edi # save %edi on stack

	movl 8(%ebp), %ebx  #ebx is date1
	movl 12(%ebp), %esi  #esi is date2


	andl $0xFFFF, %esi
	andl $0xFFFF, %ebx

	cmpl %esi, %ebx
	jle maybe_year2
	jg date1

	maybe_year2:
		
		cmpl %esi, %ebx
		jl date2

	compare_month:
		movl 8(%ebp), %ebx
		movl 12(%ebp), %esi

		shrl $24, %ebx
		shrl $24, %esi

		andl $0xFF, %ebx
		andl $0xFF, %esi

		cmpl %esi, %ebx
		jle maybe_month2
		jmp date1

	maybe_month2:
		cmpl %esi, %ebx
		jl date2

	compare_day:
		movl 8(%ebp), %ebx
		movl 12(%ebp), %esi

		shrl $16, %ebx
		shrl $16, %esi

		andl $0xFF, %ebx
		andl $0xFF, %esi

		cmpl %esi, %ebx
		jle maybe_day2
		jmp date1

	maybe_day2:
	cmpl %esi, %ebx
	jl date2

	date1:
	movl  8(%ebp), %eax
	jmp end

	date2:
	movl 12(%ebp), %eax

	end:
	popl %edi # restore %edi
	popl %esi # restore %esi
	popl %ebx # restore %ebx
	
	# epilogue 
	movl %ebp, %esp # restore the previous stack pointer ("clear" the stack) 
	popl %ebp		# restore the previous stack frame pointer 
	ret

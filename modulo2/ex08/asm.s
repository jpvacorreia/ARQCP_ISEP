.section .data
s1:
.short 2;
s2:
.short 2;


.global s1
.global s2

#.global CONST
.section .text
.global crossSumBytes # short crossSumBytes()


crossSumBytes:
# prologue
pushl %ebp # save previous stack frame pointer
movl %esp, %ebp # the stack frame pointer for sum function
# program
movl $0, %eax # places 0 to %eax
movw s1, %cx # places s1 to cx
movw s2, %dx # places s2 to dx

addb %cl, %dh # adds ch to dl (s1low to s2high)
movb %dh, %al # places dh to al 

addb %ch, %dl # adds ch to dl (s1high to s2low)
movb %dl, %ah # places dl to ah

# epilogue
movl %ebp, %esp # restore the previous stack pointer ("clear" the stack)
popl %ebp # restore the previous stack frame pointer
ret



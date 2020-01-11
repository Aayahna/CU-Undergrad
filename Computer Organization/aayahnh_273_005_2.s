/*  NAME    Aayahna Herbert
    COURSE  ECE 273
    SECTION 005
    DATE    02.01.17
    FILE    aayahnh_273_005_2.s
    PURPOSE 
    
*/

/* begin assembly stub */

/* Function dodiff
   PURPOSE  add the squares of 'digits' 1, 2, and 3 and save the result in 'diff'
*/

.globl dodiff
.type dodiff, @function
dodiff:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp

    movl digit1, %eax
    mull %eax               # %eax = digit1 * digit1
    movl %eax, %ebx         # copy register a into register b
    movl digit2, %eax       # copy digit2 into register a
    mull %eax               # %eax = digit2 * digit2
    movl %eax, %ecx         # copy register a into register c
    movl digit3, %eax       # copy digit3 into register a
    mull %eax               # %eax = digit3 * digit3
    movl %eax, %edx         # copy register a into register d
    addl %ebx, %ecx         # add b into c; store in c
    subl %edx, %ecx         # subtract d from c; store in c
    movl %ecx, diff         # copy c into 'diff'


    /* epilog */
    movl %ebp, %esp
    popl %ebx
    popl %ebp
    ret

/* Function dosumprod
   PURPOSE  add the 3 'digits' and put it into 'sum'; multiply the three 'digits'  and save them into 'product'
*/

.globl dosumprod
.type dosumprod, @function
dosumprod:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp


    movl digit1, %eax       # copy digit1 into register a
    addl digit2, %eax       # add digit2 to register a
    addl digit3, %eax       # add digit3 to register a
    movl %eax, sum          # move A into 'sum'
    movl $0, %eax           # clear A register
    movl digit1, %eax       # copy 'digit1' into a
    mull digit2             # multiply A by 'digit2'
    mull digit3             # multiply A by 'digit3'
    movl %eax, product      # copy a into 'product'
    
    /* epilog */
    movl %ebp, %esp
    popl %ebx
    popl %ebp
    ret

/* Function doremainder
   PURPOSE  take the remainder of product/sum and save it into 'remainder'
*/

.globl doremainder
.type doremainder, @function
doremainder:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp

    movl $0, %edx           # clear the D register
    movl product, %eax      # copy 'product' into register a
    divl sum                # perform the division
    movl %edx, remainder    # copy %edx into remainder
    
    /* epilog */
    movl %ebp, %esp
    popl %ebx
    popl %ebp
    ret

.comm digit1, 4         # reserve 4B for 'digit1'
.comm digit2, 4         # reserve 4B for 'digit2'
.comm digit3, 4         # reserve 4B for 'digit3'
.comm diff, 4           # reserve 4B for 'diff'
.comm sum, 4            # reserve 4B for 'sum'
.comm product, 4        # reserve 4B for 'product'
.comm remainder, 4      # reserve 4B for 'remainder'

/* end assembly stub */
/* Do not forget the required blank line here! */



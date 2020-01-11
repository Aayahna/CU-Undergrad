/*  NAME    Aayahna Herbert
    COURSE  ECE 273
    SECTION 005
    DATE    03.08.17
    FILE    aayahnh_273_005_5.s
    PURPOSE Compose assembly code that calculates the Fibonacci sequence of
            length "n+1" given "n". We will do this by using subroutines
            and stacks.
 */

/* begin assembly stub */

.globl Factorial
.type Factorial,@function

Factorial:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp
    subl $4, %esp

    /* put code here */
    movl 12(%ebp), %ecx              # move 'n' from stack
    
    #if (n == 0 || n == 1) {return 1;}
    cmp $0, %ecx
    je returnone
    cmp $1, %ecx
    je returnone
    
    movl %ecx, -4(%ebp)             # store 'n' locally

    # return n * Factorial(n-1)
    subl $1, %ecx
    pushl %ecx
    call Factorial
    movl -4(%ebp), %ecx             # move return
    mull %ecx
    jmp return

    returnone:
        movl $1, %eax

    return:
        /* epilog */
        movl %ebp, %esp
        popl %ebx
        popl %ebp
        ret

/* end assembly stub */

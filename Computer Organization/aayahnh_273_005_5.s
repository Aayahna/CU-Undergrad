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

.globl Fib
.type Fib,@function
Fib:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp
    subl $8, %esp

    /* put code here */
    movl global_var, %eax
    movl %eax, -4(%ebp)         ## local_var = global_var;
    cmpl $0, -4(%ebp)           ## if(local_var == 0) return;
    je return
    cmpl $1, -4(%ebp)           ## if(local_var == 1) return;
    je return
    
    movl -4(%ebp), %eax         ## global_var = local_var - 1;
    subl $1, %eax              
    movl %eax, global_var
    call Fib                    ## Fib();
    movl global_var, %eax       ## temp_var = global_var;
    movl %eax, -8(%ebp)
    movl -4(%ebp), %eax         ## global_var = local_var - 2;
    subl $2, %eax
    movl %eax, global_var
    call Fib                    ## Fib();
    movl -8(%ebp), %eax         ## temp_var = temp_var + global_var;
    movl global_var, %ebx
    addl %ebx, %eax
    movl %eax, -8(%ebp)
    movl -8(%ebp), %ebx         ## global_var = temp_var;
    movl %ebx, global_var
    
    return:
        /* epilog */
        movl %ebp, %esp
        popl %ebx
        popl %ebp
        ret

/* end assembly stub */


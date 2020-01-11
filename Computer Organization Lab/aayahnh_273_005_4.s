/*  NAME    Aayahna Herbert
    COURSE  ECE 273
    SECTION 005
    DATE    02.22.17
    FILE    aayahnh_273_005_4.s
    PURPOSE Apply addressing modes to implement arrays, pointers, and data structures
 */

/* begin assembly stub */

.globl AtoI
.type AtoI,@function 
AtoI:
    /* prolog */
    pushl %ebp
    movl %esp, %ebp
    pushl %ebx
    pushl %esi
    pushl %edi

    /* put code here */
    movl $1, sign

    ## while (*ascii == ' ' || *ascii == '\t') ascii++
    SpaceCheck:
        movl ascii, %eax
        cmpb $32, (%eax)
        jne TabCheck
        addl $1, ascii
        jmp SpaceCheck

    TabCheck:
        movl ascii, %eax
        cmpb $9, (%eax)
        jne PlusCheck
        addl $1, ascii
        jmp SpaceCheck

    ## if (*ascii == '+') ascii++
    PlusCheck:
        movl ascii, %eax
        cmpb $43, (%eax)
        jne MinusCheck
        addl $1, ascii
    
    ## else if (*ascii == '-') {sign = -1; ascii++;}
    MinusCheck:
        movl ascii, %eax
        cmpb $45, (%eax)
        jne FinishedChecking
        movl $-1, sign
        addl $1, ascii

    FinishedChecking:
        movl intptr, %eax
        movl $0, (%eax)
        movl $0, i

    ## for (i = 0; ascii[i] <= '0' && ascii[i] <= '9'; i++);
    ForLoop1:
        movl $0, %eax
        movl ascii, %ebx
        movl i, %esi
        movb (%ebx, %esi, 1), %al
        cmpb $48, %al
        jl ExitLoop1
        cmpb $57, %al
        jg ExitLoop1
        addl $1, i
        jmp ForLoop1

    ## i--; multiplier = 1;
    ExitLoop1:
        addl $-1, i
        movl $1, multiplier

    ## for(; i>=0 ; i--) {*intptr += multiplier * (ascii[i] - '0'); multiplier *= 10;}
    ForLoop2:
        cmpl $0, i
        jl ExitLoop2
        movl $0, %ecx
        movl ascii, %ebx
        movl i, %esi
        movl $0, %eax
        movb (%ebx, %esi, 1), %al
        subb $48, %al
        mull multiplier
        movl intptr, %ebx
        addl %eax, (%ebx)
        movl multiplier, %eax
        movl $10, %edx
        mull %edx
        movl %eax, multiplier
        addl $-1, i
        jmp ForLoop2

    ExitLoop2:
        movl intptr, %ebx
        movl (%ebx), %eax
        mull sign
        movl %eax, (%ebx)

    return:
        /* epilog */
        popl %edi
        popl %esi
        popl %ebx
        movl %ebp, %esp
        popl %ebp
        ret

/* end assembly stub */


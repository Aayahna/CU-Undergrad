/*  NAME    Aayahna Herbert
    COURSE  ECE 273
    SECTION 005
    DATE    02.08.17
    FILE    aayahnh_273_005_3.s
    PURPOSE Learn how to do conditionals and loops using jumps, flags, and labels
*/

/* begin assembly stub */

.globl classify
.type classify,@function

classify:
    /* prolog */
    pushl %ebp
    pushl %ebx
    movl %esp, %ebp

    /* put code here */
    #if (i ==0 || j == 0 || k == 0)
    movl i, %eax
    cmpl $0, %eax
    je level1
    movl j, %ebx
    cmpl $0, %ebx
    je level1
    movl k, %ecx
    cmpl $0, %ecx
    je level1

    level1:
        movl $0, tri_type   # can't be a triangle
        jmp return

    #count matching sides
    movl $0, match

    #if (i == j)
    movl i, %eax
    cmpl j, %eax            # compare j to i
    jne match2
    addl $1, match          # match += 1

    match2:
        #if (i == k)
        cmpl k, %eax        # compare k to i
        jne match3
        addl $2, match      # match += 2

    match3:
        #if (j == k)
        movl j, %eax
        cmpl k, %eax        # compare k to j
        jne iflevel1_1
        addl $3, match      # match += 3

    iflevel1_1:
        #if (match)
        movl match, %eax
        cmpl $0, %eax       # compare 0 with match
        je iflevel1_2       # if match=0 then skip
        
        #if (match == 1)
        cmpl $1, %eax       # compare 1 with match
        jne elselevel2      # if match!=1 go to else level of conditional

        #if ((i+j) <= k)
        movl i, %ebx
        addl j, %ebx
        cmpl k, %ebx        # compare k to i+j
        jg iflevel1end      # if (i+j) > k go to go the end of first level
        movl $0, tri_type   # not a triangle
        jmp return

    elselevel2:
        #if (match != 2)
        cmpl $2, %eax       # compare 2 to match
        je elselevel3       # if match=2 go to 3rd level else statement

        #if (match == 6)
        cmpl $6, %eax       # compare 6 to match
        jne elselevel4      # if not equal skip and go to level 4 else
        movl $1, tri_type   # equilateral triangle
        jmp return

    elselevel4:
        #if ((j+k) <= i)
        movl j, %ebx
        addl k, %ebx
        cmpl i, %ebx        # compare i to (j+k)
        jg iflevel1end      # if greater skip the rest & go to end of level1
        movl $0, tri_type   # not a triangle
        jmp return

    elselevel3:
        #if ((i+k) <= j)
        movl i, %ebx
        addl k, %ebx
        cmpl j, %ebx        # compare j to (i+k)
        jg iflevel1end      # if greater skip the rest & go to end of level1
        movl $0, tri_type   # not a triangle
        jmp return

    iflevel1end:
        movl $2, tri_type   # isosceles triangle
        jmp return

    iflevel1_2:
        #if ((i+j) <= k || (j+k) <= i || (i+k) <= j)
        movl i, %ebx
        addl j, %ebx
        cmpl k, %ebx        # compare k to (i+j)
        jle codelevel1_2
        movl j, %ecx
        addl k, %ecx
        cmpl i, %ecx        # compare i to (j+k)
        jle codelevel1_2
        movl i, %edx
        addl k, %edx
        cmpl j, %edx        # compare j to (i+k)
        jle codelevel1_2
        movl $3, tri_type   # scalene triangle
        jmp return

    codelevel1_2:
        movl $0, tri_type   # not a triangle
        jmp return


return:
    /* epilog */
    movl %ebp, %esp
    popl %ebx
    popl %ebp
    ret

/* declare variables here */
.comm match, 4

/* end assembly stub */


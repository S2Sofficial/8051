; Indirect Addressing - Pointer Increment Behavior
; Demonstrates pointer increment effect on indirect access
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 70H, #33H
    MOV 71H, #44H

    MOV R0, #70H
    MOV A, @R0        ; Read 70H
    INC R0
    MOV A, @R0        ; Read 71H

HERE:
    SJMP HERE

END

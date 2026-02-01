; Stack Operations - Subroutine Parameter Passing
; Passes parameter to subroutine using stack
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV SP, #2FH

    MOV A, #09H
    PUSH ACC          ; Push parameter
    LCALL SUB_ROUTINE
    POP ACC           ; Clean up stack

HERE:
    SJMP HERE

SUB_ROUTINE:
    POP ACC           ; Retrieve parameter
    INC A             ; Simple operation on parameter
    PUSH ACC          ; Push result back
    RET

END

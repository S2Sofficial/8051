; Stack Operations - Basic PUSH and POP
; Demonstrates PUSH and POP operations using internal RAM stack
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV SP, #2FH      ; Initialize stack pointer

    MOV A, #55H
    PUSH ACC          ; Push accumulator onto stack

    MOV A, #00H       ; Clear accumulator
    POP ACC           ; Restore accumulator from stack

HERE:
    SJMP HERE

END

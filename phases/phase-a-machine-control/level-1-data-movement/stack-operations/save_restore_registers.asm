; Stack Operations - Save and Restore Registers
; Saves register values on stack and restores them
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV SP, #2FH

    MOV R1, #12H
    MOV R2, #34H

    PUSH 01H          ; Push R1
    PUSH 02H          ; Push R2

    MOV R1, #00H
    MOV R2, #00H

    POP 02H           ; Restore R2
    POP 01H           ; Restore R1

HERE:
    SJMP HERE

END


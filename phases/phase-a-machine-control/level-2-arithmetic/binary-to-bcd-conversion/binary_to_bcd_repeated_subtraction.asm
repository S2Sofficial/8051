; Binary to BCD - Repeated Subtraction
; Converts binary to BCD by subtracting 10 repeatedly
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #37H        ; Binary input = 55
    MOV R1, #00H       ; Tens
    MOV R2, #00H       ; Ones

SUB_LOOP:
    CLR C
    SUBB A, #0AH
    JC DONE
    INC R1
    SJMP SUB_LOOP

DONE:
    ADD A, #0AH
    MOV R2, A          ; Ones digit

    MOV A, R1
    SWAP A
    ORL A, R2          ; Packed BCD in A

HERE:
    SJMP HERE

END

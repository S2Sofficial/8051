; 16-bit Division - Divide by Zero Handling
; Detects divisor = 0 and halts safely
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; Dividend = 1234H
    MOV R0, #34H
    MOV R1, #12H

    ; Divisor = 0000H
    MOV R2, #00H
    MOV R3, #00H

    MOV A, R2
    ORL A, R3
    JZ DIV_ZERO       ; If divisor == 0

    SJMP HERE

DIV_ZERO:
    SJMP DIV_ZERO     ; Trap

HERE:
    SJMP HERE

END

; Division by Zero Check
; Detects division by zero and halts safely
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #25H      ; Dividend
    MOV R1, #00H      ; Divisor = 0

    MOV A, R1
    JZ DIV_ZERO       ; If divisor is zero, jump

    SJMP HERE         ; Normal division skipped here

DIV_ZERO:
    SJMP DIV_ZERO     ; Trap execution

HERE:
    SJMP HERE

END

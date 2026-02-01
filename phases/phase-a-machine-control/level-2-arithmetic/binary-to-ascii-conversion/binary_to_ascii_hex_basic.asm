; Binary to ASCII - Hex Basic
; Converts an 8-bit binary value to two ASCII hex characters
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV A, #3AH        ; Binary input
    MOV R0, A

    ; High nibble
    ANL A, #0F0H
    SWAP A
    ACALL NIBBLE_TO_ASCII
    MOV R1, A          ; ASCII high nibble

    ; Low nibble
    MOV A, R0
    ANL A, #0FH
    ACALL NIBBLE_TO_ASCII
    MOV R2, A          ; ASCII low nibble

HERE:
    SJMP HERE

; ----------------------------
NIBBLE_TO_ASCII:
    CJNE A, #0AH, DIGIT
    SJMP LETTER

DIGIT:
    JC NUM
LETTER:
    ADD A, #37H        ; 'A' - 10
    RET

NUM:
    ADD A, #30H        ; '0'
    RET
; ----------------------------

END

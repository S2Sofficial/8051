; ASCII to Binary - Hex Basic
; Converts two ASCII hex characters into one binary byte
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV R0, #'3'       ; High nibble ASCII
    MOV R1, #'A'       ; Low nibble ASCII

    MOV A, R0
    ACALL ASCII_TO_NIBBLE
    SWAP A
    MOV R2, A          ; High nibble shifted

    MOV A, R1
    ACALL ASCII_TO_NIBBLE
    ORL A, R2          ; Combine nibbles

HERE:
    SJMP HERE

; ----------------------------
ASCII_TO_NIBBLE:
    CJNE A, #'9'+1, CHECK_ALPHA
    JC IS_DIGIT

CHECK_ALPHA:
    ANL A, #0DFH       ; Convert lowercase to uppercase
    ADD A, #0C9H       ; 'A' → 0AH
    RET

IS_DIGIT:
    ADD A, #0D0H       ; '0' → 00H
    RET
; ----------------------------

END

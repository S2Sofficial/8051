; Indirect Addressing - Read via R0
; Reads data from internal RAM using R0 as pointer
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 30H, #7AH     ; Initialize internal RAM
    MOV R0, #30H      ; Load pointer
    MOV A, @R0        ; Read data via indirect addressing

HERE:
    SJMP HERE

END

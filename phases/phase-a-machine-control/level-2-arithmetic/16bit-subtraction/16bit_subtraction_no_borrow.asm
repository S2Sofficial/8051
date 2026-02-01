; 16-bit Subtraction - No Borrow
; Subtracts two 16-bit numbers without borrow across MSB
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; First number = 3456H
    MOV R0, #56H      ; LSB
    MOV R1, #34H      ; MSB

    ; Second number = 1122H
    MOV R2, #22H      ; LSB
    MOV R3, #11H      ; MSB

    CLR C             ; Clear borrow before subtraction

    ; LSB subtraction
    MOV A, R0
    SUBB A, R2
    MOV R4, A         ; Result LSB

    ; MSB subtraction
    MOV A, R1
    SUBB A, R3
    MOV R5, A         ; Result MSB

HERE:
    SJMP HERE

END

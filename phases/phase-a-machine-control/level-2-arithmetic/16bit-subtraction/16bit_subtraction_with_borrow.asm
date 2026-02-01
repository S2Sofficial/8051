; 16-bit Subtraction - With Borrow Propagation
; Subtracts two 16-bit numbers with borrow from LSB to MSB
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    ; First number = 1000H
    MOV R0, #00H      ; LSB
    MOV R1, #10H      ; MSB

    ; Second number = 0001H
    MOV R2, #01H      ; LSB
    MOV R3, #00H      ; MSB

    CLR C             ; Clear initial borrow

    ; LSB subtraction
    MOV A, R0
    SUBB A, R2
    MOV R4, A         ; Result LSB (borrow generated)

    ; MSB subtraction with borrow
    MOV A, R1
    SUBB A, R3
    MOV R5, A         ; Result MSB

HERE:
    SJMP HERE

END

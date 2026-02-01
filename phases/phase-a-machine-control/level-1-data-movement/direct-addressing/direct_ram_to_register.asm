; Direct RAM to Register Transfer
; Transfers data from internal RAM location to register
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 50H, #9CH     ; Initialize RAM location
    MOV A, 50H        ; Load RAM data into accumulator
    MOV R4, A         ; Transfer to register

HERE:
    SJMP HERE

END

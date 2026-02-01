; Direct Addressing - Internal RAM
; Moves data between accumulator and a fixed internal RAM address
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV 30H, #66H     ; Write immediate data to internal RAM address 30H
    MOV A, 30H        ; Read data from internal RAM into accumulator
    MOV 31H, A        ; Store accumulator value to another RAM location

HERE:
    SJMP HERE

END

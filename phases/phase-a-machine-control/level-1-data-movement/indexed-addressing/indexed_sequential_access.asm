; Indexed Addressing - Sequential Table Access
; Reads multiple values from code memory using accumulator index
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV DPTR, #TABLE

    MOV A, #00H
    MOVC A, @A+DPTR   ; Read TABLE[0]

    MOV A, #01H
    MOVC A, @A+DPTR   ; Read TABLE[1]

    MOV A, #02H
    MOVC A, @A+DPTR   ; Read TABLE[2]

HERE:
    SJMP HERE

TABLE:
    DB 0AAH, 0BBH, 0CCH

END

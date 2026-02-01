; Indexed Addressing - Lookup Table
; Implements a lookup table using code memory constants
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    MOV DPTR, #SEG_TABLE
    MOV A, #03H
    MOVC A, @A+DPTR   ; Fetch table value

HERE:
    SJMP HERE

SEG_TABLE:
    DB 3FH, 06H, 5BH, 4FH, 66H

END

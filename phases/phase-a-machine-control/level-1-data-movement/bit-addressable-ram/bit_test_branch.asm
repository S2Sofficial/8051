; Bit-Addressable RAM - Bit Test and Branch
; Tests a bit and branches conditionally
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB 22H.5        ; Set test bit

    JB 22H.5, BIT_SET ; Jump if bit is set
    SJMP HERE

BIT_SET:
    CLR 22H.5         ; Clear bit after detection

HERE:
    SJMP HERE

END

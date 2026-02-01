; Bit-Addressable RAM - Bit Set and Clear
; Sets and clears individual bits in bit-addressable RAM area
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    CLR 20H.0         ; Ensure bit is cleared
    SETB 20H.0        ; Set bit 0 of byte 20H
    CLR 20H.0         ; Clear bit again

HERE:
    SJMP HERE

END

; Bit-Addressable RAM - Bit Test and Clear
; Tests a bit and clears it atomically using JBC
; Author - Swaroop Kumar Yadav

ORG 0000H

START:
    SETB 23H.2        ; Set bit

    JBC 23H.2, BIT_HIT ; Jump if bit set and clear it
    SJMP HERE

BIT_HIT:
    SJMP HERE

END

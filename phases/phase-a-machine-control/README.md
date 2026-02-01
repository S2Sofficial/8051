# Phase A — Machine Control (Levels 1–4)

This phase focuses on low-level control of data, flags, and internal CPU state in the 8051.

---

## Level 1 — Data Movement & Addressing Modes
📁 [`level-1-data-movement`](./level-1-data-movement)

**Contains:**
- Register-to-register and accumulator data transfers
- Direct addressing of internal RAM locations
- Indirect addressing using R0 and R1
- Indexed addressing with DPTR and MOVC
- Block data copy operations
- Stack operations using PUSH and POP
- Bit-addressable memory operations (20H–2FH)

---

## Level 2 — Arithmetic Operations
📁 [`level-2-arithmetic`](./level-2-arithmetic)

**Contains:**
- 8-bit and 16-bit addition with carry propagation
- 8-bit and 16-bit subtraction with borrow handling
- BCD addition and subtraction using DA instruction
- Multiplication using repetitive addition
- Division using repetitive subtraction
- Multi-byte multiplication and division
- Signed arithmetic using Booth’s algorithm
- Binary, BCD, and ASCII numeric conversions

---

## Level 3 — Logical Operations & Bit Manipulation
📁 [`level-3-logical-ops`](./level-3-logical-ops)

**Contains:**
- Bit set, clear, and toggle operations
- Bit testing and conditional branching
- Nibble swapping using SWAP instruction
- Bit rotations with and without carry
- Parity-based data validation
- Bit counting and bit reversal algorithms
- Logical masking using AND, OR, and XOR

---

## Level 4 — Flags & Program Status Word (PSW)
📁 [`level-4-psw-flags`](./level-4-psw-flags)

**Contains:**
- Carry, auxiliary carry, overflow, and parity flag behavior
- Signed and unsigned arithmetic flag analysis
- Register bank selection using RS0 and RS1
- User-defined flag (F0) usage
- Multi-precision arithmetic using PSW flags

---

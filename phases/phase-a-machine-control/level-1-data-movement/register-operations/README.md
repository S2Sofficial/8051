# Problem Statement

## Title
Register Operations — Data Transfer Between Registers and Accumulator

## Objective
Implement fundamental data movement operations between general-purpose registers and the accumulator using 8051 assembly instructions, without altering unintended CPU state.

## Inputs
- General-purpose registers (R0–R7) from the currently active register bank
- Accumulator (A)
- Preloaded register values in internal RAM

## Outputs
- Correctly transferred data in destination register(s)
- Accumulator reflecting expected value after transfer
- Memory contents unchanged unless explicitly used as source

## Functional Requirements
- Transfer data from one register to another using the accumulator as an intermediate where required
- Transfer data between accumulator and registers
- Support transfers within the same register bank
- Ensure no unintended modification of unrelated registers or memory locations

## Constraints
- Use only data movement instructions (`MOV`)
- No arithmetic or logical instructions permitted
- No use of direct or indirect memory addressing
- No use of DPTR
- Register bank switching is not allowed

## Flags & Side Effects
- Carry flag must remain unaffected
- Auxiliary carry flag must remain unaffected
- Overflow flag must remain unaffected
- Parity flag behavior must be observed and documented
- PSW register bank selection bits must remain unchanged

## Edge Cases
- Transfer when source register contains `00H`
- Transfer when source register contains `FFH`
- Sequential transfers involving the same destination register
- Back-to-back accumulator overwrites

## Validation Criteria
- Destination register contains exact source value after execution
- Accumulator state matches expected outcome
- No unintended changes in PSW flags except parity
- Simulator register view confirms correct data flow step-by-step

## Notes
- Initial register values are assumed to be preloaded before execution
- Execution is validated exclusively using the 8051 Simulator

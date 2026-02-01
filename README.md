# 🎛️ 8051 Assembly Language Projects & Simulator Repository

![8051 ALP Projects](https://github.com/user-attachments/assets/b84dd675-0be5-436d-a724-06f82726c913)

A curated collection of **pure 8051 assembly language programs**, simulations, and system-level microcontroller implementations.  
This repository treats the 8051 not as a legacy MCU, but as a **transparent machine for mastering low-level computation**.

[![GitHub last commit](https://img.shields.io/github/last-commit/s2sofficial/8051)](https://github.com/s2sofficial/8051)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![GitHub stars](https://img.shields.io/github/stars/s2sofficial/8051?style=social)

---

## 🧠 8051 Simulator — Core of This Repository

This repository is tightly integrated with a **web-based 8051 Assembly Language Simulator**, built to execute, debug, and analyze programs written for the Intel 8051 architecture.

🔗 **Live Simulator**  
https://8051sim.vercel.app  

### What the Simulator Enables
- Write and execute 8051 assembly code directly in the browser
- Step-by-step execution with register, flag, and memory visibility
- Observe PSW, carry, overflow, and parity behavior in real time
- Validate timing-sensitive logic before hardware deployment
- Learn instruction-level effects without relying on physical kits

### How This Repository Uses the Simulator
- Every checklist item is intended to be:
  - Implemented in pure 8051 assembly
  - Tested inside the simulator
  - Verified for flags, memory, and control-flow behavior
- Projects follow a **simulator-first, hardware-second** discipline

This simulator is not a demo tool.  
It is the **primary execution and verification environment** for this repository.

---

## 📌 Repository Structure & Usage

- Each phase and level represents a **self-contained assembly project**
- No external libraries, HALs, or abstraction layers
- Every program is:
  - Deterministic
  - Flag-aware
  - Cycle-accounted
- The checklist doubles as an execution roadmap

---

## Phase A — Machine Control (Levels 1–4)
> Primary validation environment: **8051 Simulator**

<details>
<summary><strong>Level 1: Data Movement & Addressing Modes</strong></summary>

 - [x] [Register Operations](phases/phase-a-machine-control/level-1-data-movement/register-operations) — Data transfer between registers and accumulator-based operations  
 - [x] [Direct Addressing](phases/phase-a-machine-control/level-1-data-movement/direct-addressing) — Move data to and from fixed internal RAM addresses  
 - [x] [Indirect Addressing](phases/phase-a-machine-control/level-1-data-movement/indirect-addressing) — Use R0/R1 as pointers to access internal RAM  
 - [x] [Indexed Addressing](phases/phase-a-machine-control/level-1-data-movement/indexed-addressing) — Access lookup tables in code memory using DPTR and MOVC  
 - [x] [Block Data Transfer](phases/phase-a-machine-control/level-1-data-movement/block-data-transfer) — Copy a block of data from one memory region to another  
 - [x] [Stack Operations](phases/phase-a-machine-control/level-1-data-movement/stack-operations) — PUSH/POP usage, stack growth behavior, subroutine parameter passing  
 - [x] [Bit Addressable RAM](phases/phase-a-machine-control/level-1-data-movement/bit-addressable-ram) — Manipulate individual bits in the 20H–2FH address range  

</details>

<details>
<summary><strong>Level 2: Arithmetic Operations</strong></summary>

 - [x] [8-bit Addition](phases/phase-a-machine-control/level-2-arithmetic/8bit-addition) — Perform addition with carry flag handling  
 - [x] [16-bit Addition](phases/phase-a-machine-control/level-2-arithmetic/16bit-addition) — Multi-byte addition with carry propagation  
 - [x] [8-bit Subtraction](phases/phase-a-machine-control/level-2-arithmetic/8bit-subtraction) — Subtraction with borrow and carry analysis  
 - [x] [16-bit Subtraction](phases/phase-a-machine-control/level-2-arithmetic/16bit-subtraction) — Multi-byte subtraction with borrow handling  
 - [x] [BCD Addition](phases/phase-a-machine-control/level-2-arithmetic/bcd-addition) — Binary Coded Decimal addition using DA instruction  
 - [x] [BCD Subtraction](phases/phase-a-machine-control/level-2-arithmetic/bcd-subtraction) — Decimal-adjusted subtraction for BCD values  
 - [x] [Multiplication (Repetitive Addition)](phases/phase-a-machine-control/level-2-arithmetic/multiplication-repetitive-addition) — 8-bit multiply without MUL instruction  
 - [x] [Division (Repetitive Subtraction)](phases/phase-a-machine-control/level-2-arithmetic/division-repetitive-subtraction) — 8-bit divide without DIV instruction  
 - [x] [16-bit Multiplication](phases/phase-a-machine-control/level-2-arithmetic/16bit-multiplication) — Multi-byte multiplication algorithm  
 - [x] [16-bit Division](phases/phase-a-machine-control/level-2-arithmetic/16bit-division) — Multi-byte division with quotient and remainder  
 - [x] [Booth’s Multiplication](phases/phase-a-machine-control/level-2-arithmetic/booths-multiplication) — Signed multiplication using Booth’s algorithm  
 - [x] [Binary to BCD Conversion](phases/phase-a-machine-control/level-2-arithmetic/binary-to-bcd-conversion) — Convert binary number to packed or unpacked BCD  
 - [x] [BCD to Binary Conversion](phases/phase-a-machine-control/level-2-arithmetic/bcd-to-binary-conversion) — Convert BCD representation to binary  
 - [x] [Binary to ASCII](phases/phase-a-machine-control/level-2-arithmetic/binary-to-ascii-conversion) — Convert binary value to ASCII hexadecimal characters  
 - [x] [ASCII to Binary](phases/phase-a-machine-control/level-2-arithmetic/ascii-to-binary-conversion) — Convert ASCII hexadecimal characters to binary value  

</details>

<details>
<summary><strong>Level 3: Logical Operations & Bit Manipulation</strong></summary>

 - [ ] [Bit Set / Clear / Toggle](phases/phase-a-machine-control/level-3-logical-ops/bit-set-clear-toggle) — Individual bit control using SETB, CLR, CPL  
 - [ ] [Bit Testing](phases/phase-a-machine-control/level-3-logical-ops/bit-testing) — Conditional branching using JB, JNB, and JBC  
 - [ ] [Nibble Swap](phases/phase-a-machine-control/level-3-logical-ops/nibble-swap) — Swap upper and lower nibbles using SWAP instruction  
 - [ ] [Bit Rotation](phases/phase-a-machine-control/level-3-logical-ops/bit-rotation) — Rotate accumulator left or right with and without carry  
 - [ ] [Parity Check](phases/phase-a-machine-control/level-3-logical-ops/parity-check) — Use PSW parity flag for data integrity checks  
 - [ ] [Bit Counting](phases/phase-a-machine-control/level-3-logical-ops/bit-counting) — Count number of logic-1 bits in a byte  
 - [ ] [AND / OR / XOR](phases/phase-a-machine-control/level-3-logical-ops/and-or-xor-operations) — Logical masking, clearing, and bit testing  
 - [ ] [Bit Reversal](phases/phase-a-machine-control/level-3-logical-ops/bit-reversal) — Reverse the bit order within a byte  

</details>

<details>
<summary><strong>Level 4: Flags & Program Status Word (PSW)</strong></summary>

 - [ ] [Carry Flag Operations](phases/phase-a-machine-control/level-4-psw-flags/carry-flag-operations) — Explicit manipulation and dependency analysis  
 - [ ] [Auxiliary Carry Flag](phases/phase-a-machine-control/level-4-psw-flags/auxiliary-carry-flag) — Understand AC behavior in BCD arithmetic  
 - [ ] [Overflow Flag](phases/phase-a-machine-control/level-4-psw-flags/overflow-flag) — Detect signed arithmetic overflow conditions  
 - [ ] [Parity Flag](phases/phase-a-machine-control/level-4-psw-flags/parity-flag) — Use parity bit for error detection and validation  
 - [ ] [Register Bank Selection](phases/phase-a-machine-control/level-4-psw-flags/register-bank-selection) — Switch register banks using RS0 and RS1  
 - [ ] [User Flag (F0)](phases/phase-a-machine-control/level-4-psw-flags/user-flag-f0) — Employ PSW user-defined flag for logic control  
 - [ ] [Multi-precision Arithmetic](phases/phase-a-machine-control/level-4-psw-flags/multi-precision-arithmetic) — Implement 32-bit and 64-bit arithmetic using flags  

</details>

---

## Phase B — Deterministic Logic (Levels 5–6)

<details>
<summary><strong>Level 5: Comparison & Conditional Operations</strong></summary>

 - [ ] [Byte Comparison](phases/phase-b-deterministic-logic/level-5-comparison/byte-comparison) — Compare two values using SUBB and flag analysis  
 - [ ] [String Comparison](phases/phase-b-deterministic-logic/level-5-comparison/string-comparison) — Compare byte sequences stored in memory  
 - [ ] [Find Maximum](phases/phase-b-deterministic-logic/level-5-comparison/find-maximum) — Identify the largest value in an array  
 - [ ] [Find Minimum](phases/phase-b-deterministic-logic/level-5-comparison/find-minimum) — Identify the smallest value in an array  
 - [ ] [Range Checking](phases/phase-b-deterministic-logic/level-5-comparison/range-checking) — Verify whether a value lies within defined bounds  
 - [ ] [CJNE Instruction Mastery](phases/phase-b-deterministic-logic/level-5-comparison/cjne-instruction-mastery) — Conditional branching using CJNE semantics  
 - [ ] [Conditional Subroutines](phases/phase-b-deterministic-logic/level-5-comparison/conditional-subroutines) — Execute different routines based on comparison results  

</details>

<details>
<summary><strong>Level 6: Array & Table Operations</strong></summary>

 - [ ] [Array Initialization](phases/phase-b-deterministic-logic/level-6-array-table/array-initialization) — Fill arrays with constants or computed values  
 - [ ] [Linear Search](phases/phase-b-deterministic-logic/level-6-array-table/array-search-linear) — Search an unsorted array sequentially  
 - [ ] [Binary Search](phases/phase-b-deterministic-logic/level-6-array-table/array-search-binary) — Search a sorted array using divide-and-conquer  
 - [ ] [Bubble Sort](phases/phase-b-deterministic-logic/level-6-array-table/bubble-sort) — Sort array elements using adjacent comparisons  
 - [ ] [Selection Sort](phases/phase-b-deterministic-logic/level-6-array-table/selection-sort) — Sort array by selecting minimum or maximum iteratively  
 - [ ] [Array Reversal](phases/phase-b-deterministic-logic/level-6-array-table/array-reversal) — Reverse array elements in memory  
 - [ ] [Lookup Tables](phases/phase-b-deterministic-logic/level-6-array-table/lookup-tables) — Access precomputed tables using MOVC  
 - [ ] [Code Table Access](phases/phase-b-deterministic-logic/level-6-array-table/code-table-access) — Use tables for 7-segment patterns or character sets  
 - [ ] [Checksum Calculation](phases/phase-b-deterministic-logic/level-6-array-table/checksum-calculation) — Compute and verify data integrity checksums  

</details>

---

## Phase C — Time Control (Levels 7–8)
> Primary validation environment: **8051 Simulator**

<details>
<summary><strong>Level 7: Timer Programming</strong></summary>

 - [ ] [Timer 0 Mode 0](phases/phase-c-time-control/level-7-timers/timer-0-mode-0) — 13-bit timer/counter configuration  
 - [ ] [Timer 0 Mode 1](phases/phase-c-time-control/level-7-timers/timer-0-mode-1) — 16-bit timer/counter operation  
 - [ ] [Timer 0 Mode 2](phases/phase-c-time-control/level-7-timers/timer-0-mode-2) — 8-bit auto-reload timer mode  
 - [ ] [Timer 0 Mode 3](phases/phase-c-time-control/level-7-timers/timer-0-mode-3) — Split timer operation of TL0 and TH0  
 - [ ] [Timer 1 All Modes](phases/phase-c-time-control/level-7-timers/timer-1-all-modes) — Full practice of Timer 1 modes  
 - [ ] [Precise Delay Generation](phases/phase-c-time-control/level-7-timers/precise-delay-generation) — Exact delay calculation using machine cycles  
 - [ ] [Event Counting](phases/phase-c-time-control/level-7-timers/event-counting) — Count external pulses using counter mode  
 - [ ] [Frequency Measurement](phases/phase-c-time-control/level-7-timers/frequency-measurement) — Measure input signal frequency  
 - [ ] [Pulse Width Measurement](phases/phase-c-time-control/level-7-timers/pulse-width-measurement) — Measure high and low pulse durations  
 - [ ] [Software PWM](phases/phase-c-time-control/level-7-timers/software-pwm) — Generate PWM signals using timers  

</details>

<details>
<summary><strong>Level 8: Interrupt Handling</strong></summary>

 - [ ] [External Interrupt 0](phases/phase-c-time-control/level-8-interrupts/external-interrupt-0) — Edge and level triggered handling  
 - [ ] [External Interrupt 1](phases/phase-c-time-control/level-8-interrupts/external-interrupt-1) — Independent interrupt configuration  
 - [ ] [Timer 0 Interrupt](phases/phase-c-time-control/level-8-interrupts/timer-0-interrupt) — Overflow-based ISR design  
 - [ ] [Timer 1 Interrupt](phases/phase-c-time-control/level-8-interrupts/timer-1-interrupt) — Time-critical ISR handling  
 - [ ] [Serial Interrupt](phases/phase-c-time-control/level-8-interrupts/serial-interrupt) — RI and TI interrupt servicing  
 - [ ] [Interrupt Priority](phases/phase-c-time-control/level-8-interrupts/interrupt-priority) — Configure high and low priority interrupts  
 - [ ] [Nested Interrupts](phases/phase-c-time-control/level-8-interrupts/nested-interrupts) — Allow controlled interrupt nesting  
 - [ ] [Context Saving](phases/phase-c-time-control/level-8-interrupts/context-saving) — Preserve registers and PSW in ISRs  
 - [ ] [Interrupt Latency](phases/phase-c-time-control/level-8-interrupts/interrupt-latency) — Measure and minimize response delay  
 - [ ] [Critical Sections](phases/phase-c-time-control/level-8-interrupts/critical-sections) — Atomic operations using interrupt control  
 - [ ] [Interrupt-driven Tasks](phases/phase-c-time-control/level-8-interrupts/interrupt-driven-tasks) — Foreground and background task separation  

</details>

---

## Phase D — I/O as Protocol (Levels 9–10)

<details>
<summary><strong>Level 9: Serial Communication</strong></summary>

 - [ ] [Serial Mode 0](phases/phase-d-io-protocols/level-9-serial/serial-mode-0) — Synchronous shift-register communication  
 - [ ] [Serial Mode 1](phases/phase-d-io-protocols/level-9-serial/serial-mode-1) — 8-bit UART with variable baud rate  
 - [ ] [Serial Mode 2](phases/phase-d-io-protocols/level-9-serial/serial-mode-2) — 9-bit UART with fixed baud rate  
 - [ ] [Serial Mode 3](phases/phase-d-io-protocols/level-9-serial/serial-mode-3) — 9-bit UART with variable baud rate  
 - [ ] [Baud Rate Calculation](phases/phase-d-io-protocols/level-9-serial/baud-rate-calculation) — Timer-based baud generation  
 - [ ] [9th Bit Operations](phases/phase-d-io-protocols/level-9-serial/9th-bit-operations) — Multiprocessor communication support  
 - [ ] [Interrupt-driven Transmission](phases/phase-d-io-protocols/level-9-serial/interrupt-driven-transmission) — Non-blocking serial transmission  
 - [ ] [Interrupt-driven Reception](phases/phase-d-io-protocols/level-9-serial/interrupt-driven-reception) — Buffered serial reception  
 - [ ] [Ring Buffer Implementation](phases/phase-d-io-protocols/level-9-serial/ring-buffer-implementation) — Circular buffer for serial data  
 - [ ] [Framing Error Detection](phases/phase-d-io-protocols/level-9-serial/framing-error-detection) — Detect and handle communication errors  
 - [ ] [Protocol Implementation](phases/phase-d-io-protocols/level-9-serial/protocol-implementation) — Design packet-based serial protocol  

</details>

<details>
<summary><strong>Level 10: LCD Programming</strong></summary>

 - [ ] [LCD 4-bit Mode Initialization](phases/phase-d-io-protocols/level-10-lcd/lcd-4-bit-mode-initialization) — Reduced pin interface initialization  
 - [ ] [LCD 8-bit Mode Initialization](phases/phase-d-io-protocols/level-10-lcd/lcd-8-bit-mode-initialization) — Full data bus operation  
 - [ ] [Busy Flag Checking](phases/phase-d-io-protocols/level-10-lcd/busy-flag-checking) — Poll LCD status instead of fixed delays  
 - [ ] [Custom Character Generation](phases/phase-d-io-protocols/level-10-lcd/custom-character-generation) — Define characters using CGRAM  
 - [ ] [Cursor Positioning](phases/phase-d-io-protocols/level-10-lcd/cursor-positioning) — Direct cursor movement control  
 - [ ] [Display Shift Control](phases/phase-d-io-protocols/level-10-lcd/display-shift-control) — Shift display without altering data  
 - [ ] [Entry Mode Control](phases/phase-d-io-protocols/level-10-lcd/entry-mode-control) — Configure cursor increment or decrement  
 - [ ] [LCD Command Timing](phases/phase-d-io-protocols/level-10-lcd/lcd-command-timing) — Respect minimum timing constraints  

</details>

---

## Phase E — Algorithms Under Constraint (Levels 11–12)

<details>
<summary><strong>Level 11: Advanced Algorithms</strong></summary>

 - [ ] [Square Root Algorithm](phases/phase-e-algorithms/level-11-advanced-algorithms/square-root-algorithm) — Compute square root using Newton–Raphson or digit-by-digit method  
 - [ ] [GCD (Greatest Common Divisor)](phases/phase-e-algorithms/level-11-advanced-algorithms/gcd-greatest-common-divisor) — Implement Euclidean algorithm  
 - [ ] [LCM (Least Common Multiple)](phases/phase-e-algorithms/level-11-advanced-algorithms/lcm-least-common-multiple) — Derive LCM using GCD computation  
 - [ ] [Prime Number Check](phases/phase-e-algorithms/level-11-advanced-algorithms/prime-number-check) — Determine whether a number is prime  
 - [ ] [Factorial Calculation](phases/phase-e-algorithms/level-11-advanced-algorithms/factorial-calculation) — Compute factorial using iterative or recursive logic  
 - [ ] [Fibonacci Series](phases/phase-e-algorithms/level-11-advanced-algorithms/fibonacci-series) — Generate Fibonacci sequence iteratively  
 - [ ] [CRC Calculation](phases/phase-e-algorithms/level-11-advanced-algorithms/crc-calculation) — Implement Cyclic Redundancy Check for error detection  
 - [ ] [Hamming Code](phases/phase-e-algorithms/level-11-advanced-algorithms/hamming-code) — Perform error detection and correction  
 - [ ] [Linear Feedback Shift Register](phases/phase-e-algorithms/level-11-advanced-algorithms/linear-feedback-shift-register) — Generate pseudo-random sequences  
 - [ ] [Fixed-Point Arithmetic](phases/phase-e-algorithms/level-11-advanced-algorithms/fixed-point-arithmetic) — Simulate floating-point math using integers  

</details>

<details>
<summary><strong>Level 12: Code Optimization Techniques</strong></summary>

 - [ ] [Loop Unrolling](phases/phase-e-algorithms/level-12-optimization/loop-unrolling) — Reduce loop overhead for speed optimization  
 - [ ] [Register Optimization](phases/phase-e-algorithms/level-12-optimization/register-optimization) — Minimize memory access using registers  
 - [ ] [Code Size Reduction](phases/phase-e-algorithms/level-12-optimization/code-size-reduction) — Optimize jumps and calls for smaller binaries  
 - [ ] [Jump Table Implementation](phases/phase-e-algorithms/level-12-optimization/jump-table-implementation) — Efficient multi-way branching  
 - [ ] [Inline vs Subroutine](phases/phase-e-algorithms/level-12-optimization/inline-vs-subroutine) — Decide between speed and modularity  
 - [ ] [Instruction Cycle Counting](phases/phase-e-algorithms/level-12-optimization/instruction-cycle-counting) — Precise execution time calculation  
 - [ ] [Memory Banking](phases/phase-e-algorithms/level-12-optimization/memory-banking) — Efficient use of register banks  

</details>

---

## Phase F — System Ownership (Levels 13–14)

<details>
<summary><strong>Level 13: Low-Level Hardware Control</strong></summary>

 - [ ] [Port Latch Reading](phases/phase-f-system-ownership/level-13-hardware-control/port-latch-reading) — Understand latch versus pin behavior  
 - [ ] [Read-Modify-Write](phases/phase-f-system-ownership/level-13-hardware-control/read-modify-write) — Avoid unintended port bit changes  
 - [ ] [Quasi-bidirectional Ports](phases/phase-f-system-ownership/level-13-hardware-control/quasi-bidirectional-ports) — Internal port structure understanding  
 - [ ] [Pull-up Resistor Effects](phases/phase-f-system-ownership/level-13-hardware-control/pull-up-resistor-effects) — Analyze loading and fan-out  
 - [ ] [Glitch-free Output](phases/phase-f-system-ownership/level-13-hardware-control/glitch-free-output) — Prevent hazards during port updates  
 - [ ] [Power Mode Control](phases/phase-f-system-ownership/level-13-hardware-control/power-mode-control) — IDLE and POWER-DOWN modes  
 - [ ] [Watchdog Timer](phases/phase-f-system-ownership/level-13-hardware-control/watchdog-timer) — Software watchdog implementation  

</details>

<details>
<summary><strong>Level 14: System-Level Programming</strong></summary>

 - [ ] [Reset Vector Handling](phases/phase-f-system-ownership/level-14-system-programming/reset-vector-handling) — Code execution from address 0000H  
 - [ ] [Interrupt Vector Table](phases/phase-f-system-ownership/level-14-system-programming/interrupt-vector-table) — Proper ISR placement and redirection  
 - [ ] [Memory Map Management](phases/phase-f-system-ownership/level-14-system-programming/memory-map-management) — Organize code, data, and stack  
 - [ ] [Relocatable Code](phases/phase-f-system-ownership/level-14-system-programming/relocatable-code) — Position-independent programming techniques  
 - [ ] [Self-Modifying Code](phases/phase-f-system-ownership/level-14-system-programming/self-modifying-code) — Controlled runtime code modification  
 - [ ] [Bootloader Concepts](phases/phase-f-system-ownership/level-14-system-programming/bootloader-concepts) — Jump from bootloader to application  
 - [ ] [Checksum Verification](phases/phase-f-system-ownership/level-14-system-programming/checksum-verification) — Validate program memory integrity  

</details>

---

## ▶️ Start Executing

- Execute programs instantly: https://8051sim.vercel.app  
- Use this repository as the reference implementation set  
- Treat the simulator as the ground truth for instruction behavior  

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📧 Contact
[![Email](https://img.shields.io/badge/Email-Contact%20Me-red)](mailto:swaroop.k.yadav@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://linkedin.com/in/swaroop2sky)


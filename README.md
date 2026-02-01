# 🎛️ 8051 Assembly Language Projects & Simulator Repository

![8051 ALP Projects](https://github.com/user-attachments/assets/b84dd675-0be5-436d-a724-06f82726c913)

A curated collection of **pure 8051 assembly language programs**, simulations, and system-level microcontroller implementations.  
This repository treats the 8051 not as a legacy MCU, but as a **transparent machine for mastering low-level computation**.

[![GitHub last commit](https://img.shields.io/github/last-commit/s2sofficial/8051)](https://github.com/s2sofficial/8051)
[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
![GitHub stars](https://img.shields.io/github/stars/s2sofficial/8051?style=social)

---

##  8051 Simulator — Core of This Repository

This repository is tightly integrated with a **web-based 8051 Assembly Language Simulator**, built to execute, debug, and analyze programs written for the Intel 8051 architecture.

🔗 **Live Simulator**  
[https://8051sim.vercel.app](https://8051sim.vercel.app)

[<img width="50%" height="1011" alt="image" src="https://github.com/user-attachments/assets/bb99da8e-194b-4d0f-9566-5db76d345227"/>](https://8051sim.vercel.app)

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
<ul>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/register-operations">Register Operations</a> — Data transfer between registers and accumulator-based operations</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/direct-addressing">Direct Addressing</a> — Move data to and from fixed internal RAM addresses</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/indirect-addressing">Indirect Addressing</a> — Use R0/R1 as pointers to access internal RAM</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/indexed-addressing">Indexed Addressing</a> — Access lookup tables in code memory using DPTR and MOVC</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/block-data-transfer">Block Data Transfer</a> — Copy a block of data from one memory region to another</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/stack-operations">Stack Operations</a> — PUSH/POP usage, stack growth behavior, subroutine parameter passing</li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/bit-addressable-ram">Bit Addressable RAM</a> — Manipulate individual bits in the 20H–2FH address range</li>
</ul>
</details>

<details>
<summary><strong>Level 2: Arithmetic Operations</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/8bit-addition">8-bit Addition</a> — Perform addition with carry flag handling</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-addition">16-bit Addition</a> — Multi-byte addition with carry propagation</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/8bit-subtraction">8-bit Subtraction</a> — Subtraction with borrow and carry analysis</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-subtraction">16-bit Subtraction</a> — Multi-byte subtraction with borrow handling</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-addition">BCD Addition</a> — Binary Coded Decimal addition using DA instruction</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-subtraction">BCD Subtraction</a> — Decimal-adjusted subtraction for BCD values</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/multiplication-repetitive-addition">Multiplication (Repetitive Addition)</a> — 8-bit multiply without MUL instruction</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/division-repetitive-subtraction">Division (Repetitive Subtraction)</a> — 8-bit divide without DIV instruction</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-multiplication">16-bit Multiplication</a> — Multi-byte multiplication algorithm</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-division">16-bit Division</a> — Multi-byte division with quotient and remainder</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/booths-multiplication">Booth’s Multiplication</a> — Signed multiplication using Booth’s algorithm</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/binary-to-bcd-conversion">Binary to BCD Conversion</a> — Convert binary number to packed or unpacked BCD</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-to-binary-conversion">BCD to Binary Conversion</a> — Convert BCD representation to binary</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/binary-to-ascii-conversion">Binary to ASCII</a> — Convert binary value to ASCII hexadecimal characters</li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/ascii-to-binary-conversion">ASCII to Binary</a> — Convert ASCII hexadecimal characters to binary value</li>
</ul>
</details>

<details>
<summary><strong>Level 3: Logical Operations & Bit Manipulation</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-set-clear-toggle">Bit Set / Clear / Toggle</a> — Individual bit control using SETB, CLR, CPL</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-testing">Bit Testing</a> — Conditional branching using JB, JNB, and JBC</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/nibble-swap">Nibble Swap</a> — Swap upper and lower nibbles using SWAP instruction</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-rotation">Bit Rotation</a> — Rotate accumulator left or right with and without carry</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/parity-check">Parity Check</a> — Use PSW parity flag for data integrity checks</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-counting">Bit Counting</a> — Count number of logic-1 bits in a byte</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/and-or-xor-operations">AND / OR / XOR</a> — Logical masking, clearing, and bit testing</li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-reversal">Bit Reversal</a> — Reverse the bit order within a byte</li>
</ul>
</details>

<details>
<summary><strong>Level 4: Flags & Program Status Word (PSW)</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/carry-flag-operations">Carry Flag Operations</a> — Explicit manipulation and dependency analysis</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/auxiliary-carry-flag">Auxiliary Carry Flag</a> — Understand AC behavior in BCD arithmetic</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/overflow-flag">Overflow Flag</a> — Detect signed arithmetic overflow conditions</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/parity-flag">Parity Flag</a> — Use parity bit for error detection and validation</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/register-bank-selection">Register Bank Selection</a> — Switch register banks using RS0 and RS1</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/user-flag-f0">User Flag (F0)</a> — Employ PSW user-defined flag for logic control</li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/multi-precision-arithmetic">Multi-precision Arithmetic</a> — Implement 32-bit and 64-bit arithmetic using flags</li>
</ul>
</details>

---

## Phase B — Deterministic Logic (Levels 5–6)

<details>
<summary><strong>Level 5: Comparison & Conditional Operations</strong></summary>
<ul>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/byte-comparison">Byte Comparison</a> — Compare two values using SUBB and flag analysis</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/string-comparison">String Comparison</a> — Compare byte sequences stored in memory</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/find-maximum">Find Maximum</a> — Identify the largest value in an array</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/find-minimum">Find Minimum</a> — Identify the smallest value in an array</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/range-checking">Range Checking</a> — Verify whether a value lies within defined bounds</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/cjne-instruction-mastery">CJNE Instruction Mastery</a> — Conditional branching using CJNE semantics</li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/conditional-subroutines">Conditional Subroutines</a> — Execute different routines based on comparison results</li>
</ul>
</details>

<details>
<summary><strong>Level 6: Array & Table Operations</strong></summary>
<ul>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-initialization">Array Initialization</a> — Fill arrays with constants or computed values</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-search-linear">Linear Search</a> — Search an unsorted array sequentially</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-search-binary">Binary Search</a> — Search a sorted array using divide-and-conquer</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/bubble-sort">Bubble Sort</a> — Sort array elements using adjacent comparisons</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/selection-sort">Selection Sort</a> — Sort array by selecting minimum or maximum iteratively</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-reversal">Array Reversal</a> — Reverse array elements in memory</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/lookup-tables">Lookup Tables</a> — Access precomputed tables using MOVC</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/code-table-access">Code Table Access</a> — Use tables for 7-segment patterns or character sets</li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/checksum-calculation">Checksum Calculation</a> — Compute and verify data integrity checksums</li>
</ul>
</details>

---

## Phase C — Time Control (Levels 7–8)
> Primary validation environment: **8051 Simulator**

<details>
<summary><strong>Level 7: Timer Programming</strong></summary>
<ul>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-0">Timer 0 Mode 0</a> — 13-bit timer/counter configuration</li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-1">Timer 0 Mode 1</a> — 16-bit timer/counter operation</li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-2">Timer 0 Mode 2</a> — 8-bit auto-reload timer mode</li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-3">Timer 0 Mode 3</a> — Split timer operation of TL0 and TH0</li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-1-all-modes">Timer 1 All Modes</a> — Full practice of Timer 1 modes</li>
<li><a href="phases/phase-c-time-control/level-7-timers/precise-delay-generation">Precise Delay Generation</a> — Exact delay calculation using machine cycles</li>
<li><a href="phases/phase-c-time-control/level-7-timers/event-counting">Event Counting</a> — Count external pulses using counter mode</li>
<li><a href="phases/phase-c-time-control/level-7-timers/frequency-measurement">Frequency Measurement</a> — Measure input signal frequency</li>
<li><a href="phases/phase-c-time-control/level-7-timers/pulse-width-measurement">Pulse Width Measurement</a> — Measure high and low pulse durations</li>
<li><a href="phases/phase-c-time-control/level-7-timers/software-pwm">Software PWM</a> — Generate PWM signals using timers</li>
</ul>
</details>

<details>
<summary><strong>Level 8: Interrupt Handling</strong></summary>
<ul>
<li><a href="phases/phase-c-time-control/level-8-interrupts/external-interrupt-0">External Interrupt 0</a> — Edge and level triggered handling</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/external-interrupt-1">External Interrupt 1</a> — Independent interrupt configuration</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/timer-0-interrupt">Timer 0 Interrupt</a> — Overflow-based ISR design</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/timer-1-interrupt">Timer 1 Interrupt</a> — Time-critical ISR handling</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/serial-interrupt">Serial Interrupt</a> — RI and TI interrupt servicing</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-priority">Interrupt Priority</a> — Configure high and low priority interrupts</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/nested-interrupts">Nested Interrupts</a> — Allow controlled interrupt nesting</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/context-saving">Context Saving</a> — Preserve registers and PSW in ISRs</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-latency">Interrupt Latency</a> — Measure and minimize response delay</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/critical-sections">Critical Sections</a> — Atomic operations using interrupt control</li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-driven-tasks">Interrupt-driven Tasks</a> — Foreground and background task separation</li>
</ul>
</details>

---

## Phase D — I/O as Protocol (Levels 9–10)

<details>
<summary><strong>Level 9: Serial Communication</strong></summary>
<ul>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-0">Serial Mode 0</a> — Synchronous shift-register communication</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-1">Serial Mode 1</a> — 8-bit UART with variable baud rate</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-2">Serial Mode 2</a> — 9-bit UART with fixed baud rate</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-3">Serial Mode 3</a> — 9-bit UART with variable baud rate</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/baud-rate-calculation">Baud Rate Calculation</a> — Timer-based baud generation</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/9th-bit-operations">9th Bit Operations</a> — Multiprocessor communication support</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/interrupt-driven-transmission">Interrupt-driven Transmission</a> — Non-blocking serial transmission</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/interrupt-driven-reception">Interrupt-driven Reception</a> — Buffered serial reception</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/ring-buffer-implementation">Ring Buffer Implementation</a> — Circular buffer for serial data</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/framing-error-detection">Framing Error Detection</a> — Detect and handle communication errors</li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/protocol-implementation">Protocol Implementation</a> — Design packet-based serial protocol</li>
</ul>
</details>

<details>
<summary><strong>Level 10: LCD Programming</strong></summary>
<ul>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-4-bit-mode-initialization">LCD 4-bit Mode Initialization</a> — Reduced pin interface initialization</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-8-bit-mode-initialization">LCD 8-bit Mode Initialization</a> — Full data bus operation</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/busy-flag-checking">Busy Flag Checking</a> — Poll LCD status instead of fixed delays</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/custom-character-generation">Custom Character Generation</a> — Define characters using CGRAM</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/cursor-positioning">Cursor Positioning</a> — Direct cursor movement control</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/display-shift-control">Display Shift Control</a> — Shift display without altering data</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/entry-mode-control">Entry Mode Control</a> — Configure cursor increment or decrement</li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-command-timing">LCD Command Timing</a> — Respect minimum timing constraints</li>
</ul>
</details>

---

## Phase E — Algorithms Under Constraint (Levels 11–12)

<details>
<summary><strong>Level 11: Advanced Algorithms</strong></summary>
<ul>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/square-root-algorithm">Square Root Algorithm</a> — Compute square root using Newton–Raphson or digit-by-digit method</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/gcd-greatest-common-divisor">GCD (Greatest Common Divisor)</a> — Implement Euclidean algorithm</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/lcm-least-common-multiple">LCM (Least Common Multiple)</a> — Derive LCM using GCD computation</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/prime-number-check">Prime Number Check</a> — Determine whether a number is prime</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/factorial-calculation">Factorial Calculation</a> — Compute factorial using iterative or recursive logic</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/fibonacci-series">Fibonacci Series</a> — Generate Fibonacci sequence iteratively</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/crc-calculation">CRC Calculation</a> — Implement Cyclic Redundancy Check for error detection</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/hamming-code">Hamming Code</a> — Perform error detection and correction</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/linear-feedback-shift-register">Linear Feedback Shift Register</a> — Generate pseudo-random sequences</li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/fixed-point-arithmetic">Fixed-Point Arithmetic</a> — Simulate floating-point math using integers</li>
</ul>
</details>

<details>
<summary><strong>Level 12: Code Optimization Techniques</strong></summary>
<ul>
<li><a href="phases/phase-e-algorithms/level-12-optimization/loop-unrolling">Loop Unrolling</a> — Reduce loop overhead for speed optimization</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/register-optimization">Register Optimization</a> — Minimize memory access using registers</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/code-size-reduction">Code Size Reduction</a> — Optimize jumps and calls for smaller binaries</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/jump-table-implementation">Jump Table Implementation</a> — Efficient multi-way branching</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/inline-vs-subroutine">Inline vs Subroutine</a> — Decide between speed and modularity</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/instruction-cycle-counting">Instruction Cycle Counting</a> — Precise execution time calculation</li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/memory-banking">Memory Banking</a> — Efficient use of register banks</li>
</ul>
</details>

---

## Phase F — System Ownership (Levels 13–14)

<details>
<summary><strong>Level 13: Low-Level Hardware Control</strong></summary>
<ul>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/port-latch-reading">Port Latch Reading</a> — Understand latch versus pin behavior</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/read-modify-write">Read-Modify-Write</a> — Avoid unintended port bit changes</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/quasi-bidirectional-ports">Quasi-bidirectional Ports</a> — Internal port structure understanding</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/pull-up-resistor-effects">Pull-up Resistor Effects</a> — Analyze loading and fan-out</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/glitch-free-output">Glitch-free Output</a> — Prevent hazards during port updates</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/power-mode-control">Power Mode Control</a> — IDLE and POWER-DOWN modes</li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/watchdog-timer">Watchdog Timer</a> — Software watchdog implementation</li>
</ul>
</details>

<details>
<summary><strong>Level 14: System-Level Programming</strong></summary>
<ul>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/reset-vector-handling">Reset Vector Handling</a> — Code execution from address 0000H</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/interrupt-vector-table">Interrupt Vector Table</a> — Proper ISR placement and redirection</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/memory-map-management">Memory Map Management</a> — Organize code, data, and stack</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/relocatable-code">Relocatable Code</a> — Position-independent programming techniques</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/self-modifying-code">Self-Modifying Code</a> — Controlled runtime code modification</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/bootloader-concepts">Bootloader Concepts</a> — Jump from bootloader to application</li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/checksum-verification">Checksum Verification</a> — Validate program memory integrity</li>
</ul>
</details>

---

## ▶️ Start Executing

- Execute programs instantly: [https://8051sim.vercel.app](https://8051sim.vercel.app)  
- Use this repository as the reference implementation set  
- Treat the simulator as the ground truth for instruction behavior  

---

## 📜 License

Distributed under the MIT License. See `LICENSE` for more information.

## 📧 Contact
[![Email](https://img.shields.io/badge/Email-Contact%20Me-red)](mailto:swaroop.k.yadav@gmail.com)
[![LinkedIn](https://img.shields.io/badge/LinkedIn-Connect-blue)](https://linkedin.com/in/swaroop2sky)


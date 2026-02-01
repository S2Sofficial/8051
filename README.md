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

- [ ] Register Operations — Data transfer between registers and accumulator-based operations  
- [ ] Direct Addressing — Move data to and from fixed internal RAM addresses  
- [ ] Indirect Addressing — Use R0/R1 as pointers to access internal RAM  
- [ ] Indexed Addressing — Access lookup tables in code memory using DPTR and MOVC  
- [ ] Block Data Transfer — Copy a block of data from one memory region to another  
- [ ] Stack Operations — PUSH/POP usage, stack growth behavior, subroutine parameter passing  
- [ ] Bit Addressable RAM — Manipulate individual bits in the 20H–2FH address range  

</details>

<details>
<summary><strong>Level 2: Arithmetic Operations</strong></summary>

- [ ] 8-bit Addition — Perform addition with carry flag handling  
- [ ] 16-bit Addition — Multi-byte addition with carry propagation  
- [ ] 8-bit Subtraction — Subtraction with borrow and carry analysis  
- [ ] 16-bit Subtraction — Multi-byte subtraction with borrow handling  
- [ ] BCD Addition — Binary Coded Decimal addition using DA instruction  
- [ ] BCD Subtraction — Decimal-adjusted subtraction for BCD values  
- [ ] Multiplication (Repetitive Addition) — 8-bit multiply without MUL instruction  
- [ ] Division (Repetitive Subtraction) — 8-bit divide without DIV instruction  
- [ ] 16-bit Multiplication — Multi-byte multiplication algorithm  
- [ ] 16-bit Division — Multi-byte division with quotient and remainder  
- [ ] Booth’s Multiplication — Signed multiplication using Booth’s algorithm  
- [ ] Binary to BCD Conversion — Convert binary number to packed or unpacked BCD  
- [ ] BCD to Binary Conversion — Convert BCD representation to binary  
- [ ] Binary to ASCII — Convert binary value to ASCII hexadecimal characters  
- [ ] ASCII to Binary — Convert ASCII hexadecimal characters to binary value  

</details>

<details>
<summary><strong>Level 3: Logical Operations & Bit Manipulation</strong></summary>

- [ ] Bit Set / Clear / Toggle — Individual bit control using SETB, CLR, CPL  
- [ ] Bit Testing — Conditional branching using JB, JNB, and JBC  
- [ ] Nibble Swap — Swap upper and lower nibbles using SWAP instruction  
- [ ] Bit Rotation — Rotate accumulator left or right with and without carry  
- [ ] Parity Check — Use PSW parity flag for data integrity checks  
- [ ] Bit Counting — Count number of logic-1 bits in a byte  
- [ ] AND / OR / XOR — Logical masking, clearing, and bit testing  
- [ ] Bit Reversal — Reverse the bit order within a byte  

</details>

<details>
<summary><strong>Level 4: Flags & Program Status Word (PSW)</strong></summary>

- [ ] Carry Flag Operations — Explicit manipulation and dependency analysis  
- [ ] Auxiliary Carry Flag — Understand AC behavior in BCD arithmetic  
- [ ] Overflow Flag — Detect signed arithmetic overflow conditions  
- [ ] Parity Flag — Use parity bit for error detection and validation  
- [ ] Register Bank Selection — Switch register banks using RS0 and RS1  
- [ ] User Flag (F0) — Employ PSW user-defined flag for logic control  
- [ ] Multi-precision Arithmetic — Implement 32-bit and 64-bit arithmetic using flags  

</details>

---

## Phase B — Deterministic Logic (Levels 5–6)

<details>
<summary><strong>Level 5: Comparison & Conditional Operations</strong></summary>

- [ ] Byte Comparison — Compare two values using SUBB and flag analysis  
- [ ] String Comparison — Compare byte sequences stored in memory  
- [ ] Find Maximum — Identify the largest value in an array  
- [ ] Find Minimum — Identify the smallest value in an array  
- [ ] Range Checking — Verify whether a value lies within defined bounds  
- [ ] CJNE Instruction Mastery — Conditional branching using CJNE semantics  
- [ ] Conditional Subroutines — Execute different routines based on comparison results  

</details>

<details>
<summary><strong>Level 6: Array & Table Operations</strong></summary>

- [ ] Array Initialization — Fill arrays with constants or computed values  
- [ ] Linear Search — Search an unsorted array sequentially  
- [ ] Binary Search — Search a sorted array using divide-and-conquer  
- [ ] Bubble Sort — Sort array elements using adjacent comparisons  
- [ ] Selection Sort — Sort array by selecting minimum or maximum iteratively  
- [ ] Array Reversal — Reverse array elements in memory  
- [ ] Lookup Tables — Access precomputed tables using MOVC  
- [ ] Code Table Access — Use tables for 7-segment patterns or character sets  
- [ ] Checksum Calculation — Compute and verify data integrity checksums  

</details>

---

## Phase C — Time Control (Levels 7–8)
> Primary validation environment: **8051 Simulator**

<details>
<summary><strong>Level 7: Timer Programming</strong></summary>

- [ ] Timer 0 Mode 0 — 13-bit timer/counter configuration  
- [ ] Timer 0 Mode 1 — 16-bit timer/counter operation  
- [ ] Timer 0 Mode 2 — 8-bit auto-reload timer mode  
- [ ] Timer 0 Mode 3 — Split timer operation of TL0 and TH0  
- [ ] Timer 1 All Modes — Full practice of Timer 1 modes  
- [ ] Precise Delay Generation — Exact delay calculation using machine cycles  
- [ ] Event Counting — Count external pulses using counter mode  
- [ ] Frequency Measurement — Measure input signal frequency  
- [ ] Pulse Width Measurement — Measure high and low pulse durations  
- [ ] Software PWM — Generate PWM signals using timers  

</details>

<details>
<summary><strong>Level 8: Interrupt Handling</strong></summary>

- [ ] External Interrupt 0 — Edge and level triggered handling  
- [ ] External Interrupt 1 — Independent interrupt configuration  
- [ ] Timer 0 Interrupt — Overflow-based ISR design  
- [ ] Timer 1 Interrupt — Time-critical ISR handling  
- [ ] Serial Interrupt — RI and TI interrupt servicing  
- [ ] Interrupt Priority — Configure high and low priority interrupts  
- [ ] Nested Interrupts — Allow controlled interrupt nesting  
- [ ] Context Saving — Preserve registers and PSW in ISRs  
- [ ] Interrupt Latency — Measure and minimize response delay  
- [ ] Critical Sections — Atomic operations using interrupt control  
- [ ] Interrupt-driven Tasks — Foreground and background task separation  

</details>

---

## Phase D — I/O as Protocol (Levels 9–10)

<details>
<summary><strong>Level 9: Serial Communication</strong></summary>

- [ ] Serial Mode 0 — Synchronous shift-register communication  
- [ ] Serial Mode 1 — 8-bit UART with variable baud rate  
- [ ] Serial Mode 2 — 9-bit UART with fixed baud rate  
- [ ] Serial Mode 3 — 9-bit UART with variable baud rate  
- [ ] Baud Rate Calculation — Timer-based baud generation  
- [ ] 9th Bit Operations — Multiprocessor communication support  
- [ ] Interrupt-driven Transmission — Non-blocking serial transmission  
- [ ] Interrupt-driven Reception — Buffered serial reception  
- [ ] Ring Buffer Implementation — Circular buffer for serial data  
- [ ] Framing Error Detection — Detect and handle communication errors  
- [ ] Protocol Implementation — Design packet-based serial protocol  

</details>

<details>
<summary><strong>Level 10: LCD Programming</strong></summary>

- [ ] LCD 4-bit Mode Initialization — Reduced pin interface initialization  
- [ ] LCD 8-bit Mode Initialization — Full data bus operation  
- [ ] Busy Flag Checking — Poll LCD status instead of fixed delays  
- [ ] Custom Character Generation — Define characters using CGRAM  
- [ ] Cursor Positioning — Direct cursor movement control  
- [ ] Display Shift Control — Shift display without altering data  
- [ ] Entry Mode Control — Configure cursor increment or decrement  
- [ ] LCD Command Timing — Respect minimum timing constraints  

</details>

---

## Phase E — Algorithms Under Constraint (Levels 11–12)

<details>
<summary><strong>Level 11: Advanced Algorithms</strong></summary>

- [ ] Square Root Algorithm — Compute square root using Newton–Raphson or digit-by-digit method  
- [ ] GCD (Greatest Common Divisor) — Implement Euclidean algorithm  
- [ ] LCM (Least Common Multiple) — Derive LCM using GCD computation  
- [ ] Prime Number Check — Determine whether a number is prime  
- [ ] Factorial Calculation — Compute factorial using iterative or recursive logic  
- [ ] Fibonacci Series — Generate Fibonacci sequence iteratively  
- [ ] CRC Calculation — Implement Cyclic Redundancy Check for error detection  
- [ ] Hamming Code — Perform error detection and correction  
- [ ] Linear Feedback Shift Register — Generate pseudo-random sequences  
- [ ] Fixed-Point Arithmetic — Simulate floating-point math using integers  

</details>

<details>
<summary><strong>Level 12: Code Optimization Techniques</strong></summary>

- [ ] Loop Unrolling — Reduce loop overhead for speed optimization  
- [ ] Register Optimization — Minimize memory access using registers  
- [ ] Code Size Reduction — Optimize jumps and calls for smaller binaries  
- [ ] Jump Table Implementation — Efficient multi-way branching  
- [ ] Inline vs Subroutine — Decide between speed and modularity  
- [ ] Instruction Cycle Counting — Precise execution time calculation  
- [ ] Memory Banking — Efficient use of register banks  

</details>

---

## Phase F — System Ownership (Levels 13–14)

<details>
<summary><strong>Level 13: Low-Level Hardware Control</strong></summary>

- [ ] Port Latch Reading — Understand latch versus pin behavior  
- [ ] Read-Modify-Write — Avoid unintended port bit changes  
- [ ] Quasi-bidirectional Ports — Internal port structure understanding  
- [ ] Pull-up Resistor Effects — Analyze loading and fan-out  
- [ ] Glitch-free Output — Prevent hazards during port updates  
- [ ] Power Mode Control — IDLE and POWER-DOWN modes  
- [ ] Watchdog Timer — Software watchdog implementation  

</details>

<details>
<summary><strong>Level 14: System-Level Programming</strong></summary>

- [ ] Reset Vector Handling — Code execution from address 0000H  
- [ ] Interrupt Vector Table — Proper ISR placement and redirection  
- [ ] Memory Map Management — Organize code, data, and stack  
- [ ] Relocatable Code — Position-independent programming techniques  
- [ ] Self-Modifying Code — Controlled runtime code modification  
- [ ] Bootloader Concepts — Jump from bootloader to application  
- [ ] Checksum Verification — Validate program memory integrity  

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


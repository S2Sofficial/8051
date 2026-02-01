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
<li><a href="phases/phase-a-machine-control/level-1-data-movement/register-operations">Register Operations</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/direct-addressing">Direct Addressing</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/indirect-addressing">Indirect Addressing</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/indexed-addressing">Indexed Addressing</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/block-data-transfer">Block Data Transfer</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/stack-operations">Stack Operations</a></li>
<li><a href="phases/phase-a-machine-control/level-1-data-movement/bit-addressable-ram">Bit Addressable RAM</a></li>
</ul>
</details>

<details>
<summary><strong>Level 2: Arithmetic Operations</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/8bit-addition">8-bit Addition</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-addition">16-bit Addition</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/8bit-subtraction">8-bit Subtraction</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-subtraction">16-bit Subtraction</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-addition">BCD Addition</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-subtraction">BCD Subtraction</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/multiplication-repetitive-addition">Multiplication (Repetitive Addition)</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/division-repetitive-subtraction">Division (Repetitive Subtraction)</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-multiplication">16-bit Multiplication</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/16bit-division">16-bit Division</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/booths-multiplication">Booth’s Multiplication</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/binary-to-bcd-conversion">Binary to BCD Conversion</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/bcd-to-binary-conversion">BCD to Binary Conversion</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/binary-to-ascii-conversion">Binary to ASCII</a></li>
<li><a href="phases/phase-a-machine-control/level-2-arithmetic/ascii-to-binary-conversion">ASCII to Binary</a></li>
</ul>
</details>

<details>
<summary><strong>Level 3: Logical Operations & Bit Manipulation</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-set-clear-toggle">Bit Set / Clear / Toggle</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-testing">Bit Testing</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/nibble-swap">Nibble Swap</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-rotation">Bit Rotation</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/parity-check">Parity Check</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-counting">Bit Counting</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/and-or-xor-operations">AND / OR / XOR</a></li>
<li><a href="phases/phase-a-machine-control/level-3-logical-ops/bit-reversal">Bit Reversal</a></li>
</ul>
</details>

<details>
<summary><strong>Level 4: Flags & Program Status Word (PSW)</strong></summary>
<ul>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/carry-flag-operations">Carry Flag Operations</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/auxiliary-carry-flag">Auxiliary Carry Flag</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/overflow-flag">Overflow Flag</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/parity-flag">Parity Flag</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/register-bank-selection">Register Bank Selection</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/user-flag-f0">User Flag (F0)</a></li>
<li><a href="phases/phase-a-machine-control/level-4-psw-flags/multi-precision-arithmetic">Multi-precision Arithmetic</a></li>
</ul>
</details>

---

## Phase B — Deterministic Logic (Levels 5–6)

<details>
<summary><strong>Level 5: Comparison & Conditional Operations</strong></summary>
<ul>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/byte-comparison">Byte Comparison</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/string-comparison">String Comparison</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/find-maximum">Find Maximum</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/find-minimum">Find Minimum</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/range-checking">Range Checking</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/cjne-instruction-mastery">CJNE Instruction Mastery</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-5-comparison/conditional-subroutines">Conditional Subroutines</a></li>
</ul>
</details>

<details>
<summary><strong>Level 6: Array & Table Operations</strong></summary>
<ul>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-initialization">Array Initialization</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-search-linear">Linear Search</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-search-binary">Binary Search</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/bubble-sort">Bubble Sort</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/selection-sort">Selection Sort</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/array-reversal">Array Reversal</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/lookup-tables">Lookup Tables</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/code-table-access">Code Table Access</a></li>
<li><a href="phases/phase-b-deterministic-logic/level-6-array-table/checksum-calculation">Checksum Calculation</a></li>
</ul>
</details>

---

## Phase C — Time Control (Levels 7–8)
> Primary validation environment: **8051 Simulator**

<details>
<summary><strong>Level 7: Timer Programming</strong></summary>
<ul>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-0">Timer 0 Mode 0</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-1">Timer 0 Mode 1</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-2">Timer 0 Mode 2</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-0-mode-3">Timer 0 Mode 3</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/timer-1-all-modes">Timer 1 All Modes</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/precise-delay-generation">Precise Delay Generation</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/event-counting">Event Counting</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/frequency-measurement">Frequency Measurement</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/pulse-width-measurement">Pulse Width Measurement</a></li>
<li><a href="phases/phase-c-time-control/level-7-timers/software-pwm">Software PWM</a></li>
</ul>
</details>

<details>
<summary><strong>Level 8: Interrupt Handling</strong></summary>
<ul>
<li><a href="phases/phase-c-time-control/level-8-interrupts/external-interrupt-0">External Interrupt 0</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/external-interrupt-1">External Interrupt 1</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/timer-0-interrupt">Timer 0 Interrupt</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/timer-1-interrupt">Timer 1 Interrupt</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/serial-interrupt">Serial Interrupt</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-priority">Interrupt Priority</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/nested-interrupts">Nested Interrupts</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/context-saving">Context Saving</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-latency">Interrupt Latency</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/critical-sections">Critical Sections</a></li>
<li><a href="phases/phase-c-time-control/level-8-interrupts/interrupt-driven-tasks">Interrupt-driven Tasks</a></li>
</ul>
</details>

---

## Phase D — I/O as Protocol (Levels 9–10)

<details>
<summary><strong>Level 9: Serial Communication</strong></summary>
<ul>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-0">Serial Mode 0</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-1">Serial Mode 1</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-2">Serial Mode 2</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/serial-mode-3">Serial Mode 3</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/baud-rate-calculation">Baud Rate Calculation</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/9th-bit-operations">9th Bit Operations</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/interrupt-driven-transmission">Interrupt-driven Transmission</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/interrupt-driven-reception">Interrupt-driven Reception</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/ring-buffer-implementation">Ring Buffer Implementation</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/framing-error-detection">Framing Error Detection</a></li>
<li><a href="phases/phase-d-io-protocols/level-9-serial/protocol-implementation">Protocol Implementation</a></li>
</ul>
</details>

<details>
<summary><strong>Level 10: LCD Programming</strong></summary>
<ul>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-4-bit-mode-initialization">LCD 4-bit Mode Initialization</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-8-bit-mode-initialization">LCD 8-bit Mode Initialization</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/busy-flag-checking">Busy Flag Checking</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/custom-character-generation">Custom Character Generation</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/cursor-positioning">Cursor Positioning</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/display-shift-control">Display Shift Control</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/entry-mode-control">Entry Mode Control</a></li>
<li><a href="phases/phase-d-io-protocols/level-10-lcd/lcd-command-timing">LCD Command Timing</a></li>
</ul>
</details>

---

## Phase E — Algorithms Under Constraint (Levels 11–12)

<details>
<summary><strong>Level 11: Advanced Algorithms</strong></summary>
<ul>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/square-root-algorithm">Square Root Algorithm</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/gcd-greatest-common-divisor">GCD (Greatest Common Divisor)</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/lcm-least-common-multiple">LCM (Least Common Multiple)</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/prime-number-check">Prime Number Check</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/factorial-calculation">Factorial Calculation</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/fibonacci-series">Fibonacci Series</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/crc-calculation">CRC Calculation</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/hamming-code">Hamming Code</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/linear-feedback-shift-register">Linear Feedback Shift Register</a></li>
<li><a href="phases/phase-e-algorithms/level-11-advanced-algorithms/fixed-point-arithmetic">Fixed-Point Arithmetic</a></li>
</ul>
</details>

<details>
<summary><strong>Level 12: Code Optimization Techniques</strong></summary>
<ul>
<li><a href="phases/phase-e-algorithms/level-12-optimization/loop-unrolling">Loop Unrolling</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/register-optimization">Register Optimization</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/code-size-reduction">Code Size Reduction</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/jump-table-implementation">Jump Table Implementation</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/inline-vs-subroutine">Inline vs Subroutine</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/instruction-cycle-counting">Instruction Cycle Counting</a></li>
<li><a href="phases/phase-e-algorithms/level-12-optimization/memory-banking">Memory Banking</a></li>
</ul>
</details>

---

## Phase F — System Ownership (Levels 13–14)

<details>
<summary><strong>Level 13: Low-Level Hardware Control</strong></summary>
<ul>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/port-latch-reading">Port Latch Reading</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/read-modify-write">Read-Modify-Write</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/quasi-bidirectional-ports">Quasi-bidirectional Ports</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/pull-up-resistor-effects">Pull-up Resistor Effects</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/glitch-free-output">Glitch-free Output</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/power-mode-control">Power Mode Control</a></li>
<li><a href="phases/phase-f-system-ownership/level-13-hardware-control/watchdog-timer">Watchdog Timer</a></li>
</ul>
</details>

<details>
<summary><strong>Level 14: System-Level Programming</strong></summary>
<ul>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/reset-vector-handling">Reset Vector Handling</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/interrupt-vector-table">Interrupt Vector Table</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/memory-map-management">Memory Map Management</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/relocatable-code">Relocatable Code</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/self-modifying-code">Self-Modifying Code</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/bootloader-concepts">Bootloader Concepts</a></li>
<li><a href="phases/phase-f-system-ownership/level-14-system-programming/checksum-verification">Checksum Verification</a></li>
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


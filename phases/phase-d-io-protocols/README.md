# Phase D — I/O as Protocol (Levels 9–10)

This phase focuses on treating input/output peripherals as stateful protocols rather than simple pin toggles.

---

## Level 9 — Serial Communication
📁 [`level-9-serial`](./level-9-serial)

**Contains:**
- Serial communication in all four modes
- Baud rate generation using timers
- 9-bit serial communication for multiprocessor systems
- Interrupt-driven serial transmission
- Interrupt-driven serial reception
- Ring buffer implementation
- Framing and communication error detection
- Custom serial protocol implementation

---

## Level 10 — LCD Programming
📁 [`level-10-lcd`](./level-10-lcd)

**Contains:**
- LCD initialization in 4-bit mode
- LCD initialization in 8-bit mode
- Busy flag polling and command synchronization
- Custom character generation using CGRAM
- Cursor positioning and addressing
- Display shifting operations
- Entry mode configuration
- LCD command timing constraints

---

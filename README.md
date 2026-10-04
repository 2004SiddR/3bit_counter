# 3-Bit Synchronous Up-Counter (Verilog HDL)

A robust implementation of a 3-bit synchronous binary up-counter designed in Verilog HDL and targeted for Xilinx Artix-7 FPGAs[cite: 1, 10]. 

## Overview
This project demonstrates fundamental digital hardware design principles, featuring synchronous reset logic and clean separation between RTL source files and testbench simulation components.

## Technical Specifications
* **Target Device:** Xilinx Artix-7 (`xc7a35tcpg236-1`)[cite: 1, 6]
* **Design Language:** Verilog HDL[cite: 5]
* **Development Environment:** Xilinx Vivado 2024.1[cite: 1]

## Architecture & Synthesis Results
The design synthesizes efficiently onto the FPGA fabric utilizing core primitives:
* **Storage Elements:** 3x `FDRE` (D flip-flops with clock enable and synchronous reset)[cite: 10]
* **Combinational Logic:** LUT2, LUT3, and LUT4 blocks configured for increment and reset operations[cite: 10]
* **Clock Management:** Buffered via `IBUF` and `BUFG` for optimal clock tree distribution[cite: 10]

## Repository Structure
* `rtl_3bc/` - Contains the primary design module (`counter3bit_design.v`)
* `sim_3bc/` - Contains the testbench (`counter3bit_tb.v`) for functional verification

## Simulation Waveform
![3-Bit Counter Waveform]
<img width="950" height="200" alt="image" src="https://github.com/user-attachments/assets/6b8efef7-bb09-46cd-8f44-3efab806d45a" />

## Hardware Synthesis & Architecture
The design translates efficiently into low-level FPGA fabric primitives during synthesis[cite: 10]:
* **Storage Elements:** $3\times$ `FDRE` primitives (D-type flip-flops featuring clock enable and synchronous reset)[cite: 10].
* **Combinational Logic:** LUT2, LUT3, and LUT4 blocks configured to execute incremental arithmetic and reset routing logic[cite: 10].
* **Clock & Control Tree:** Buffered cleanly via dedicated input buffers (`IBUF`) and global clock buffers (`BUFG`)[cite: 10].
<img width="760" height="371" alt="image" src="https://github.com/user-attachments/assets/3752a5bb-8038-42f5-9582-2b3b12aedc0e" />

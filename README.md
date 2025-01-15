# 10-Bit Arithmetic Logic Unit (ALU)

## Overview
This project implements a 10-bit Arithmetic Logic Unit (ALU) in Verilog HDL. The ALU supports multiple operations including addition, subtraction, multiplication, comparison, logical operations, and arithmetic shifts.

## Features
- 10-bit input operands
- 20-bit output to accommodate multiplication results
- 3-bit operation selection
- Eight different operations:
  - Addition (000)
  - Subtraction (001)
  - Multiplication (010)
  - Comparison (011)
  - Logical AND (100)
  - Logical OR (101)
  - Arithmetic Left Shift (110)
  - Arithmetic Right Shift (111)

## Technical Details

### Module Hierarchy
- ha: Half Adder
- fa1: Full Adder
- multi_10: 10-bit Multiplier
- adder_10: 10-bit Adder
- sub_10: 10-bit Subtractor
- comp_10: 10-bit Comparator
- adie: 10-bit AND operation
- orie: 10-bit OR operation
- arilef: Arithmetic Left Shift
- aririi: Arithmetic Right Shift
- aluuu: Main ALU module

### Operation Selection
| sel[2:0] | Operation |
|----------|-----------|
| 000 | Addition |
| 001 | Subtraction |
| 010 | Multiplication |
| 011 | Comparison |
| 100 | AND |
| 101 | OR |
| 110 | Left Shift |
| 111 | Right Shift |

## Implementation Details
- The ALU is implemented using structural and behavioral modeling
- Uses ripple carry architecture for addition and subtraction
- Implements array multiplier architecture for multiplication
- Comparison provides three outputs: Equal, Greater than, Less than
- Shift operations are implemented using Verilog shift operators

## Getting Started

### Prerequisites
- Xilinx Vivado (2020.2 or later recommended)
- Basic understanding of Verilog HDL
- Knowledge of digital design concepts

## Testing
The ALU can be tested using the provided testbench or through manual testing in a simulator (ex. Xilinx).

## Contributors
- Steven Joshua
- Amritha S
- SSV Mridula
- Advaith Rajesh

## Project Status
- Last Updated: January 15, 2025
- Status: Complete
- Version: 1.0.0


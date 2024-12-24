# Unhandled Memory Access in Assembly

This repository demonstrates a common error in assembly programming: accessing memory without proper error handling. The `bug.asm` file contains code vulnerable to segmentation faults and potential buffer overflows due to unchecked memory access.  The `bugSolution.asm` shows how to mitigate these issues using appropriate checks and handling.

## Vulnerability

The vulnerable line of code attempts to access memory at a calculated address without first verifying that the address is valid. This makes the code susceptible to:

* **Segmentation faults:**  If the calculated address is invalid, the program will crash.
* **Buffer overflows:** If the index `ecx` is not properly bounded, it could lead to accessing memory beyond the intended buffer, potentially overwriting other data or code and causing unpredictable behavior.

## Solution

The solution demonstrates how to improve the code's robustness by incorporating checks before accessing memory.  This includes boundary checks to ensure that `ecx` remains within the bounds of the allocated array.  The improved code includes error handling to gracefully manage situations where the memory access fails.
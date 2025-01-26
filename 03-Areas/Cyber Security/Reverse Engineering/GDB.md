Use when you have a binary file or compiled program like C. Can also use [Ghidra](03-Areas/Cyber%20Security/Reverse%20Engineering/Ghidra.md).

1. Open file
```
gdb <file>
```
2.  Set flavor for consistency and readability
```
set disassembly-flavor intel
```
3. Get analysis about the program, specifically the functions. Look for functions such as `main` as starters.
``` 
info functions
```
4. Break at function you want to investigate. Typically main.
```
break <function
```
6. Run program and open assembly viewer
```
run
layout asm
```
7. Analyze the program.
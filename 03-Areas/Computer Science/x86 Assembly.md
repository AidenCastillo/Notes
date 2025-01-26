Assembly language is a low-level programming language that uses symbolic representations of machine code
It is used by computer directly without intermediate layer like C or Java.

## Concepts
* Registers - Small, fast storage locations within the CPU used to store data and addresses. The x86 architecture has general purpose registers like `EAX`, `EBX`, `ECX`, `EDX`, `ESI`, `EDI`, and `EBP`, and special-purpose registers like `EIP` (instruction pointer) and `ESP` (stack pointer).
* Memory - Accessed through addresses and can be read from or written to. in assembly, often use memory in terms of its address and offset, especially when dealing with arrays, structures, or buffers.
* Opcode - Binary code representing operations CPU can execute. Include `mov`, `add`, `sub`.
* Stack - Special region of memory used for storing temporary data, such as function parameters or local variables. Last in, First out.
## Instructions
Basic syntax
```
operation destination, source

mov eax, 5    ; Move the value 5 into the eax register
```
### Data Movement
 * `MOV` (Move) - Copies data from one register to another.
	 * Syntax: `MOV EAX, [REG]`
		 * Where:
			 * `EAX`, `EBX`, etc. are registers
			 * `[REG]` is the memory address of the data being moved
	* Move `[REG]` data into the register `EAX`
### Arithmetic
* `add` (Add) - Performs addition on two operands.
	* `add eax, 1
		* Adds 1 to the value of `eax`
* `sub` (Substract) - 
* `mul` (Unsigned Multiplication)
* `imul` (Signed Multiplication)
* `div` (Unsigned Multiplication)
* `idiv` (Signed Multiplication)
* `inc` (increment)
* `dec` (decrement)
### Logic
* `and` - Bitwise AND
* `or` - Bitwise OR
* `xor` - Bitwise XOR
* `not` - Bitwise NOT
* `test` - Bitwise AND but does not store result, only sets the flags
### Stack
Stack crucial for storing function parameters, return addresses, and local variables
* `push` and `pop` are used to manipulate values from stack
* `call` and `ret` are used for function calls and returning from functions
```
push eax    ; save eax value before calling function
call myfunction
pop eax     ; retore eax after function call
````
### Control Flow
* `jmp` - Unconditional jump to label or address
	* `jmp label`
* `je` - jumps if the zero flag is set (two values are equal)
* `jne` - jump if zero flag is clear (two values are not equal)
* `jg` - jump if sign flag and zero flag are clear (first value is greater than the second)
* `jl` - jump if sign flag is set (first value is less than second)
* `call` - call a function (push and return address onto the stack)
* `ret` - returns from a function
* `nop` - placeholder function that does nothing
### Comparison
These are used to compare values and set the status flags in the EFLAGS register.
* `cmp` - compares two operands (Subtracts them but does not store the result)
	* `cmp eax, ebx`
* `cmps` - compares two strings of data
	* `cmpsb` (compare byte at `[esi]` with `[edi]`)
#### Status Flags
The status flags reflect outcome from arithmetic and logical operations performed by CPU
* Zero flag (ZF) -
	* set if opperands are equal
	* cleared if operands are not equal
	* `cmp eax, ebx` results in `eax - ebx = 0`, zf is set
* Sign Flag (SF)
	* set if subtraction is negative
	* cleared if result is postiive or zero
	* 3 - 5 = -2
* Carry Falg (CF)
	* Set if there is a borrow in the subtraciton (`operand1 < operand 2`)
	* clear if no borrow occurs
* Auxiliary Carry Flag (AF)
	* set if there is a borrow from the lower nibble (in BCD arithmetic), but not typically used in general integer comparisions.
#### Setting Flags Manually
* STC (Set carry flag) - sets CF to 1
	* `STC`
* CMC (Complement Carry Flag) - toggle CF
* CLI (Clear Interrupt flag) - clear interrupt flag, disabling interrupts
* STI (set interrupt flag) - enables interrupts
#### Clearing Flags Manually
* CLC (Clear carry flag) - CF to 0
* CLD (clear direction flag) - DF to 0
* CLI (Clear interupt flag) - disable interupts
* FSTCW - floating point instruction that stores current control word into memory, then can be modified to affect the flags, specific to floating point unit and not general flags
### Shift and Rotate

### Strings
### Labels
Used to mark specific point in code that you can refer to for jumps or other control flow operations. Level essentially a named postion in program that you can use jump commands to get to.
```
start: 
	; code before jump
	jmp finish 
loop_start:
	jmp loop_start
finish:
```
Labels are NOT instructions, simply markers for locations in code.
Can be placed anywhere
Case-sensitive, `start` and `Start` are two completely different labels.
### System Instructions
Used to manage exectution of program on system level
* `int` - Trigger software interrupt
	* `int 0x80` (System call interrupt for linux)
* `hlt` - halts processer (ends program)
	* `hlt`
### Data
* Data types 
	* `byte` - 8 bits
	* `word` - 16 bits
	* `dword` - 32 bits
* Defining data - define data in the .data section of program
```
section .data
myVar db 10  ; Define a byte varialbe initialized to 10
```
* `global` - define variables or declare symbols accessible outside of current file or module. Needed in multi-file programs when writing code that interacts with other parts of the program or external libraries. gobal resolves references between different object files. global exposes fucntions or data so theyc an be used across files.
File 1 (main.asm)
```
section .text
    global _start           ; Make _start visible to linker

_start:
    ; Some code here...
    MOV EAX, 1              ; Exit system call
    INT 0x80                ; Make the system call to exit
```
File 2 (other.asm)
```
section .text
    extern _start           ; Declare _start as an external symbol

_some_function:
    ; Some other code here...
    JMP _start              ; Jump to _start function
```
### Example
```
section .data
    msg db 'Hello, World!', 0x0A ; The string to print (with newline)

section .text
    global _start ; Entry point

_start:
    ; write syscall (syscall number 4)
    mov eax, 4         ; syscall number for sys_write
    mov ebx, 1         ; file descriptor 1 (stdout)
    mov ecx, msg       ; pointer to the message
    mov edx, 14        ; message length
    int 0x80           ; make the syscall

    ; exit syscall (syscall number 1)
    mov eax, 1         ; syscall number for sys_exit
    xor ebx, ebx       ; return code 0
    int 0x80           ; make the syscall
```
Prints "Hello, Word!" to console

### **Key References**

- **Intel 64 and IA-32 Architectures Software Developer's Manual**: The official manual from Intel.
- **The Art of Assembly Language** by Randall Hyde: A comprehensive guide to assembly language programming.

### **Advanced Topics**
- **Interrupts**: How the processor handles hardware interrupts.
- **System Calls**: How to interact with the OS to perform tasks like file I/O.
- **Optimization**: Techniques for making your assembly code more efficient.
### Resources
* [x64 Cheat Sheet](obsidian://open?vault=Notes&file=04-Resources%2Fx64_cheatsheet.pdf) 
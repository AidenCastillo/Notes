The process of reserving [[memory]] space for use by programs or processes during their execution. Critical for efficient programming, debugging, and optimization of system performance.
It involves dividing a system's memory into usable segments for programs. Ensures each program has necessary resources to execute without interfering with others.

## Types
* ### Static Memory Allocation
	* Memory is allocated at compile-time. Size and type of memory are fixed and determined before program runs.
	* Memory cannot be resized or freed during runtime
	* Managed by [[compiler]]
	* Faster due to absence of runtime management overhead
```c
	int arr[10]
```
* ### Dynamic Memory Allocation
	* Memory is allocated during runtime, allowing flexible use of memory resources
	* Memory can be resized or freed during execution
	* Requires manual management by the programmer
```c
	int *arr = (int *) malloc(10 * sizeof(int));
```

## Memory Layout of a Program
Programs memory is divided into several regions all with specific purposes

| Region       | Description                                                                    | Example                                 |
| ------------ | ------------------------------------------------------------------------------ | --------------------------------------- |
| Text Segment | Contains compiled machine code of the program                                  | Executable intructions                  |
| Data Segment | Stores global and static variables initialized before runtime                  | `static int x = 10;`                    |
| BSS Segment  | Stores uninitialized global and static variables (default initialized to zero) | `static int y;`                         |
| [[Heap]]     | Dynamic Memory allocated during runtime                                        | `malloc()` or `new` in C++/Java         |
| [[Stack]]    | Stores function call frames, including local variables and return addresses    | Automatic (local) variables, recursion. |
## Dynamic Memory Management
### Common Functions for Memory Allocation in C
1. `malloc` (Memory Allocation)
	* Allocates uninitialized memory.
	* Returns a pointer to the allocated memory block
	* Syntax:
	```c
	void* malloc(size_t size);

	int *arr = (int *) malloc(10 * sizeof(int));
	```

2. `calloc` (Contiguous Allocation)
	* Allocates memory and initializes all bytes to zero
	```c
	void* calloc(size_t num, size_t size);

	int *arr = (int *) calloc(10, sizeof(int));
	```

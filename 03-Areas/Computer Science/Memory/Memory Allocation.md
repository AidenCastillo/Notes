The process of reserving [[Memory Leak]] space for use by programs or processes during their execution. Critical for efficient programming, debugging, and optimization of system performance.
It involves dividing a system's [memory](Memory.md) into usable segments for programs. Ensures each program has necessary resources to execute without interfering with others.

## Types
* ### Static Memory Allocation
	* Memory is allocated at compile-time. Size and type of memory are fixed and determined before program runs.
	* Memory cannot be resized or freed during runtime
	* Managed by [compiler](Compiler)
	* Faster due to absence of runtime management overhead
```c
	int arr[10]
```
* ### [[#Dynamic Memory Management]]
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
3. `realloc` (Reallocate Memory)
	* Resizes previously allocated memory.
	```c
    void* realloc(void* ptr, size_t size);
	
	arr = (int *) realloc(arr, 20 * sizeof(int));
	```
4. free
	* Frees dynamically allocated memory to prevent memory leaks.
```c
	void free(void* ptr);

	free(arr);
```
## Dynamic Memory in other languages
* [[C++]]: Uses `new` and `delete`
```c++
	int *arr = new int[10];
	delete[] arr;
```
* [[Java]]: Manages memory automatically via a [[Garbage Collection]]
	```java
	int[] arr = new int[10]; 
	```
* [[Python]]: Uses [[Garbage Collection]]
```python
	arr = [0] * 10
```
## Issues in Memory Allocation
* [Memory Leaks](Memory%20Leak.md)
	* Occurs when dynamically allocated memory is not freed.
	* Leads to gradual exhaustion of available memory.
* Dangling Pointers
	* Occurs when a [pointer](Pointers.md) references memory that has been freed.
* Double Free
	* Happens when `free()` is called on the same memory block.
* [[Buffer Overflow]]
	* Writing outside allocated memory boundaries can lead to undefined behavior or security vulnerabilities.
## Tools and Techniques for Debugging Memory Issues
* [[Valgrind]]
	* Detects memory leaks and invalid memory access in C/C++ programs
* AddressSanitizer
	* A fast memeory error detector in Clang and GCC
* GDB
	* Debugger for tracking memory issues during execution
* Memory Profilers
	* Tools like Dr. Memory and Heaptrack help profilel memory usage over time
## More Topics
* [[Memory Pooling]]
	* Pre-allocating large memory blocks and sub-dividing them into smaller chinks to improve allocation performance
* [[Garbage Collection Algorithms]]
	* Mark-and-Sweep, Reference Counting, Generational Garbage Colection
* [[Virtual Memory Management]]
	* How operating systems abstract and manage physical memory with virtual memory
* [[Custom Allocators]]
	* Implementing domain-specific memory allocation strategies
Processes are fundamental in modern computing. They enable multitasking and efficient resource use. 
A process is an instance of a program in execution. It includes the programs code, its data, allocated resources, and control flow through the program counter.
* Dynamically created and terminated
* requires resources like cpu, memory, and I/O devices to execute
* may have one or multiple threads of execution.
## Process Lifecycle
* New - Process is created but isn't yet ready for execution
* ready - process waits in ready queue for cpu allocation
* Running - Executing on the CPU
* Waiting/Blocking - Waiting for event (ex I/O completion) to resume execution
* Terminate - Process has completed execution or has been killed

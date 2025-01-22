A computer program that loads the system software. It is responsible for booting a computer. It is also the first code when a system is turned on. When a boot loader is provided with an interactive menu with multiple boot choices, it is often called a boot manager. Common bootloaders include [[GRUB]] and [[LILO]].

Software, operating systems, code, and data is all stored in non-volatile memory, meaning it does not require power to store data. It is physically written somewhere. When the computer is turned on, it usually does not have the operating system or loader in [[Ram]]. The computer executes a small program stored in read-only memory (ROM), along with some extra needed data, and initializes RAM, allowing the non-volatile data to be loaded. 

## How a Bootloader Works

### First-Stage
On early IBM PCs, a boot sector typically worked with 510 bytes of code and in only 32 kilobytes of system memory. The first stages of PC boot loaders on fixed disks and removeable drives must fit into the first 446 bytes in order to leave room for the default 64-byte partition table with four partitions entries and two-byte boot signature which the BIOS requires for a proper boot loader.  
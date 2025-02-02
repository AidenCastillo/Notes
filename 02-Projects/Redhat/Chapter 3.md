# File System Heirarchy
Stores all files on file systems whihc are organized into single inverted tree known as file-system hierarchy. Tree root is at top, and braches of directories and sub directories stretch below the root.
the `/` directoy is the root directory at top of file system. the `/` is also used to seperate directores or files in file names. for example `/etc/issue`

| Location | Purpose                                                                                                                                                                                                                                                                                                                     |
| :------- | :-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| `/boot`  | Files to start the boot process.                                                                                                                                                                                                                                                                                            |
| `/dev`   | Special device files that the system uses to access hardware.                                                                                                                                                                                                                                                               |
| `/etc`   | System-specific configuration files.                                                                                                                                                                                                                                                                                        |
| `/home`  | Home directory, where regular users store their data and configuration files.                                                                                                                                                                                                                                               |
| `/root`  | Home directory for the administrative superuser, `root`.                                                                                                                                                                                                                                                                    |
| `/run`   | Runtime data for processes that started since the last boot. This data includes process ID files and lock files. The contents of this directory are re-created on reboot. This directory consolidates the `/var/run` and `/var/lock` directories from earlier versions of Red Hat Enterprise Linux.                         |
| `/tmp`   | A world-writable space for temporary files. Files that are not accessed, changed, or modified for 10 days are deleted from this directory automatically. The `/var/tmp` directory is also a temporary directory, in which files that are not accessed, changed, or modified in more than 30 days are deleted automatically. |
| `/usr`   | Installed software, shared libraries, including files, and read-only program data. Significant subdirectories in the `/usr` directory include the following commands:<br><br>- `/usr/bin`: User commands<br>    <br>- `/usr/sbin`: System administration commands<br>    <br>- `/usr/local`: Locally customized software    |
| `/var`   | System-specific variable data should persist between boots. Files that dynamically change, such as databases, cache directories, log files, printer-spooled documents, and website content, might be found under `/var`.                                                                                                    |
|          |                                                                                                                                                                                                                                                                                                                             |
# Absolute Paths
Fully qualified ame that specifies the exact location of the file in file-system hierarchy. begins with root `/` directory and includes each subdirectory that must be traversed to reach teh specified file. Every file has unique absolute path. `/var/log/message`
# Relative
Relative path identifies a unique location, and specifies only the necessary path to reach location from the working direcotry. anything other than a forward slash as the first character is relative path name. if in `/var` then relative would be `log/message`
# Navigate paths
## pwd
displaces the full path name of current working directory
## cd`
chage shell current working directory. Displaces the ~ symbpole when inside the home directory
## touch
updates teh time spampt of file to current dat and time without modifying it . Useful for creating empty files, and can be used for practice, because when you se touch with file name tha tdoesnt exist, the file is created.
## ls
multiple optinos for displaying attributes on files. most common are -l (long listing formate) -a (all files, including hidden) and -R (recursive)
one . refers to current directory, two . refers to parent direcotry. the ~ will send to home directory

`cd -` returns you to the working directory before the current working directory
the `cd ..` also moves up onenl level 
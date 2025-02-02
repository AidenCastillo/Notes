# Bash Shell
Default shell in RHEl is GNU Bourne-Again Shell (Bash). When in regular user mode, prompt includes an ending dollar $ character
[user@host ~]$
in sudo or root mode, it is replaced by a # mark
terminal is text-based interface to enter comamnds and print output from computer
phsical console connected keyboard and display for input and output. it supports multiple virual consoles, to run seperate terminals. Each virtual console supports independent login session. Swtich between consoles by pressing ctrl+alt and funciton ke F1-F6 at same time. Most consolers run terminal that provides a text login prompt. computer might include graphical login prompt to virtial console. You can use graphical login to enter graphical environment,which runs seperate from virtual console.
in RHEL 9 if graphical environment availanle, login screen runs ont he virst virutal consle, called tty1, addutional login rpompts are availble in two tty2 thorugh 6 tty6

graphical engironment runs on first login session that is not currenlty being used. graphical replaces login prmpt on second console tty2. If acive text login session (not just login prmpt) is using that console, then next free console is used.

A headless server does not have a keyboard or display that is permanetly connected, typically like those in data centers in racks. Admins login through the provided serial consol, running on the serial port connected to networked sonsole server for remote access.
serial console normally used if network card becomes misconfidered and logging to the server over convential network connection becomes imppsible. headless servers are accessed by otehr means over network like Virutal Network Computering VNC for running graphical interface on target machine.

In linux most common way to connect to remote system is to use Secure Shell (SSH). Most systems and macOs provide openSSH command line program ssh for this purpsose.
```
[user@host ~]$ **`ssh remoteuser@remotehost`**
remoteuser@remotehost's password: **`password`**
[remoteuser@remotehost ~]$
```
ssh encryptes connection to secure communicationa gainst eavesdroppping or hijacking the password/conetnt
Some cloud instances do not allow the use of password to log in with sshh. Other authenticate with a public key authenticiation.
Users have a special identity file with a private key, equivalent to a password. Accout on server is configured with matching public key, which does not have secret Users can confiure ssh to provide private key. If matching public key is insstalle on remote server, the it logs in without a passworod
ssh -i option uses private key file 
```
ssh -i mylab.pem remoteuser@remotehost
```
only the user who owns file can access the read to the private key file. you can do `chmod 600 mylab.pem` to ensure only owner can read the file.
Every time you connect ssh, remote ehsot sends host key to authenticate itself to ensure encypted communication. ssh command compares host keys to saved list of keys and ensures nothing changed. If changed it will indicate somoene is trying to pretendto be the host and hijack connection. Interceptor attack
to log out perform `exit` or `ctrl-D`

# GNOME
RHEL 9 proviese integreated desktop for users on top of grpaical frameowkr either Wayland by defaiul or legaxy X Window System
GNOME SHell providdes the core user interface functions for GNOME desktop engironment. Shell appliation highly customizanle. Default shell appearece to standard theme
top bar displaces aciviesi overview and in workspaces. Controls for volume network and calander access. Keyboard inputs
Activites helps organicze window sand start applications. Like the windows key. upper left corner of top bar. 
system menu provides control to brightness, swtich on or off entwork, log out, settings, loc, or shut donw
dash shows running applications
window overview sows overview that displace thumpnails of active window in current workspace. brings window to foreground on cluttered workspace. 
workspace selector allows seclting workspaces nad moving windows from one to another
message tray revew notifications from apps or system. 
workspaces are seperate desktop screens with different applciation wwindows. Organize wkring environment by grouping open applications wiwndows by task. to swiwtch between workspaces, first method is to press ctrl+alt+leftArrow or right arry. 
to get to shell prmpt in GNOMe, open Terminal app

# Commands
to type multiple commands on single line use semicolon
`command1 ; command 2`

## Date command
super user or priviledged user can use `date
```
[user@host ~]$ **`date`**
Sun Feb 27 08:32:42 PM EST 2022
[user@host ~]$ **`date +%R`**
20:33
[user@host ~]$ **`date +%x`**
02/27/2022
```

## passwd 
configured to require a strong passwowrd, to consist of lowercase, uppercase, numbers and symbols, and not based on diciotnary word. super user can use comannd

## file
file scans the compiled header of a file for a 2-digit magic number and sipalys its type. Text files are recognized because they are not compiled. Lnusx does not require file name extensions to classify file by type, so it uses file command
```
[user@host ~]$ **`file /etc/passwd`**
/etc/passwd: ASCII text
[user@host ~]$ **`file /bin/passwd`**
/bin/passwd: setuid ELF 64-bit LSB pie executable, x86-64, version 1 (SYSV), dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, BuildID[sha1]=a467cb9c8fa7306d41b96a820b0178f3a9c66055, for GNU/Linux 3.2.0, stripped
[user@host ~]$ **`file /home`**
/home: directory
```
## cat
views contnet of file
view content of multiples files by doing `cat file1 file2`
`less` command displaces one page of file at a time you can scrol at your pace, unlike cat which spits everyhing at once

## head and tail
displays beginning and end of file. display 10 lines of file but can us  -n to specify idffernet number
## wc
counts line, words, characters using -l -w -c to displace only given command

## tab completion
useres can complete commands or file names after tpying enough at the prompt to make it unique. pressing tab key twice displaces all commands that beign with type characters

## useradd
creates users on sstem , has many options that may be hard to remmeber, so use tab completeion to complete option name with minimal typing

## Long command on multiple lines
use \ backslace to use more than one line, it is refered as an escape character and ignores meaing of the following character. By pressing the newline character or enter, shell moves to new command line without executing command. Shell Acknologeseg ther equrest by displaying continuation prompt at new empty line.
```
[user@host ~]$ **`head -n 3 \`**
**`/usr/share/dict/words \`**
**`/usr/share/dict/linux.words`**
==> /usr/share/dict/words <==
1080
10-point
10th

==> /usr/share/dict/linux.words <==
1080
10-point
10th
```

## esc+
use combination of esc + to insert last word of previous command at cursor current lcationo. repeated use will replace text with last word of earlier commands in history ALT+ works too as you can do ALT and press . repeately to cucle earlier commands
## history
displaces previously exectuerd commands with prefix with command number
! character expands previous command without retpying them. !number expands the command to match specifited number. !string expands most recent command that begins with said string.
```
[user@host ~]$ **`history`**
_...output omitted..._
   23  clear
   24  who
   25  pwd
   26  ls /etc
   27  uptime
   28  ls -l
   29  date
   30  history
[user@host ~]$ **`!ls`**
ls -l
total 0
drwxr-xr-x. 2 student student 6 Feb 27 19:24 Desktop
_...output omitted..._
[user@host ~]$ **`!26`**
ls /etc
abrt                     hosts                     pulse
adjtime                  hosts.allow               purple
aliases                  hosts.deny                qemu-ga
_...output omitted..._
```

## editing shortcuts

| shortcut   | descrption                                  |
| ---------- | ------------------------------------------- |
| ctrl+a     | jumps to beginning of line                  |
| ctrl+e     | end of line                                 |
| ctrl+u     | clear from curser to beginning              |
| ctrl+k     | clear from curser to end                    |
| ctrl+left  | jump to beginning of previous word          |
| ctrl+right | jump to end of next work                    |
| ctrl+r     | serach hsitory list of commands for pattern |

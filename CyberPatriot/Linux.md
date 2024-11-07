## Add users to group
* `sudo usermod -a -G <group> <user>`
## Locate Files on entire system
locate -i '*.mp3'

## Decrypt
echo -n '1jn9cjscinoan' | base64 -d
## Encrypt
echo -n 'Message' | base64

## List Users
cat /etc/passwd

## Update only specific package
sudo apt-get install firefox

## Remove user
* `sudo userdel <user>`
## List Groups
cat /etc/group
- shows who has admin rights in lpadmin
## Remove user from sudo
`sudo deluser <username> <group>
for sudo change group to sudo

## Update user password
`sudo passwd <username>

## Update password policy
`sudo gedit /etc/pam.d/common-password
- where it says `password [success=2 default=ignore] pam_unix.so add minlen=8

## Update auth policy (lockout)
`sudo gedit /etc/pam.d/common-auth
 only remove nullok so null passwords dont work

## Update check if services are running
UFW fire wall `sudo ufw status`
If off, sudo ufw enable

check services by running `systemctl list-units --type=service --state=active`
Disable by running `systemctl disable <service>` and `systemctl stop <service>

## Shut off ssh root login
Make it off limits by checking `sudo gedit /etc/ssh/sshd_config`
Change PermitRootLogin to `no`
## Turn off nginx
turn off in services
Vulnerable

Find out all files that are not owned by any user:
Type the following command:
find / -nouser

These commands are useful if you deleted a user account and wish to list those files. Pass the -ls to list them:
find / -uid 1000 -ls

## Remove netcat backdoor
type in sudo ss -tlnp
Make sure no ports are listening to any low port numbers (1-7) in Send-Q
edit /etc/crontab remove the line containing the malicious process
sudo pkill -f <process> 
sudo rm /usr/bin/<process

## Insecure peremissions on shadow file fixed
To see permisions of shadow file type
ls -alF /etc/shadow
File may show as world readable
-rw-r--r-- 1 root shadow 4386
type sudo chmod 640 /etc/shadow 
to remove all world permissions from shadow file

## IPv4 TCP SYN cookies have been enabled
edit /etc/sysctl.conf
Change net.ipv4.tcp_syncookies=0 to net.ipv4.tcp_syncookies=1
save file and type sudo sysctl --system to allow settings

## IPv4 forwarding has been disabled
in /etc/sysctl.conf
change net.ipv4.ip_forward=1
to net.ipv4.ip_forward=0

## Account lockout policy is configured
sudo touch /usr/share/pam-configs/faillock
edit the file
place 
`Name: Enforce failed login attempt counter
Default: no
Priority: 0
Auth-Type: Primary
Auth:
 [default=die] pam_faillock.so authfail
 sufficient pam_faillock.so authsucc
 `
Create anotoher filel /usr/share/pam-configs/faillock_notify
`Name: Notify on failed login attempts
Default: no
Priority: 1024
Auth-Type: Primary
Auth:
 requisite pam_faillock.so preauth
 `
type sudo pam-auth-update and select Notify on failed login attemps and Enforce failed login attempt counter

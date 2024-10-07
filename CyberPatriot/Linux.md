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
UFW fire wall `sudo ufw status
If off `sudo ufw enable

check services by running `systemctl list-units --type=service --state=active`
Disable by running `systemctl disable <service>` and `systemctl stop <service>

## Shut off ssh root login
Make it off limits by checking `sudo gedit /etc/ssh/sshd_config`
Change PermitRootLogin to `no`
## Turn off nginx
turn off in services
Vulnerable


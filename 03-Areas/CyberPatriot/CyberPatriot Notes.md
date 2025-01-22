## Find Shared Networks
1. Computer Management
2. Shared Folders
3. Find unauthorized share
4. Stop sharing by right clicking
## Find Checksum values (Sha512)
### Powershell
1.  Get-FileHash -Path C:\Users\dovahkiin\Desktop\jarlsberg.png
### Command Prompt
1. certfutil -hashfile C:\Users\dovahkiin\Desktop\jarlsberg.png SHA512
### Check Users for Administrator
1. Go to control panel
2. User Accounts
3. Manage Another Account
4. Search for users with administrator rights that shouldn't have it
### Check Users for Passwords
1. Control Panel
2. User Accounts
3. Manage Another Account
4. Search users for accounts that aren't password protected
### Ensure all users have Password Age Expiration
1. Group policy
2. groups
3. Security
4. Account policy
5. change password policy settings
6. change password lockout settings
### Turn Firewall on
1. Settings
2. Security
### Automatic Updates
    In Group Policy Object Editor, expand Computer Configuration, expand Administrative Templates, expand Windows Components, and then click Windows Update.
    In the details pane, click Configure Automatic Updates.
    Click Enabled and select one of the following options: ...
    Click OK.
### Remove Hacking tools and unwanted programs
1. Settings
2. Apps and programs
3. Remove unwanted programs

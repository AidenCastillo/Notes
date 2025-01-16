Set-LocalPasswordPolicy -PasswordComplexity 1 -MinimumPasswordLength 14 -MaximumPasswordAge 90 -MinimumPasswordAge 1 -PasswordHistorySize 24 -LockoutBadCount 5 -LockoutDuration 30 -LockoutObservationWindow 30

Set-GroupPolicy -PasswordComplexity 1 -MinimumPasswordLength 14 -MaximumPasswordAge 90 -MinimumPasswordAge 1 -PasswordHistorySize 24 -LockoutBadCount 5 -LockoutDuration 30 -LockoutObservationWindow 30

# Limit local account use of blank passwords to console logon only
Set-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Lsa" -Name "LimitBlankPasswordUse" -Value 1

# Disable the Guest account
Set-LocalUser -Name "Guest" -Description "Built-in account for guest access to the computer/domain" -Enabled 0

# Turn on Firewall
Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled True

# Turn on Windows Defender
Set-MpPreference -DisableRealtimeMonitoring $false
Set-MpPreference -DisableIOAVProtection $false
New-Item -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "Real-Time Protection" -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableBehaviorMonitoring" -Value 0 -PropertyType DWORD -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableOnAccessProtection" -Value 0 -PropertyType DWORD -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender\Real-Time Protection" -Name "DisableScanOnRealtimeEnable" -Value 0 -PropertyType DWORD -Force
New-ItemProperty -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows Defender" -Name "DisableAntiSpyware" -Value 0 -PropertyType DWORD -Force
start-service WinDefend
start-service WdNisSvc

# Turn on Automatic Windows Updates
Set-ItemProperty -Path "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update" -Name "AUOptions" -Value 4

# Check if Event Log Service is running
if ((Get-Service -Name "EventLog").Status -ne "Running") {
    Start-Service -Name "EventLog"
}

# Disable FTP Server and Shut Down FTP Service
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Services\FTP" -Name "Start" -Value 4
Stop-Service -Name "FTP"

# Disable Remote Desktop
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Terminal Server" -Name "fDenyTSConnections" -Value 1

# Disable Remote Assistance
Set-ItemProperty -Path "HKLM:\System\CurrentControlSet\Control\Remote Assistance" -Name "fAllowToGetHelp" -Value 0

# Check if WireShark is installed and prompt user to uninstall
if (Test-Path "C:\Program Files\Wireshark") {
    Write-Host "Wireshark is installed. Please uninstall it."
}

# Check if TeamViewer is installed and prompt user to uninstall
if (Test-Path "C:\Program Files\TeamViewer") {
    Write-Host "TeamViewer is installed. Please uninstall it."
}

# Check if BitTorrent is installed and prompt user to uninstall
if (Test-Path "C:\Program Files\BitTorrent") {
    Write-Host "BitTorrent is installed. Please uninstall it."
}

# Check if uTorrent is installed and prompt user to uninstall
if (Test-Path "C:\Program Files\uTorrent") {
    Write-Host "uTorrent is installed. Please uninstall it."
}

# Check if any media files are present in the system and prompt user to remove them and include path (mp3, mp4, avi, mov, wmv) 
$mediaFiles = Get-ChildItem -Path "C:\Users" -Include *.mp3, *.mp4, *.avi, *.mov, *.wmv -Recurse
if ($mediaFiles) {
    Write-Host "Media files found in the system. Please remove them:"
    $mediaFiles | ForEach-Object { Write-Host $_.FullName }
}

# Check if any unauthorized software is installed and prompt user to uninstall
$unauthorizedSoftware = @("Kali Linux", "Metasploit", "Cain and Abel", "John the Ripper", "Nmap", "Angry IP Scanner")
foreach ($software in $unauthorizedSoftware) {
    if (Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*" | Where-Object { $_.DisplayName -eq $software }) {
        Write-Host "$software is installed. Please uninstall it."
    }
}

# Check if any unauthorized services are running and prompt user to stop them
$unauthorizedServices = @("Netcat", "Meterpreter", "VNC", "RAT")
foreach ($service in $unauthorizedServices) {
    if ((Get-Service -Name $service -ErrorAction SilentlyContinue)) {
        Write-Host "$service service is running. Please stop it."
    }
}

# Check if each user has password


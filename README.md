# Welcome to my page of Intune tips and tricks!
These things may or may not help you with any issues you have in Intune.<br>
Subdirectories contain specific fixes and scripts. This main page contains general tips and tricks.

# General tips and tricks for Intune 

<details>
<summary>Install command for Powershell scripts as Win32 apps</summary>
Many online recommend the below as the install command for PS scripts deployed as Win32 apps.<br>

```powershell.exe -noprofile -executionpolicy bypass -file .\SCRIPT.ps1```

However, this initiates a 32-bit Powershell host. This is necessary if you're deploying to 32 bit machines, but you're probably deploying to a fleet of 64 bit-only machines. 
With a 32-bit Powershell host, we are limited on the cmdlets we can use. Instead of the above install command, use this instead to initiate as a 64-bit host. If you ever had PS scripts fail as a Win32 app, the use of 32-bit Powershell host is likely why.<br>

```%WINDIR%\sysnative\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy bypass -windowstyle hidden -file .\SCRIPT.ps1```

I recommend the flag to keep the window style hidden as well since many 64 bit cmdlets initiaite a Powershell window. 
</details>

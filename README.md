# Welcome to my page of Intune tips and tricks!
These things may or may not help you with any issues you have in Intune.<br>
Subdirectories contain specific fixes and scripts. This main page contains general tips and tricks.

# General tips and tricks for Intune 

<details>
<summary>Install command for Powershell scripts as Win32 apps</summary><br>
I see a lot of people online recommending the below as the install command for PS scripts deployed as Win32 apps.<br>

```powershell.exe -noprofile -executionpolicy bypass -file .\SCRIPT.ps1```

However, this uses a 32-bit Powershell host. This is fine if you're deploying to 32 bit machines, but you're more likely to be deploying to 64 bit machines. 
With a 32-bit Powershell host, we are limited on the cmdlets we can use. Instead of the above install command, use this instead to initiate as a 64-bit host.<br>

```%WINDIR%\sysnative\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy bypass -windowstyle hidden -file .\SCRIPT.ps1```

I have also included the flag to keep the window style hidden since many cmdlets in 64 bit create a Powershell window, which you wouldn't want an end user to see. 
</details>

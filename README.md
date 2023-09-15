# General tips and tricks for Intune 

#### Deploying Powershell scripts
I see a lot of people online recommending the below as the install command for PS scripts deployed as Win32 apps.<br>
```powershell.exe -noprofile -executionpolicy bypass -file .\SCRIPT.ps1```<br>
However, this uses a 32-bit Powershell host. This is fine if you're deploying to 32 bit machines, but you're more likely to be deploying to 64 bit machines. 
With a 32-bit Powershell host, we are limited on the cmdlets we can use. Instead of the above install command, use this instead to initiate as a 64-bit host. <br> 
```%WINDIR%\sysnative\WindowsPowerShell\v1.0\powershell.exe -noprofile -executionpolicy bypass -windowstyle hidden -file .\SCRIPT.ps1```<br>
I have also included the flag to keep the windowstyle hidden since many cmdlets in 64 bit tend to create a Powershell window, which you wouldn't want an end user to see. 

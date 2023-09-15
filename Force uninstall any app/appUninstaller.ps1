<#The shutdown commands featured here are specifically to prevent the uninstallers from forcing a computer reboot. Apps like Forticlient force an instant reboot after an uninstall via wmic.
After the uninstall command is completed, it then cancels all shutdown commands in queue, including the 10 year one and the one initiated by the uninstaller. #>
By engaging a shutdown with a timer of 10 years, it will prevent any other reboot command from happening
shutdown /s /t 315359999 /c " " | cmd
wmic product where "name like 'FortiClient%%'" call uninstall | cmd 
shutdown /a | cmd 

## This section is specifically to generate a file for detection to deploy this app as a Win32 app on Intune. Modify $folderPath to your liking to adjust where you want the generated file to be. 
$folderPath = "C:\scripts"
if (-Not (Test-Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
}

New-Item -Path $folderPath\forticlient -type file 
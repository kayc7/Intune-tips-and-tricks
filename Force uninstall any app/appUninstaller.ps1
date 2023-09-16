# The shutdown commands featured here are specifically to prevent the uninstallers from forcing a computer reboot. Apps like Forticlient force an instant reboot after an uninstall via wmic.

## Start a timer for 10 years, preventing uninstaller shutdown command from working. /c flag with a blank string prevents a notification from popping on the user's screen. 
shutdown /s /t 315359999 /c " " | cmd
wmic product where "name like 'FortiClient%%'" call uninstall | cmd 
shutdown /a | cmd 

### This section is specifically to generate a file for detection to deploy this app as a Win32 app on Intune. Modify $folderPath to your liking. Adjust the name of the generated file as needed as well. 
$folderPath = "C:\scripts"
if (-Not (Test-Path $folderPath)) {
    New-Item -Path $folderPath -ItemType Directory
}

New-Item -Path $folderPath\forticlient -type file 

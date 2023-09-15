Uninstalling apps via the uninstall command can sometimes fail due to the app auto-updating and the uninstall command only being connected to the specific version that the Intune package specifically started with. Forticlient is one such app I ran into this problem with. 

I resolved this by using the wmic utility in CMD. This allows us to uninstall any app in *Programs and Features* Control Panel. The script included is specifically to uninstall Forticlient, adjust the name of the program to your liking. 

**Please remember that this only works for programs listed in *Programs and Features*.**

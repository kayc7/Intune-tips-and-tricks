** For whatever reason, sometimes random devices have an issue with granting administrative privileges using the AAD device local admin credentials. 
This can be resolved using the steps below. ** <br>
1. Open Powershell window as the standard user. (Win + R, powershell) 
2. Enter the below command, make sure to replace [device administrator email] and [domain.com] with yours.

```
runas /user:AzureAD\[device administrator email]@domain.com "Powershell.exe"
```

3. Enter password for admin user account
4. New Powershell window should open
5. In the new window, run 

```
start-process -verb runas powershell.exe
```

6. Accept UAC elevation
7. Admin Powershell window spawns, the error should also clear from UAC prompts from now on

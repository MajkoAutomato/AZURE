

If you want to use Azure in Powershell from you local computer you need to check the Azure PowerShell module is installed or you can run the script to do so.



You can do that manually to connect to Azure-Account in Powershell using cmdlet as below and hit enter!
Bear in mind to use the newest version of Powershell!:

# Connect-AzAccount


If you see this message:

connect-azaccount : The term 'connect-azaccount' is not recognized as the name of a cmdlet, function, script file, or
operable program. Check the spelling of the name, or if a path was included, verify that the path is correct and try
again.
At line:1 char:1
+ connect-azaccount
+ ~~~~~~~~~~~~~~~~~
    + CategoryInfo          : ObjectNotFound: (connect-azaccount:String) [], CommandNotFoundException
    + FullyQualifiedErrorId : CommandNotFoundException





Open powershell with admin rights and set the right execution policy.
Check my repository https://github.com/MajkoAutomato/ISE-Powershell/tree/main/SetExecuitionPolicy
Use the cmdlets, it might take some time to install and importing all packages.

# Install-Module Az
# Import-Module Az
# Connect-AzAccount 








This is an optimized version with variables related to https://github.com/MajkoAutomato/AZURE/tree/main/AZURE_POWERSHELL/VM_WINDOWS

You need to decide if your resource group should be deleted, thus we will remove the command line from the script.
Bear in mind to use admin permission to run the script.

# Remove the resource group
# Remove-AzResourceGroup -Name $resourceGroupName -Force -AsJob 


# Define variables
# Create a new resource group
# Create a new virtual machine
# Create a PowerShell script file with the command to install the Web Server role
# Invoke the PowerShell script on the virtual machine
# Retrieve and display the public IP address of the virtual machine

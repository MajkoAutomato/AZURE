This script is an optimized version with prompts and variable declaration to the short instruction VM_Windows 

(https://github.com/MajkoAutomato/AZURE/tree/main/AZURE_POWERSHELL/VM_WINDOWS)

You need to decide if your resource group should be deleted, thus we will remove the command line from the script.
Bear in mind to use admin permission to run the script.


# Remove the resource group and all associated resources (VM, public IP, etc.)
# Remove-AzResourceGroup -Name $resourceGroupName -Force -AsJob 




# Prompt for resource group name
# Prompt for VM name
# Prompt for location
# Prompt for virtual network name
# Prompt for subnet name
# Prompt for public IP address name
# Prompt for open ports (comma-separated)
# Create a new resource group
# Create a new virtual machine
# Define the script to install the Web Server feature
# Define the command to write to the script file
# Define where to save the script
# Check if the TEMP directory exists
# Check if running with administrative privileges
# Check if the file already exists and confirm overwriting
# Create a script file with the script content
# Upload and execute the script on the VM
# Get the public IP address of the VM






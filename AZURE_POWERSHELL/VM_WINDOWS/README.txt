

This short instruction will give you the opportunity to get in touch with Powershell and Microsoft Azure Cloud.

You are logging on azure and create a VM Windows with web server.


# create a resource group for logical container named testdemo for location EastUS

# create a VM Windows named testdemowindows in our resource group testdemo location EastUS additional a virtual network, subnet, securitygroup, public ip address and open port 80, 3389 for RDP

# windows will be set as default if other OS is not specified in our script

# type user credentials

# create a web server on VM

# invoke the script testdemo.ps1 in our VM 

# get public ip address from resource group

# copy the ip address from our output and paste it in our url bar

Congratulation! If you see the windows server then our connection is established , successfully.

In order to remove the entire resource group write the command as below and confirm the deletion process.

Remove-AzResourceGroup -Name testdemo 




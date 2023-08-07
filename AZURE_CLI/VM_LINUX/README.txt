

This short instruction will give you the opportunity to get in touch with command-line interface and Microsoft Azure Cloud.

You are logging on azure and create a VM Linux Ubuntu with web server nginx.

-- defining variables
-- we are about to log on azure resource
-- create a resource group
-- creating a Linux VM named testdemolinux within the resource group testdemo
-- save pubilic key on local computer
-- run a custom script in order to invoke the ubuntu web server and run nginx
-- open port 80 to access nginx
-- paste public ip address into URL of your internet browser
-- remove web server and resource group

If you see the nginx welcome page then we were successful.

Congratualtion you have create a Linux VM web server :)

If the web server is no longer in use then we will remove it

az group delete --name $rgName --no-wait --yes --verbose


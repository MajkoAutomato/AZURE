

This short instruction will give you the opportunity to get in touch with command-line interface and Microsoft Azure Cloud.

You are logging on azure and create a VM Windows with web server including management tools.


-- we are about to log on azure resource

-- create a resource group testdemo and VM Windows with username azureuser, additional public ip address

-- type admin password and copy the public ip address on local computer

-- run custom script to install windows feature web-server including management tools

-- create command and open port to establish the connection to web server

-- paste the public ip address in url bar and hit enter

If you see the welcome page of windows then we were successful.

Congratualtion you have create a VM Windows web server :)

If the web server is no longer in use then we will remove it, as follows

az group delete -n testdemo

Confirm deletion process


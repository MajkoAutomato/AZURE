
We are about to create a ssh public-private key pair for a Linux VM without passphrase


# create the target directory in C:\Users\Public\.ssh in if statement
# generate the SSH keygen which uses the privacy-enhanced mail format
# generate RSA algorithm with 4096 bits
# save the key pair in C:\Users\Public\.ssh 
# add parameter not to use passphrase and invoke sshKeygenCommand
# create an if else statement that key pair has been stored successfully using Write-Host command else failed to generate a ssh key


Be cautious when generating SSH keys without a passphrase,
as it can expose you to risks if the private key is ever compromised.
In order to run script you will need to change the execution policy as admin.


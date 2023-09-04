


$directory = C:\Users\Public\.ssh
if (-Not (Test-Path $directory)) {
    New-Item -ItemType Directory -Path $directory
}


$sshKeygenCommand = ssh-keygen -m PEM -t rsa -b 4096 -f C:\Users\Public\.ssh\id_rsa -N ""
Invoke-Expression $sshKeygenCommand


if (Test-Path C:\Users\Public\.ssh\id_rsa) {
    Write-Host "SSH key generated successfully and stored in C:\Users\Public\.ssh\id_rsa"
} else {
    Write-Host "Failed to generate SSH key."
}

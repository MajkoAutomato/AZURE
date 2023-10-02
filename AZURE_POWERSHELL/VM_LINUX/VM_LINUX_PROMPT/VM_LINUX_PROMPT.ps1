

Connect-AzAccount

$resourceGroupName1 = Read-Host "Enter the name for the first resource group"

$resourceGroupName2 = Read-Host "Enter the name for the second resource group (VM)"

$location = Read-Host "Enter the location (e.g., EastUS)"

$image = Read-Host "Enter the image for the VM (e.g., Debian)"

$size = Read-Host "Enter the size for the VM (e.g., Standard_B2s)"

$publicIpAddressName = Read-Host "Enter the public IP address name for the VM"

$sshKeyName = Read-Host "Enter the SSH key name for the VM"


New-AzResourceGroup -Name $resourceGroupName1 -Location $location

New-AzVm -ResourceGroupName $resourceGroupName2 -Name $resourceGroupName2 -Location $location -Image $image -Size $size -PublicIpAddressName $publicIpAddressName -OpenPorts 80 -GenerateSshKey -SshKeyName $sshKeyName

$scriptFile = ".\testdemolinux.sh"
echo 'sudo apt-get update && sudo apt-get install -y nginx' > $scriptFile

Invoke-AzVMRunCommand -ResourceGroup $resourceGroupName1 -Name $resourceGroupName1 -CommandId RunShellScript -ScriptPath $scriptFile

Get-AzPublicIpAddress -ResourceGroupName $resourceGroupName2 -Name $publicIpAddressName | select "IpAddress"

$confirmRemove = Read-Host "Do you want to remove the resource group $resourceGroupName1? (yes/no)"
if ($confirmRemove -eq 'yes') {
    Remove-AzResourceGroup -Name $resourceGroupName1
    Write-Host "Resource group $resourceGroupName1 removed."
} else {
    Write-Host "Resource group $resourceGroupName1 was not removed."
}

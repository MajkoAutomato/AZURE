

Connect-AzAccount

$resourceGroupName1 = "testdemo"
$resourceGroupName2 = "testdemolinux"
$location = "EastUS"
$image = "Debian"
$size = "Standard_B2s"
$publicIpAddressName = "testdemolinux"
$sshKeyName = "testdemolinux"
$scriptFile = ".\testdemolinux.sh"

New-AzResourceGroup -Name $resourceGroupName1 -Location $location

New-AzVm -ResourceGroupName $resourceGroupName2 -Name $resourceGroupName2 -Location $location -Image $image -Size $size -PublicIpAddressName $publicIpAddressName -OpenPorts 80 -GenerateSshKey -SshKeyName $sshKeyName

echo 'sudo apt-get update && sudo apt-get install -y nginx' > $scriptFile

Invoke-AzVMRunCommand -ResourceGroup $resourceGroupName1 -Name $resourceGroupName1 -CommandId RunShellScript -ScriptPath $scriptFile

Get-AzPublicIpAddress -ResourceGroupName $resourceGroupName2 -Name $publicIpAddressName | select "IpAddress"
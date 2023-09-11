
$resourceGroupName = "testdemo"
$location = "EastUS"
$vmName = "testdemoWindows"
$virtualNetworkName = "testdemo"
$subnetName = "testdemo"
$securityGroupName = "testdemo"
$publicIpAddressName = "testdemo"
$openPorts = @(80, 3389)
$scriptPath = ".\testdemo.ps1"


New-AzResourceGroup -Name $resourceGroupName -Location $location


New-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Location $location 
        -VirtualNetworkName $virtualNetworkName -SubnetName $subnetName 
        -SecurityGroupName $securityGroupName -PublicIpAddressName $publicIpAddressName 
        -OpenPorts $openPorts

echo 'Install-WindowsFeature -Name Web-Server -IncludeManagementTools' | Set-Content -Path $scriptPath


Invoke-AzRunCommand -ResourceGroupName $resourceGroupName -Name $vmName -CommandId "RunShellScript" -ScriptPath $scriptPath


Get-AzPublicIpAddress -ResourceGroupName $resourceGroupName -Name $vmName | Select-Object -Property "IpAddress"






$resourceGroupName = Read-Host "Enter the Resource Group name"
$vmName = Read-Host "Enter the VM name"
$location = Read-Host "Enter the Azure region (e.g., EastUS)"
$virtualNetworkName = Read-Host "Enter the Virtual Network name"
$subnetName = Read-Host "Enter the Subnet name"
$publicIpAddressName = Read-Host "Enter the Public IP Address name"
$openPorts = (Read-Host "Enter open ports") -split ',' | ForEach-Object { $_.Trim() }



New-AzResourceGroup -Name $resourceGroupName -Location $location


New-AzVM -ResourceGroupName $resourceGroupName -Name $vmName -Location $location -VirtualNetworkName $virtualNetworkName -SubnetName $subnetName -SecurityGroupName $vmName -PublicIpAddressName $publicIpAddressName -OpenPorts $openPorts -Image "Win2019Datacenter" -Size "Standard_DS2_v2" -Credential (Get-Credential) -AllowExtensionScriptExtension


$script = 'Install-WindowsFeature -Name Web-Server -IncludeManagementTools'


$scriptPath = Join-Path -Path $env:TEMP -ChildPath "install-webserver.ps1"


if (-Not (Test-Path $env:TEMP)) {
    Write-Host "The TEMP directory does not exist."
    return
}


$isAdmin = ([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole] "Administrator")
if (-Not $isAdmin) {
    Write-Host "Warning: The generated script should be run as an Administrator."
}


if (Test-Path $scriptPath) {
    $confirm = Read-Host "$scriptPath already exists. Do you want to overwrite it? (y/n)"
    if ($confirm -ne 'y') {
        Write-Host "Aborted."
        return



Invoke-AzVMRunCommand -ResourceGroupName $resourceGroupName -VMName $vmName -ScriptPath $scriptPath


$publicIpAddress = (Get-AzPublicIpAddress -ResourceGroupName $resourceGroupName -Name $publicIpAddressName).IpAddress
$publicIpAddress


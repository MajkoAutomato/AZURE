$moduleInstalled = Get-Module -ListAvailable -Name Az

if ($moduleInstalled) {
    Write-Host "Azure Az module is installed."

    $modulePath = $moduleInstalled.ModuleBase
    Write-Host "Installation folder: $modulePath"
} else {
    Write-Host "Azure Az module is not installed. Installing now..."

   
    Install-Module -Name Az -Scope LocalMachine-Force
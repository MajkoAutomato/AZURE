

# Check if the Az module is installed
# Get installation folder of the Az module if it was installed successfully.



$moduleInstalled = Get-Module -ListAvailable -Name Az

if ($moduleInstalled) {
    Write-Host "Azure Az module is installed."

    # Get installation folder of the Az module
    $modulePath = $moduleInstalled.ModuleBase
    Write-Host "Installation folder: $modulePath"
} else {
    Write-Host "Azure Az module is not installed."
}
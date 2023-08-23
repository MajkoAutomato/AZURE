


Import-Module Az
$moduleImported = Get-Module -ListImported -Name Az
if ($moduleImported) {
Write-Host "Azure Az module installed and imported successfully."
} else {
Write-Host "Azure Az module installation or import failed."
return
}
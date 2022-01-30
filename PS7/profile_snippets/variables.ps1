#Downloads folder variable
$Down = "$env:USERPROFILE\downloads"

#Set starting directory to downloads
Set-Location $Down

#Windows workstation vs server. Used by prompt and import modules
$promptosInfo = Get-CimInstance -ClassName Win32_OperatingSystem
$Global:sow = $promptosInfo.ProductType
function prompt {
    $location = Get-Location
    Write-Host -NoNewline "$(HOSTNAME.EXE) "                  -ForegroundColor Green
    Write-Host -NoNewline '~'                                 -ForegroundColor Yellow
    Write-Host -NoNewline $(Get-Location).Path.Split('\')[-1] -ForegroundColor Cyan
    Write-Host -NoNewline ">" -ForegroundColor Green

    $Adminp = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
    $ver = [string]$host.Version.major + '.' + [string]$host.version.minor
    $host.UI.RawUI.WindowTitle = "$ver" + ' - Admin is ' + "$Adminp" + " - $location"

    Return " "
}
# Terminal Setup
- Install Terminal
- Install [Nerd Font](https://www.nerdfonts.com/) of choice
- Customize Terminal settings to desire and select nerd font of choice in the terminal settings
- If using Oh-My-Posh be sure to include psportable profiles or know how to set your own prompt.

# Install modules once
- install-module posh-git
- install [oh-my-posh](https://ohmyposh.dev/docs/installation/windows)

# Prompt example
```powershell
function prompt {
    $(
        if ((Get-Module posh-git) -and $Global:sow -eq '1') {
            if (Test-Path $env:userprofile\appdata\local\Programs\oh-my-posh\bin\oh-my-posh.exe) {
                . $env:userprofile\appdata\local\Programs\oh-my-posh\bin\oh-my-posh.exe init pwsh --config $env:POSH_THEMES_PATH\sonicboom_light.omp.json | Invoke-Expression
            }
            elseif (Test-Path "C:\Program Files (x86)\oh-my-posh\bin\oh-my-posh.exe") {
                . "C:\Program Files (x86)\oh-my-posh\bin\oh-my-posh.exe" init pwsh --config $env:POSH_THEMES_PATH\sonicboom_light.omp.json | Invoke-Expression
            }
            else {
                $location = Get-Location
                Write-Host -NoNewline "$(HOSTNAME.EXE) "                  -ForegroundColor Green
                Write-Host -NoNewline '~'                                 -ForegroundColor Yellow
                Write-Host -NoNewline $(Get-Location).Path.Split('\')[-1] -ForegroundColor Cyan
                Write-Host -NoNewline ">" -ForegroundColor Green
                $Adminp = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
                $ver = [string]$host.Version.major + '.' + [string]$host.version.minor + '.' + [string]$host.version.build + "-" + [string]$host.version.PSSemVerPreReleaseLabel
                $host.UI.RawUI.WindowTitle = "$ver" + ' - Admin is ' + "$Adminp" + " - $location"
                Return " "
            }
        }
        else {
            $location = Get-Location
            Write-Host -NoNewline "$(HOSTNAME.EXE) "                  -ForegroundColor Green
            Write-Host -NoNewline '~'                                 -ForegroundColor Yellow
            Write-Host -NoNewline $(Get-Location).Path.Split('\')[-1] -ForegroundColor Cyan
            Write-Host -NoNewline ">" -ForegroundColor Green
            $Adminp = [bool](([System.Security.Principal.WindowsIdentity]::GetCurrent()).groups -match "S-1-5-32-544")
            $ver = [string]$host.Version.major + '.' + [string]$host.version.minor + '.' + [string]$host.version.build + "-" + [string]$host.version.PSSemVerPreReleaseLabel
            $host.UI.RawUI.WindowTitle = "$ver" + ' - Admin is ' + "$Adminp" + " - $location"
            Return " "
        }
    )
}
```

# Add Custom Theme
- Use get-poshthemes to view the themes and theme directory.
- [Add chosen theme to your prompt](https://ohmyposh.dev/docs/installation/prompt)

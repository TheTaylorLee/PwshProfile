[themes](https://ohmyposh.dev/docs/themes)
[Fonts](https://www.nerdfonts.com/)

# Terminal Setup
- Install Terminal
- Install nerd font of choice
- Customize Terminal settings to desire and select nerd font of choice in the terminal
- If using Oh-My-Posh be sure to include psportable profiles or know how to set your own prompt.

# install modules once
- install-module terminal-icons
- install-module posh-git
- install-module oh-my-posh

# Prompt example
```powershell
function prompt {
    $(
        if ((Get-Module oh-my-posh) -and (Get-Module terminal-icons) -and (Get-Module posh-git)) {
            Set-PoshPrompt blue-owl #tonybaloney, craver, atomic
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
- Use get-poshthemes to locate the themes directory.
- Copy the custom themes into that directory

# Troubleshooting
If having issues importing terminal-icons, do a force reinstall.
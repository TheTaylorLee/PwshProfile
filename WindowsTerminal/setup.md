# Terminal Setup
- Install Terminal
- Install [Nerd Font](https://www.nerdfonts.com/) of choice
- Customize Terminal settings to desire and select nerd font of choice in the terminal settings
- If using Oh-My-Posh be sure to include psportable profiles or know how to set your own prompt.

# Install modules once
- install-module posh-git
- install-module oh-my-posh (Deprecated method. Use the new method. https://ohmyposh.dev/docs/installation/windows)

# Prompt example
```powershell
function prompt {
    $(
        if ((Get-Module oh-my-posh) -and (Get-Module terminal-icons) -and (Get-Module posh-git)) {
            Set-PoshPrompt grandpa-style
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
- Copy the custom themes into that directory. (No longer necessary. Themes are now official Oh-My-Posh themes)
- Pick a different [Theme](https://ohmyposh.dev/docs/themes) if desired and update used prompt

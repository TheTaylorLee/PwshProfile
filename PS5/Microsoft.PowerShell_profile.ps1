$ErrorActionPreference = 'SilentlyContinue'

. $PSScriptRoot\profile_snippets\prompt.ps1
. $PSScriptRoot\profile_snippets\psreadline.ps1
. $PSScriptRoot\profile_snippets\windowsize.ps1
. $PSScriptRoot\profile_snippets\exchangeonline.ps1
. $PSScriptRoot\profile_snippets\exchangesnapin.ps1
. $PSScriptRoot\profile_snippets\experimentalfeatures.ps1
. $PSScriptRoot\profile_snippets\importmodule.ps1

#Downloads folder variable
$Down = "$env:USERPROFILE\downloads"

#Set starting directory to downloads
Set-Location $Down

$ErrorActionPreference = 'Continue'
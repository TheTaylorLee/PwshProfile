﻿$ErrorActionPreference = 'SilentlyContinue'

. $PSScriptRoot\profile_snippets\prompt.ps1
. $PSScriptRoot\profile_snippets\psreadline.ps1
#. $PSScriptRoot\profile_snippets\exchangeonline.ps1
. $PSScriptRoot\profile_snippets\exchangesnapin.ps1
#. $PSScriptRoot\profile_snippets\experimentalfeatures.ps1
. $PSScriptRoot\profile_snippets\importmodule.ps1
. $PSScriptRoot\profile_snippets\variables.ps1

# Wanring: Don't refactor this section. This cannot be dot sourced and work, so it is run in the profile and not a seperate script.
if ($null -eq $env:WT_SESSION -and $env:TERM_PROGRAM -eq 'vscode') {
    . $PSScriptRoot\profile_snippets\windowsize.ps1
}

if ($env:TERM_PROGRAM -eq 'vscode') {
    Set-PSReadLineOption -PredictionViewStyle InlineView
}

$ErrorActionPreference = 'Continue'

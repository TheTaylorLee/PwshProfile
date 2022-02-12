#Variable script must be called first. Global variables used by other snippets will use these variables.

$ErrorActionPreference = 'SilentlyContinue'

. $PSScriptRoot\profile_snippets\variables.ps1
#. $PSScriptRoot\profile_snippets\resetcolors.ps1
. $PSScriptRoot\profile_snippets\prompt.ps1
. $PSScriptRoot\profile_snippets\psreadline.ps1
. $PSScriptRoot\profile_snippets\windowsize.ps1
. $PSScriptRoot\profile_snippets\exchangeonline.ps1
#. $PSScriptRoot\profile_snippets\versioncheck\psportable.ps1
#. $PSScriptRoot\profile_snippets\versioncheck\psportablelight.ps1
. $PSScriptRoot\profile_snippets\exchangesnapin.ps1
#. $PSScriptRoot\profile_snippets\experimentalfeatures.ps1
. $PSScriptRoot\profile_snippets\installfont.ps1
. $PSScriptRoot\profile_snippets\importmodule.ps1

$ErrorActionPreference = 'Continue'
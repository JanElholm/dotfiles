Invoke-Expression (&starship init powershell)
Import-Module Terminal-Icons
Import-Module devtoolbox

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

function update {
  brew update
  brew upgrade powershell/tap/powershell
}

function profile {
  code $profile
}

function code {
  Start-Process -FilePath "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" -ArgumentList "."
}

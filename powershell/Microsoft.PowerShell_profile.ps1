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

function dv {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/Datavask"
  deactivate
  ./.venv/bin/Activate.ps1
  python ./genialt.py
}

function hf {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/Daily"
  deactivate
  ./.venv/bin/Activate.ps1
  python ./src/y2024/m08/d14/y2024m08d14.py
}

Set-Alias -Name l -Value dir
Set-Alias -Name lg -Value lazygit
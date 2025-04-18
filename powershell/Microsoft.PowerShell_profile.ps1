Invoke-Expression (& '/opt/homebrew/bin/starship' init powershell)
Import-Module Terminal-Icons
Import-Module devtoolbox

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

$ENV:PATH += ':/opt/homebrew/bin'

function update {
  brew update
  brew upgrade powershell/tap/powershell
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

function fbp {
  az account list |
  jq -r '.[] | "\(.name) (\(.id))"' |
  invoke-fzf
}

function lazy {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/LazyAzure" 
  deactivate
  ./.venv/bin/Activate.ps1
}

function aoc {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/AOC2024"
  deactivate
  ./.venv/bin/Activate.ps1
}

function hf {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/Daily"
  deactivate
  ./.venv/bin/Activate.ps1
  python ./src/y2024/m08/d14/y2024m08d14.py
}

function cis {
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/CIS-f-dselsdage"
  ./.venv/bin/Activate.ps1
  python ./kal.py
}

Set-Alias -Name lg -Value '/opt/homebrew/bin/lazygit'
Set-Alias -Name vi -Value nvim
Set-Alias -Name l -Value dir
Set-Alias -Name az -Value '/opt/homebrew/bin/az'

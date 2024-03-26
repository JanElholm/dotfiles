Invoke-Expression (& '/opt/homebrew/bin/starship' init powershell)
Import-Module Terminal-Icons
Import-Module devtoolbox

Set-PSReadLineOption -PredictionSource History
Set-PSReadLineOption -PredictionViewStyle ListView
Set-PSReadLineOption -EditMode Windows

$ENV:PATH += ':/opt/homebrew/bin'
$ENV:PATH += ':/Users/janelholm/go/bin'

function update
{
  brew update
  brew upgrade powershell/tap/powershell
}

function code
{
  Start-Process -FilePath "/Applications/Visual Studio Code.app/Contents/Resources/app/bin/code" -ArgumentList "."
}

function prettier
{
  npx prettier --write .
}


function dv
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/Datavask"
  deactivate
  ./.venv/bin/Activate.ps1
  python ./genialt.py
}

function fbp
{
  az account list |
    jq -r '.[] | "\(.name) (\(.id))"' |
    invoke-fzf
}


function docu
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/LazyAzure" 
  deactivate
  ./.venv/bin/Activate.ps1
  python ./docu.py
}

function lazy
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/LazyAzure" 
  deactivate
  ./.venv/bin/Activate.ps1
}

function aoc
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/AOC2024"
  deactivate
  ./.venv/bin/Activate.ps1
}

function hf
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/Daily"
  deactivate
  ./.venv/bin/Activate.ps1
  python ./src/y2024/m08/d14/y2024m08d14.py
}

function cis
{
  Set-Location "/Users/janelholm/Repos/github.com/JanElholm/CIS-f-dselsdage"
  ./.venv/bin/Activate.ps1
  python ./kal.py
}

function im
{
  Write-Host "Runnning > Import-Module ./src/powershell/*.psd1 -Force"
  Import-Module ./src/powershell/*.psd1 -Force
}

function cn
{
  Disconnect-AzAccount
  Connect-AzAccount -Tenant 37732f27-626b-4ead-bb86-76f576b129b1
  Get-Job | Remove-Job -Force
  Start-TokenRefreshJob -TenantId 37732f27-626b-4ead-bb86-76f576b129b1
}

Set-Alias -Name lg -Value '/opt/homebrew/bin/lazygit'
Set-Alias -Name vi -Value nvim
Set-Alias -Name l -Value dir
Set-Alias -Name az -Value '/opt/homebrew/bin/az'

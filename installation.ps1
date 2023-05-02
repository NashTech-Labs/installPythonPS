#Curent path 
Write-Host $PWD 
$username = $env:username
# Installing exe file
Get-ChildItem "C:\Users\$username"
Copy-Item -Path "$PSScriptRoot\python-3.11.0.exe" -Destination "C:\Users\$env:username" -Force


Get-ChildItem "C:\Users\$env:username"
Get-Item "C:\Users\$username\python-3.11.0.exe"

C:\Users\$env:username\python-3.11.0.exe /quiet InstallAllUsers=1 PrependPath=1 Include_test=0

setx /M path "%path%;C:\Program Files\Python311"

$env:PATH =$env:PATH+";C:\Program Files\Python311"

python --version

python3.11.exe --version

python3.11.exe get-pip.py # install Pip locally using get.pip.py
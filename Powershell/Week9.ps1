$myDir = "C:\Users\erik.biedrzycki\Documents\SYS-320\Powershell"

ipconfig /all | Select-String -Pattern "DHCP Server"
ipconfig /all | Select-String -Pattern "DNS Servers"
Get-Process | Select-Object ProcessName, Path, ID | Export-Csv -Path "$myDir\myProcesses.csv" -NoTypeInformation
Get-Service | Where { $_.Status -eq "Running" } | Select-Object DisplayName, Status | Export-Csv -Path "$myDir\myServices.csv" -NoTypeInformation
Start-Process -FilePath "C:Windows\System32\calc.exe"
sleep 6
Stop-Process -Name win32calc
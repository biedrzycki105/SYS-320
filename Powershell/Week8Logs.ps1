
Get-EventLog -List

$readLog = Read-Host -Prompt "Please select a log to review from the list above"

$searchLog = Read-Host -Prompt "Search Logs for keywords"

$myDir = "C:\Users\erik.biedrzycki\Documents\SYS-320\Powershell"

Get-EventLog -LogName $readLog -Newest 40 | where {$_.Messages -ilike "*$searchLog*"} | Export-Csv -NoTypeInformation -Path "$myDir\$readLog-Logs.csv"

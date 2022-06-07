<#  Script for removing log files older than x Days
    Made by: Håvard Sigvartsen (Company) 07.06.2022
#>
$Age = (get-date).AddDays(-90) # x amount of days
$logpath = "C:\Filer\Log\UBWSync" #path, example: C:\Filer\Log\UBWSync
Get-ChildItem -path $logpath -Recurse -Filter "*.txt" | where-object LastWriteTime -lt $age | Remove-Item
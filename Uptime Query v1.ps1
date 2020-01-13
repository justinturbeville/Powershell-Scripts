Write-Host 'Uptime Query By: Justin Turbeville'

#Uptime Query 
#Version 1.0
#Coded by Justin Turbeville

$Computer = Read-Host -Prompt 'Enter Computer Name' #This is the user input
$OS = Get-WmiObject Win32_OperatingSystem -ComputerName $Computer #Takes user input and starts to query it
$Uptime = (Get-Date) - ($OS.ConvertToDateTime($OS.LastBootUpTime)) #the uptime command is run and the date is converted 
$Output = 'Uptime: ' +$Uptime.Days +' days ' +$Uptime.Hours +' hours ' +$Uptime.Minutes +' minutes ' #the output for the user is created 
Write-Output $Output #the output is outputed 
Read-Host -Prompt 'Press any key to exit'
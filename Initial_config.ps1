#Script for initial configuration of the server for MST Exam With Noroff

#Below are variables for the script, value determined by input
$Server_Name = read-host "Enter server name"
$IP_Address = read-host "Enter IP Address"
$Prefix_Length = read-host "Enter subnet prefix"

#Set the server name
Rename-Computer -NewName $Server_Name -Force

#Set the IP address and subnet mask
New-NetIPAddress $IP_Address -Prefixlength $Prefix_Length

#Join the server to the domain -- this probably has to be done after the domain controller is set up.
#Add-Computer -DomainName $Domain_Name -Credential (Get-Credential)

#Restart the server to apply changes
Restart-Computer -Confirm -Force

#Unused variables
$DNS = "DNS"
$Default_Gateway = "DG"
$Domain_Name = "oyvmode.local"

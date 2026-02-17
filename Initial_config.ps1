#Script for initial configuration of the server for MST Exam With Noroff

#Below are variables for the script, change them depending on exam text.
$Server_Name = "TestServer2"
$Domain_Name = "oyvmode.local"
$IP_Address = "10.10.10.29"
$DNS = "DNS"
$Default_Gateway = "DG"
$Prefix_Length = 16

#Set the server name
Rename-Computer -NewName $Server_Name -Force

#Set the IP address and subnet mask
New-NetIPAddress $IP_Address -Prefixlength $Prefix_Length


#Join the server to the domain -- this probably has to be done after the domain controller is set up.
#Add-Computer -DomainName $Domain_Name -Credential (Get-Credential)

#Restart the server to apply changes
Restart-Computer -Confirm -Force


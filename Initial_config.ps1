#Script for initial configuration of the server for MST Exam With Noroff

#Below are variables for the script, change them depending on exam text.
$Server_Name = "Fill in server name"
$Domain_Name = "Fill in domain name"
$IP_Address = "Fill in IP address"
$Prefix_Lenght = "Fill in subnet mask"

#Set the server name
Rename-Computer -NewName $Server_Name -Force

#Set the IP address and subnet mask
New-NetIPAddress -IPAddress $IP_Address -PrefixLength $Prefix_Lenght

#Join the server to the domain -- this probably has to be done after the domain controller is set up.
#Add-Computer -DomainName $Domain_Name -Credential (Get-Credential)

#Restart the server to apply changes
Restart-Computer -Force


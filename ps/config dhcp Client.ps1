#------ config dhcp Client -----
Get-NetIPInterface

 

Set-NetIPInterface -InterfaceIndex 5 -Dhcp Enabled

 


ipconfig /release
ipconfig /renew

 


Get-NetIPAddress -InterfaceIndex 5
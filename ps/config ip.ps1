#-------------------- config ip ----------------------------

Get-NetIPInterface

 

Enable-NetAdapter ethernet0
Disable-NetAdapter ethernet0

 

Set-NetIPInterface -InterfaceIndex 11 -Dhcp disabled

 

Netsh interface ipv4 set address name=11 static 192.168.0.2 255.255.255.0

 

#//New-NetIPAddress –InterfaceIndex 11 –IPAddress 192.168.0.1 –PrefixLength 24
#--Set-NetIPAddress -InterfaceIndex 11 -IPAddress 192.168.0.1 -PrefixLength 24

 

#///Get-NetIPAddress -InterfaceIndex 5 | fl InterfaceAlias,IPv4Address
Get-NetIPAddress -InterfaceIndex 11

 

#--------Restart-NetAdapter –Name Ethernet0
Enable-NetAdapter –Name Ethernet0
Disable-NetAdapter –Name Ethernet0



Set-DnsClientServerAddress -InterfaceIndex 3 -ServerAddresses 192.168.10.10,8.8.8.8

Afficher la configuration IP:

Get-NetIPConfiguration
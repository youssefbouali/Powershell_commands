Netsh interface ipv4 set address “Connexion au réseau local” static 10.10.10.10
255.255.255.0


Get-NetIPInterface

Netsh interface ipv4 set address name=5 static 10.10.10.10 255.255.255.0

#--------------


New-NetIPAddress –InterfaceIndex 12 –IPAddress 10.10.10.10 –PrefixLength 24
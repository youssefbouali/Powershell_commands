#--client add dns server :

 

#///Netsh interface ipv4 set dnsservers “Connexion au réseau local” static 10.10.10.5 primary

 

Set-DNSClientServerAddress –InterfaceIndex 5 –ServerAddresses 192.168.0.1, 8.8.8.8

 

Get-NetIPConfiguration

 

nslookup
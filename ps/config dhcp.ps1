#---------------- config dhcp -----------------------------
#--install dhcp

#TACHE 1 : INSTALLATION DU ROLE DHCP
#install dhcp : 1) Lancer PowerShell et vérifier que le rôle DHCP n’est pas encore installé.

 

Get-WindowsFeature -Name *dhcp*
Install-WindowsFeature -Name DHCP -IncludeManagementTools
Get-WindowsFeature -Name DHCP

 

#///Restart-Service DHCPServer

 

Set-ItemProperty –Path registry::HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\ServerManager\Roles\12 –Name ConfigurationState –Value 2

 


#configure dhcp :

 

Get-Command -Module DhcpServer

 

Add-DhcpServerv4Scope -Name LAN1 -Description LAN1 -StartRange 192.168.0.1 -EndRange 192.168.0.254 -SubnetMask 255.255.255.0 -LeaseDuration 8.00:00:00 -State Active

Get-DhcpServerv4Scope

 

Add-DhcpServerv4ExclusionRange -ScopeId 192.168.0.0 -StartRange 192.168.0.1 -EndRange 192.168.0.10

Get-DhcpServerv4ExclusionRange

 

Set-DhcpServerv4OptionValue -DnsServer 192.168.0.1 -DnsDomain ista.ma

Get-DhcpServerv4OptionValue

 

Set-DhcpServerv4OptionValue -ScopeId 192.168.0.0 -Router 192.168.0.1

Get-DhcpServerv4OptionValue -ScopeId 192.168.2.0

 

#///Set-DhcpServerv4OptionValue -ScopeId 192.168.0.0 -OptionId 3 -Value 192.168.0.1

 

Add-DhcpServerv4Reservation -ScopeId 192.168.0.0 -IPAddress 192.168.0.100 -ClientId 00-0c-29-42-D7-AC

Get-DhcpServerv4Reservation -ScopeId 192.168.0.0
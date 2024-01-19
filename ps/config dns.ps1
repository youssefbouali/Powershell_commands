#---------------------config dns--------------------------
#---------install dns--------------------------
 

Get-WindowsFeature -Name *DNS*
Install-WindowsFeature -Name DNS -IncludeManagementTools
Get-WindowsFeature -Name DNS

 


#configure dns :

 

Get-Command -Module DnsServer

 

Add-DnsServerPrimaryZone –Name ista.ma –ZoneFile ista.ma.dns –DynamicUpdate NonSecureAndSecure

 

Add-DnsServerPrimaryZone –NetworkID "192.168.0.0/24" –ZoneFile "0.168.192.inaddr.arpa.dns" –DynamicUpdate NonSecureAndSecure

 

Get-DnsServerZone

 

Get-DnsServerResourceRecord -ZoneName ista.ma

 

Add-DnsServerResourceRecord –A –Name www –Ipv4Address 192.168.0.100 –ZoneName ista.ma -CreatePtr

 

Add-DnsServerResourceRecord -CName -Name web –HostNameAlias www -ZoneName ista.ma

 


Get-DnsServerResourceRecord -RRType A –ZoneName ista.ma

 


Get-DnsServerResourceRecord -RRType Ptr –ZoneName "0.168.192.in-addr.arpa"

 


#//////Add-DnsServerResourceRecord -RRType A –ZoneName ista.ma

 

#/////Add-DnsServerResourceRecord -RRType Ptr –ZoneName

 


$OldRocord=Get-DnsServerResourceRecord -Name www -ZoneName ista.ma
$NewRecord = Get-DnsServerResourceRecord -Name www -ZoneName ista.ma
$NewIP = "192.168.0.200"
$NewRecord.RecordData.IPvAddress = [ipaddress]$NewIP
Set-DnsServerResourceRecord -OldInputObject $OldRecord -NewlnputObject $NewRecord -ZoneNane ista.ma

 

Resolve-DnsName –Name www.ista.ma

 


Get-DNSServerZone
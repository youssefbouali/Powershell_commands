#add machine to domain :

Add-Computer –DomainName ista.ma –Restart

Add-Computer -Credential ista\administrateur -DomainName ista.ma

#//netdom join SRV1 /domain:ista.ma /userD:Administrateur /passwordD:Pa$$w0rd /Reboot:30
# /userO:Admin /passwordO:password /Reboot:30
#à vérifier !!!
Set-ADUser SaraDavis -Add @{objectClass='inetOrgPerson'}

#Pour tout un OU :

Get-ADUser -Filter 'Objectclass -notlike "InetOrgPerson"' -SearchBase 'OU=UTILISATEURS,DC=Contoso,DC=Local' -Properties ObjectClass | % {Set-ADUser $_  -Add @{objectClass='inetOrgPerson'} }

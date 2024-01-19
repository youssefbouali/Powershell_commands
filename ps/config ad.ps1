#--------------------------config ad ----------------------
#-----------install ad ----------------------

 

Install-WindowsFeature -Name AD-domain-services -IncludeAllSubFeature -IncludeManagementTools

 

#proumovoir ad :

 

Install-ADDSForest -DomainName ista.ma -installdns

 


#configure ad :

 

#///////Install-ADDSDomainController -installDns -Credential(Get- Credential "ista\Administrateur") -DomainName "ista.ma



New-ADOrganizationalUnit -Name IDOSR -Path "dc=ista,dc=ma"
New-ADOrganizationalUnit -Name IDOSR201 -PATH "OU=IDOSR,DC=ista,DC=ma"
New-ADOrganizationalUnit -Name IDOSR202 -PATH "OU=IDOSR,DC=ista,DC=ma"



Get-ADOrganizationalUnit -filter *



#$
password P@ssw@rd ConvertTo SecureString AsPlainText Force


New aduser name userTest AccountPassword password -CannotChangePassword False City " Company  Department " -Description "Création à l'aide de Powershell" DisplayName "Utilisateur Test" -EmailAddress "Test@test com" Enabled True GivenName Utilisateur -HomePage "www test com" PasswordNeverExpires True SamAccountName utest -UserPrincipalName Test@Formation local





New-ADUser -Name "H.Boukhriss" -CannotChangePassword $true -City "Safi" -ChangePasswordAtLogon $true -Department "Reseau" -Enabled $true -GivenName "Hicham" -SamAccountName "H.Boukhriss" -Surname "Boukhriss" -AccountPassword(Read-Host -AsSecureString "Entrez le mot de passe")

Get-ADUser -filter *

#///Disable-ADAccount -Identity "cn=H.Boukhriss,cn=users,dc=ista,dc=ma"
#///Remove-ADUser -Identity "cn=H.Boukhriss,cn=users,dc=ista, dc=ma"

Get-ADUser -filter * | Format-Table






#17. Modifier les propriétés d’un utilisateur

Set-ADUser -identity "cn=k.kamali,cn=users,dc=ofppt,dc=local" -Enabled $false -GivenName "jamal"




#18. Supprimer un Compte Utilisateur
Remove-ADUser -Identity "cn=k.kamali,cn=users,dc=ofppt, dc=local"
#19. Reconfigurer le conteneur de l'ordinateur par défaut (computers)
Redircomp ‘’ ou=tri ,dc=ofppt,dc=local’’
#20. Reconfigurer le conteneur de l’utilisateur par défaut (users)
redirusr.exe "ou=tri,dc=ofppt,dc=local"
#21. Activer un Compte utilisateur ou ordinateur
Enable-ADAccount -Identity "cn=a.benani,cn=users,dc=ofppt,dc=local"
Set-ADUser -Identity "cn=t.berada,ou=tri,dc=ofppt,dc=local" -Enabled $true
#22. Désactiver un Compte utilisateur ou ordinateur
Disable-ADAccount -Identity "cn=a.benani,cn=users,dc=ofppt,dc=local"




New-ADGroup groupe2 -GroupCategory Distribution -GroupScope Global

New-ADGroup Groupe1 -GroupCategory Security -GroupScope Global

Rename-ADObject -Identity "cn=groupe2, ou=IDOSR,dc=ista,dc=ma" -NewName "test1"



Add-ADGroupMember -Identity "CN=Contrôleurs de domaine clonables,CN=Users,DC=ista,DC=ma" -Member
"CN=AD1,OU=Domain Controllers,DC ista,DC=ma"
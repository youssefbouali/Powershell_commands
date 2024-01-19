#Forcer l'actualisation des GPOs avec l'applet de commande 
Invoke-GPUpdate #:

#Pour forcer l'actualisation de la strat�gie de groupe pour l'OU Domain Controllers, par exemple pour le domaine contoso.com, tapez la commande suivante :

Get-ADComputer �filter * -Searchbase "ou=Domain Controllers, dc=Contoso,dc=com" | foreach{ Invoke-GPUpdate �computer $_.name -force}

#Cette commande forcera le rafra�chissement des GPOs pour les contr�leurs de domaine avec le d�calage par d�faut.

#Vous pouvez sp�cifier le d�calage de rafra�chissement gr�ce � l'argument � �-RandomDelayInMinutes � qui prends en compte un temps en minutes (int). Si vous sp�cifiez � 0 � l'actualisation deviendra imm�diate.

#Pour forcer l'actualisation des GPOs de fa�on imm�diate pour l'OU Domain Controllers, utilisez la commande suivante :

Get-ADComputer �filter * -Searchbase "ou=Domain Controllers, dc=Contoso,dc=com" | foreach{ Invoke-GPUpdate �computer $_.name �force �-RandomDelayInMinutes 0}

  
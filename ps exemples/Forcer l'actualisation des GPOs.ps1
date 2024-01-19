#Forcer l'actualisation des GPOs avec l'applet de commande 
Invoke-GPUpdate #:

#Pour forcer l'actualisation de la stratégie de groupe pour l'OU Domain Controllers, par exemple pour le domaine contoso.com, tapez la commande suivante :

Get-ADComputer –filter * -Searchbase "ou=Domain Controllers, dc=Contoso,dc=com" | foreach{ Invoke-GPUpdate –computer $_.name -force}

#Cette commande forcera le rafraîchissement des GPOs pour les contrôleurs de domaine avec le décalage par défaut.

#Vous pouvez spécifier le décalage de rafraîchissement grâce à l'argument « –-RandomDelayInMinutes » qui prends en compte un temps en minutes (int). Si vous spécifiez « 0 » l'actualisation deviendra immédiate.

#Pour forcer l'actualisation des GPOs de façon immédiate pour l'OU Domain Controllers, utilisez la commande suivante :

Get-ADComputer –filter * -Searchbase "ou=Domain Controllers, dc=Contoso,dc=com" | foreach{ Invoke-GPUpdate –computer $_.name –force –-RandomDelayInMinutes 0}

  
#; pour joindre la machine poste01 au domaine soci�t�.ma
#; userD : l'utilistauer du domaine
#; userO : l'administrateur local de la mahcine
#;si n�cessaire autoriser les ports 135 et 139 et la recherche r�seau NB-Name-In dans le pare feu client

netdom join POSTE01 /domain:soci�t�.ma /userD:Administrateur /passwordD:P@ssw0rd1 /userO:Admin /passwordO:password /Reboot:30
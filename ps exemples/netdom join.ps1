#; pour joindre la machine poste01 au domaine société.ma
#; userD : l'utilistauer du domaine
#; userO : l'administrateur local de la mahcine
#;si nécessaire autoriser les ports 135 et 139 et la recherche réseau NB-Name-In dans le pare feu client

netdom join POSTE01 /domain:société.ma /userD:Administrateur /passwordD:P@ssw0rd1 /userO:Admin /passwordO:password /Reboot:30
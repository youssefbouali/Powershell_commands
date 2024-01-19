## add client to domain offline
#sur le DC : 
djoin.exe /provision /domain adatum.com /machine canberra /savefile c:\canberrajoin.txt


## transférer le fichier vers le poste client 
## sur le poste client : 
djoin.exe /requestODJ /loadfile canberra-join.txt /windowspath %systemroot% /localos

##Redémarrez l'ordinateur
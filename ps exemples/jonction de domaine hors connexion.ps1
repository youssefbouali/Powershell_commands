## sur le DC : 
djoin.exe /provision /domain adatum.com /machine canberra /savefile c:\canberrajoin.txt


## transf�rer le fichier vers le poste client 
## sur le poste client : 
djoin.exe /requestODJ /loadfile canberra-join.txt /windowspath %systemroot% /localos

##Red�marrez l'ordinateur
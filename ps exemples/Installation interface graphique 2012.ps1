#---------PRéparation
mkdir C:\sources
copy D:\sources\install.wim C:\sources\install.wim

attrib.exe -r C:\sources\install.wim

dism.exe /Get-WimInfo -WimFile:C:\sources\install.wim



#-------Installation interface graphique.

powershell

# Importer le module de gestion du serveur
Import-Module ServerManager
# Installation de la fonctionnalité Windows « Server-Gui » en utilisant le fichier install.wim en source
Install-WindowsFeature Server-Gui-Mgmt-Infra,Server-Gui-Shell –source:wim:C:\sources\install.wim:4 -restart
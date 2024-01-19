#CONVERT WINDOWS-SERVER CORE TO GUI

#Online convert:


#to convert core to gui use:

dism /online /enable-feature /featurename:Server-Gui-Mgmt /featurename:Server-Gui-Shell /featurename:ServerCore-FullServer /all

#to revert /come back/ the core tap the following:

dism /online /disable-feature /featurename:Server-Gui-Mgmt /featurename:Server-Gui-Shell /featurename:ServerCore-FullServer /all
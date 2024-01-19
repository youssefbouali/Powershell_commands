#CONVERT WINDOWS-SERVER CORE TO GUI

#Offline convert:


mkdir c:\mount
dism /mount-wim /ImageFile:d:\sources\install.wim   #verify index of the OS
dism /mount-wim /wimfile:d:\sources\install.wim /index:4 /mountdir:c:\mount /readonly
powershell

Install-WindowsFeature -name Server-Gui-Mgmt-infra,Server-Gui-Shell -Restart -source c:\mount\windows\winsxs
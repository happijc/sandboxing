# My goal here is to automate the synchronisation of my path "Hochscule" on ssd

#first create varialbles------------------------

#My Directory on the local disk
$newPath = 'C:\Users\happi\OneDrive - officehn\Desktop\Hochschule' 
$newDocPath = 'C:\Users\happi\OneDrive - officehn\Dokumente'
$newPicsPath = 'C:\Users\happi\OneDrive - officehn\Bilder'

#My directory on the amovilbe disk
$oldPath = 'D:\Hochschule'
$oldDocPath = 'D:\Dokumente' #What i had here before was a recursive problem because of 'D:/Dokumente'. Path has been twice copied. 
$oldPicsPath = 'D:\Screensavers'

#The commando starter
$autoSynchroniser_desktop = robocopy $newPath $oldPath /MIR
$autoSynchroniser_Docs = robocopy $newDocPath $oldDocPath /MIR
$autosynchroniser_Pics = robocopy $newPicsPath $oldPicsPath /MIR

$printMSG3 = ' echo " Paths synchronised ! " '

#execution--------------------------------------

$autoSynchroniser_desktop
$autoSynchroniser_Docs
$autosynchroniser_Pics

$printMSG3
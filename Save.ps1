cls
$ConnectionType = Read-Host -Prompt "Connect with wifi? (Y/N)"

If ($ConnectionType -eq "Y"){
    $IP = Read-Host -Prompt "Enter the IP/port"
    cls
    adb connect $IP
}

$DoProcess = Read-Host -Prompt "Backup or Restore files? (B/R)"

$EpicData = "/data/data/com.rovio.gold/shared_prefs/com.rovio.gold.v2.playerprefs.xml"
$Temporary = "/storage/emulated/0/Download"
$BackupFolder = $env:USERPROFILE + "\Documents\AngryBirdsEpicBackup\"

If ($DoProcess -eq "B"){adb shell run-as com.rovio.gold cp $EpicData $Temporary}
If (!(Test-Path -Path $BackupFolder)){mkdir $BackupFolder | Out-Null}

adb pull $Temporary/com.rovio.gold.v2.playerprefs.xml $BackupFolder
adb shell rm /storage/emulated/0/Download/com.rovio.gold.v2.playerprefs.xml

If ([System.IO.File]::Exists($BackupFolder + "com.rovio.gold.v2.playerprefs.xml")){
    Write-Host "Backed up file on PC on location:" $BackupFolder
}
Timeout -NOBREAK -t 5
}

If ($DoProcess -eq "R"){
    adb push com.rovio.gold.v2.playerprefs.xml $Temporary /
    adb shell run-as com.rovio.gold cp $Temporary/com.rovio.gold.v2.playerprefs.xml $EpicData
    adb shell rm $Temporary/com.rovio.gold.v2.playerprefs.xml
    Write-Host "Files restored"
    Timeout -NOBREAK -t 5
}

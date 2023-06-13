# ABE_Saver
Script to Backup/Restore Angry Birds Epic save files

### To use the script:

Setup:  
Step 1, Install [ADB](https://developer.android.com/tools/adb) on your device.  
Step 2, Add ADB to your environment variables.  
Step 3, Install the provided apk.  
Step 4, Enable Developer Options on your mobile device and enable USB debugging.  
Step 4, Add Angry Birds Epic `com.rovio.gold` as a debugging app.  
Step 5, Extract the OBB to your OBB folder.  
  
For Restore:  
Step 1, Open Angry Birds Epic one time to create the `shared_prefs` folder.  
Step 2, Try to connect to your device via ADB and accept the notification on your mobile device.  
Step 3, Move your save file to your script's location.  
Step 4, Use the scripts options available to restore your file.  

For Backup:  
Step 1, Try to connect to your device via ADB and accept the notification on your mobile device.  
Step 2, Use the scripts options available to backup your file.  
*The script will save the file to the* `%USERPROFILE%/Documents/AngryBirdsEpicBackup/` *folder*  

## NOTICE: THIS SCRIPT WILL NOT WORK ON SAMSUNG DEVICES

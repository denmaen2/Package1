@echo off
taskkill /F /IM firefox.exe
IF EXIST "%ProgramFiles%\Mozilla Firefox\uninstall\helper.exe" (
    "%ProgramFiles%\Mozilla Firefox\uninstall\helper.exe" /S
)
IF EXIST "%ProgramFiles(x86)%\Mozilla Firefox\uninstall\helper.exe" (
    "%ProgramFiles(x86)%\Mozilla Firefox\uninstall\helper.exe" /S
)
rd /s /q "%APPDATA%\Mozilla\Firefox" 
rd /s /q "%LOCALAPPDATA%\Mozilla\Firefox"
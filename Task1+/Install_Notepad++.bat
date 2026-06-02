msiexec.exe /i "%~dp0npp.8.9.6.Installer.x64.msi" /qn /norestart /L*V "%~dp0npp_install.log" 
timeout /t 3 /nobreak >nul
if exist "%ProgramFiles%\Notepad++\updater\GUP.exe" (
    del /f /q "%ProgramFiles%\Notepad++\updater\GUP.exe" >nul 2>&1
    rmdir /s /q "%ProgramFiles%\Notepad++\updater" >nul 2>&1
)
if exist "%ProgramFiles%\Notepad++" (
    echo ^<NotepadPlus^>^<Settings^>^<NoDoNotDisturb^>no^</NoDoNotDisturb^>^<UpdateParams^>^<NoUpdate^>yes^</NoUpdate^>^</UpdateParams^>^</Settings^>^</NotepadPlus^> > "%ProgramFiles%\Notepad++\config.model.xml"
)
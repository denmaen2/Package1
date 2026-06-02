msiexec.exe /x "%~dp0npp.8.9.6.Installer.x64.msi" /qn /norestart /L*V "%~dp0npp_uninstall.log"
timeout /t 3 /nobreak >nul
if exist "%ProgramFiles%\Notepad++" (
    rmdir /s /q "%ProgramFiles%\Notepad++" >nul 2>&1
)
if exist "%ProgramFiles(x86)%\Notepad++" (
    "%ProgramFiles(x86)%\Notepad++" >nul 2>&1
)

if exist "%AppData%\Notepad++" (
    rmdir /s /q "%AppData%\Notepad++" >nul 2>&1
)
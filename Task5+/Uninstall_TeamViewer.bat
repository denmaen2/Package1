sc stop TeamViewer >nul 2>&1
sc delete TeamViewer >nul 2>&1
taskkill /f /im TeamViewer.exe >nul 2>&1
taskkill /f /im TeamViewer_Service.exe >nul 2>&1
taskkill /f /im tv_w32.exe >nul 2>&1
taskkill /f /im tv_x64.exe >nul 2>&1
timeout /t 3 /nobreak >nul
if exist "%ProgramFiles%\TeamViewer\uninstall.exe" (
    "%ProgramFiles%\TeamViewer\uninstall.exe" /S
)
if exist "%ProgramFiles(x86)%\TeamViewer\uninstall.exe" (
    "%ProgramFiles(x86)%\TeamViewer\uninstall.exe" /S
)
timeout /t 5 /nobreak >nul
rmdir /s /q "%ProgramFiles%\TeamViewer" >nul 2>&1
rmdir /s /q "%ProgramFiles(x86)%\TeamViewer" >nul 2>&1
rmdir /s /q "%ProgramData%\TeamViewer" >nul 2>&1
rmdir /s /q "%AppData%\TeamViewer" >nul 2>&1
rmdir /s /q "%LocalAppData%\TeamViewer" >nul 2>&1
reg delete "HKLM\SOFTWARE\TeamViewer" /f >nul 2>&1
reg delete "HKLM\SOFTWARE\Wow6432Node\TeamViewer" /f >nul 2>&1
if exist "%ProgramFiles%\Microsoft VS Code\unins000.exe" (
    "%ProgramFiles%\Microsoft VS Code\unins000.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /LOG="%~dp0VSCode_uninstall.log"
)
if exist "%ProgramFiles(x86)%\Microsoft VS Code\unins000.exe" (
    "%ProgramFiles(x86)%\Microsoft VS Code\unins000.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /LOG="%~dp0VSCode_uninstall.log"
)
if exist "%LocalAppData%\Programs\Microsoft VS Code\unins000.exe" (
    "%LocalAppData%\Programs\Microsoft VS Code\unins000.exe" /VERYSILENT /NORESTART /SUPPRESSMSGBOXES /LOG="%~dp0VSCode_user_uninstall.log"
)
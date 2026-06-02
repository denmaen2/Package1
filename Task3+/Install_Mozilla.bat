msiexec /i "%~dp0Firefox Setup 151.0.2.msi" /qn /norestart /L*V "%~dp0firefox_install.log"
mkdir "%ProgramFiles%\Mozilla Firefox\distribution"
copy /y "%~dp0policies.json" "%ProgramFiles%\Mozilla Firefox\distribution\"
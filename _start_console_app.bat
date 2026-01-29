@echo off

rem LAUNCHMODE: 0 != Command-line
echo %CMDCMDLINE% | findstr /C:"/c" >nul
set LAUNCHMODE=%errorlevel%

setlocal
cd /d "%~dp0"

set DOTNET_ROOT=%USERPROFILE%\scoop\apps\dotnet-sdk\current\

.\bin\Release\net10.0\console-app.exe
if %ERRORLEVEL% NEQ 0 (goto :catch)

:catch
:finally
set EXIT_CODE=%ERRORLEVEL%
endlocal & set EXIT_CODE=%EXIT_CODE%
if %LAUNCHMODE% NEQ 0 (exit /b %EXIT_CODE%)
cmd /k

@echo off
setlocal
set VSCODE_DEV=
set ELECTRON_RUN_AS_NODE=1
set INSTALL_PATH=C:\Users\danfl\AppData\Local\Programs\Microsoft VS Code
"%INSTALL_PATH%\Code.exe" "%INSTALL_PATH%\resources\app\out\cli.js" --ms-enable-electron-run-as-node %*
endlocal

@ECHO OFF
IF "%1"=="uninstall" GOTO UNINSTALL
%windir%\System32\cmd.exe "/K" start_or_install.bat
GOTO END
:UNINSTALL
%windir%\System32\cmd.exe "/K" uninstall.bat
:END
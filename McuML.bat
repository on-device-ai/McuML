@ECHO OFF
IF "%1"=="uninstall" GOTO UNINSTALL
  @cmd.exe /c bash -c "" > NUL  2>NUL
  @IF %ERRORLEVEL% EQU 0 GOTO START_OR_INSTALL
  @ECHO No bash command, please install WSL 1 for Windows 10.
  @ECHO Reference : https://docs.microsoft.com/windows/wsl/install-win10#manual-installation-steps
  @PAUSE
  @GOTO END
:START_OR_INSTALL
@wsl -l -v
%windir%\System32\cmd.exe "/K" start_or_install.bat
GOTO END
:UNINSTALL
%windir%\System32\cmd.exe "/K" uninstall.bat
:END
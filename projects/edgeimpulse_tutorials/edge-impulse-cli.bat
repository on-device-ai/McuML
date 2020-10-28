@SET PROJ_PATH=%CD%
@cd ..\..\
@SET NODE_PATH=%CD%\third_party\node
@SET PATH=%NODE_PATH%;%PATH%
cd %PROJ_PATH%
cmd.exe
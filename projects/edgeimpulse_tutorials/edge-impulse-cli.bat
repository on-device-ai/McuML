@SET PROJ_PATH=%CD%
@cd ..\..\
@SET NODE_PATH=%CD%\third_party\node
@SET PATH=%PATH%;%NODE_PATH%;%NODE_PATH%\node_global
cd %PROJ_PATH%
cmd.exe
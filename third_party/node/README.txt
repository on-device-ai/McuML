1. Download

   Src. : https://nodejs.org/en/download/current/

   Windows Binary (.zip) 64-bit : https://nodejs.org/dist/v15.0.1/node-v15.0.1-win-x64.zip

2. Install

   copy zip file (node-v15.0.1-win-x64.zip) to third_party directory

   unzip node-v15.0.1-win-x64.zip
	
   change directory name "node-v15.0.1-win-x64" to "node"
	
3. Environment Variable Setup
	
   SET NODE_PATH=%CD%\third_party\node
   SET PATH=%PATH%;%NODE_PATH%;%NODE_PATH%\node_global
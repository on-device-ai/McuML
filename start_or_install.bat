@check_anaconda_installed.exe
@IF %ERRORLEVEL% EQU 0 GOTO StartMiniconda
  @cmd.exe /c conda > NUL  2>NUL
  @IF %ERRORLEVEL% EQU 0 GOTO StartMCUML
  @ECHO The conda command not found
  @GOTO END
:StartMiniconda 
  @REM Copyright (C) 2012 Anaconda, Inc
  @REM SPDX-License-Identifier: BSD-3-Clause
  @CALL "%~dp0\third_party_tools\Miniconda3\condabin\conda_hook.bat"
  @CALL conda.bat activate %*
:StartMCUML
  @REM *** McuML Project ***
  @REM Copyright (C) 2020 On-Device AI Co., Ltd.
  @CALL conda activate McuML
  @IF %ERRORLEVEL% EQU 0 GOTO StartJupyterLab
  @CALL conda env create --file McuML.yml --name McuML
  @CALL conda activate McuML
  @ECHO Choice TensorFlow 2 release ...
  @ECHO 1 - CPU
  @ECHO 2 - GPU
  @SET /P OPT=Please make a selection, and press enter : 
  @IF %OPT%==1 GOTO TF_CPU
  @IF %OPT%==2 GOTO TF_GPU
  :TF_CPU
    @ECHO Install TensorFlow 2.4 CPU
    @pip install tensorflow==2.4.0
    @GOTO StartJupyterLab
  :TF_GPU
    @ECHO Install TensorFlow 2.4 GPU
    @CALL conda install -c conda-forge cudatoolkit=11.0.3 --yes
    @CALL conda install -c conda-forge cudnn=8.0.5.39 --yes
    @pip install tensorflow-gpu==2.4.0
    @GOTO StartJupyterLab
:StartJupyterLab
  @CALL jupyter lab
:END
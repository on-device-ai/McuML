@REM Copyright (C) 2012 Anaconda, Inc
@REM SPDX-License-Identifier: BSD-3-Clause
@CALL "%~dp0\Miniconda3\condabin\conda_hook.bat"
@CALL conda.bat activate %*

@REM *** McuML Project ***
@REM Copyright (C) 2020 On-Device AI Co., Ltd.
@CALL conda activate McuML
@IF %ERRORLEVEL% EQU 0 goto StartJupyterLab
@CALL conda env remove --name McuML
@CALL conda env create --file McuML.yml --name McuML
@CALL conda activate McuML
:StartJupyterLab
@CALL jupyter lab
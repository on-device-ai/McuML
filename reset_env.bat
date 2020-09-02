@REM Copyright (C) 2012 Anaconda, Inc
@REM SPDX-License-Identifier: BSD-3-Clause
@CALL "%~dp0\Miniconda3\condabin\conda_hook.bat"
@CALL conda.bat activate %*

@REM *** McuML Project ***
@REM Copyright (C) 2020 On-Device AI Co., Ltd.
@CALL conda env remove --name McuML
@CALL conda env remove --name mbed
@rd /S /Q .\miniconda3\envs
@mkdir .\miniconda3\envs
@rd /S /Q .\tensorflow\tensorflow\lite\micro\tools\make\gen
@rd /S /Q %userprofile%\.conda
@rd /S /Q %userprofile%\.ipython
@rd /S /Q %userprofile%\.jupyter
@rd /S /Q %userprofile%\.mbed
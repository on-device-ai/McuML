@REM Copyright (C) 2012 Anaconda, Inc
@REM SPDX-License-Identifier: BSD-3-Clause
@CALL "%~dp0\Miniconda3\condabin\conda_hook.bat"
@CALL conda.bat activate %*

@REM *** McuML Project ***
@REM Copyright (C) 2020 On-Device AI Co., Ltd.
@CALL conda activate McuML
@IF %ERRORLEVEL% NEQ 0 goto End
@CALL conda remove tensorflow --yes
@CALL conda install tensorflow-gpu --yes
:End
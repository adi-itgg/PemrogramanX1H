@echo off
REM =============== Configure debugging ===============
REM ## Open File -> Settings
REM ## Tools -> External Tools -> Add
REM ## Program = $ProjectFileDir$\debug.bat
REM ## Arguments = $FilePath$
REM ===================================================
REM runexe

IF "%1" == "" GOTO noargs

set "classpath=%1"
set "run=%2"
set "compilepath=build\outputs\pascal\debug"

for /f "tokens=1,2 delims==" %%a in (%classpath%) do (
    if "%%a"=="// runexe" set run=%%b
    if "%%a"==" * runexe" set run=%%b
    if "%%a"=="// build" set build=%%b
    if "%%a"==" * build" set build=%%b
)

IF "%run%" == "" set run=1
if not "%build%"=="silent" echo Task: Cleaning build cache
IF EXIST "%compilepath%" RD /S /Q "%compilepath%"
IF NOT EXIST "%compilepath%" mkdir %compilepath%
for %%F in ("%classpath%") do (
    set compilepath=%compilepath%\%%~nF.exe
    if NOT "%%~xF" == ".pas" goto invalid
)
if "%build%"=="silent" (timer.exe /nologo > nul) else (timer.exe /nologo)
if not "%build%"=="silent" echo Task: Building executable...
if "%build%"=="silent" (
    fpc.exe %classpath% -o%compilepath% > nul
) else (
    fpc.exe %classpath% -o%compilepath%
)
if %ERRORLEVEL% EQU 1 set buildError=1

timer.exe /s /nologo>> took.txt
set /p took=<took.txt
del /q took.txt

if not "%build%"=="silent" echo.
if "%buildError%"=="1" (
    echo BUILD FAILURE in %took%
) else (
    echo BUILD SUCCESSFUL in %took%
)
for /L %%n in (1,1,%run%) do (
    echo.
    IF EXIST "%compilepath%" "%compilepath%"
)
exit

:noargs
echo No arguments supplied!
exit

:invalid
echo.
echo Invalid class!
echo This file is not pascal!
exit
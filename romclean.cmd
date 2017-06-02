@echo off
setlocal EnableDelayedExpansion EnableExtensions

cls
cd %~dp0

echo Rom Clenaer
echo(
set path=
set /p path="Enter fully qualified path to clean (enter to cancel): "
if "!path!" == "" (
    echo(
    echo OPERATION CANCELED!
    echo(
    pause
    goto :theend
)
if not exist !path!\NUL (
  echo(
  echo DOES NOT EXIST!
  echo(
  goto :theend
)

cls

:menu
echo Choose option:
echo(
echo 1 - remove non-US
echo 2 - remove non-Europeon
echo 3 - remove non-Japanese
echo(
echo q - Cancel and quit
echo(
set /p M=Make your selection ^(1-3, or q to quit^)^, then press ENTER ^: 
if "!M!" == "q" (
    echo(
    echo OPERATION CANCELED!
    echo(
    pause
    goto :theend
)
set VALID=
if "!M!" == "1" set VALID=1
if "!M!" == "2" set VALID=1
if "!M!" == "3" set VALID=1
if "!VALID!" == "" (
    cls
	echo INVALID OPTION, PLEASE TRY AGAIN
	echo(
    goto :menu
)

echo STEP 1
echo(
echo   Region filtering...
echo(
echo STEP 1
echo(
call %SYSTEMROOT%\System32\WindowsPowerShell\v1.0\powershell -NoProfile -ExecutionPolicy Unrestricted -File ""%~dp0include\fixnames.ps1"" -FolderPath ""!path!""
if "!M!" == "1" call .\bin\clean-us.cmd "!path!"
if "!M!" == "2" call .\bin\clean-eu.cmd "!path!"
if "!M!" == "3" call .\bin\clean-jp.cmd "!path!"
echo(
echo FINISHED!
pause
cls

:theend
endlocal
exit 0
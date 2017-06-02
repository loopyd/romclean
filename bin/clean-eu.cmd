@echo off
setlocal EnableDelayedExpansion EnableExtensions
 
if "%~1" == "" (
  echo This script cannot be run by itself.
  echo(
  pause
  goto :theend
)
set WORKPATH="%~1"
cd "!WORKPATH!"
echo(
<nul set /p=Running on:  !WORKPATH! ...

rem regional blacklist
rem
rem Europian region only:
rem
rem   Kills Japanese, Korean, and United States releases.
rem
del *(J)* 2> nul
del *(K)* 2> nul
del *(U)* 2> nul

rem t prefix
del *[t4+2C]* 2> nul
del *[t4+1C]* 2> nul
del *[t4+C]* 2> nul
del *[t4C]* 2> nul
del *[t4I]* 2> nul
del *[t4S]* 2> nul
del *[t4]* 2> nul
del *[t3+2C]* 2> nul
del *[t3+1C]* 2> nul
del *[t3+C]* 2> nul
del *[t3C]* 2> nul
del *[t3I]* 2> nul
del *[t3S]* 2> nul
del *[t3]* 2> nul
del *[t2+2C]* 2> nul
del *[t2+1C]* 2> nul
del *[t2+C]* 2> nul
del *[t2C]* 2> nul
del *[t2I]* 2> nul
del *[t2S]* 2> nul
del *[t2]* 2> nul
del *[t1+2C]* 2> nul
del *[t1+1C]* 2> nul
del *[t1+C]* 2> nul
del *[t1C]* 2> nul
del *[t1I]* 2> nul
del *[t1S]* 2> nul
del *[t1]* 2> nul
del *[tI]* 2> nul
del *[tIR]* 2> nul
del *[tIR+C]* 2> nul

rem o prefix
del *[o4+2C]* 2> nul
del *[o4+1C]* 2> nul
del *[o4+C]* 2> nul
del *[o4C]* 2> nul
del *[o4I]* 2> nul
del *[o4S]* 2> nul
del *[o4]* 2> nul
del *[o3+2C]* 2> nul
del *[o3+1C]* 2> nul
del *[o3+C]* 2> nul
del *[o3C]* 2> nul
del *[o3I]* 2> nul
del *[o3S]* 2> nul
del *[o3]* 2> nul
del *[o2+2C]* 2> nul
del *[o2+1C]* 2> nul
del *[o2+C]* 2> nul
del *[o2C]* 2> nul
del *[o2I]* 2> nul
del *[o2S]* 2> nul
del *[o2]* 2> nul
del *[o1+2C]* 2> nul
del *[o1+1C]* 2> nul
del *[o1+C]* 2> nul
del *[o1C]* 2> nul
del *[o1I]* 2> nul
del *[o1S]* 2> nul
del *[o1]* 2> nul
del *[oI]* 2> nul
del *[oIR]* 2> nul
del *[oIR+C]* 2> nul

rem h prefix
del *[h4+2C]* 2> nul
del *[h4+1C]* 2> nul
del *[h4+C]* 2> nul
del *[h4C]* 2> nul
del *[h4I]* 2> nul
del *[h4S]* 2> nul
del *[h4]* 2> nul
del *[h3+2C]* 2> nul
del *[h3+1C]* 2> nul
del *[h3+C]* 2> nul
del *[h3C]* 2> nul
del *[h3I]* 2> nul
del *[h3S]* 2> nul
del *[h3]* 2> nul
del *[h2+2C]* 2> nul
del *[h2+1C]* 2> nul
del *[h2+C]* 2> nul
del *[h2C]* 2> nul
del *[h2I]* 2> nul
del *[h2S]* 2> nul
del *[h2]* 2> nul
del *[h1+2C]* 2> nul
del *[h1+1C]* 2> nul
del *[h1+C]* 2> nul
del *[h1C]* 2> nul
del *[h1I]* 2> nul
del *[h1S]* 2> nul
del *[h1]* 2> nul
del *[hI]* 2> nul
del *[hIR]* 2> nul
del *[hIR+C]* 2> nul

rem f prefix
del *[f4+2C]* 2> nul
del *[f4+1C]* 2> nul
del *[f4+C]* 2> nul
del *[f4C]* 2> nul
del *[f4I]* 2> nul
del *[f4S]* 2> nul
del *[f4]* 2> nul
del *[f3+2C]* 2> nul
del *[f3+1C]* 2> nul
del *[f3+C]* 2> nul
del *[f3C]* 2> nul
del *[f3I]* 2> nul
del *[f3S]* 2> nul
del *[f3]* 2> nul
del *[f2+2C]* 2> nul
del *[f2+1C]* 2> nul
del *[f2+C]* 2> nul
del *[f2C]* 2> nul
del *[f2I]* 2> nul
del *[f2S]* 2> nul
del *[f2]* 2> nul
del *[f1+2C]* 2> nul
del *[f1+1C]* 2> nul
del *[f1+C]* 2> nul
del *[f1C]* 2> nul
del *[f1I]* 2> nul
del *[f1S]* 2> nul
del *[f1]* 2> nul
del *[fI]* 2> nul
del *[fIR]* 2> nul
del *[fIR+C]* 2> nul

rem b prefix
del *[b4+2C]* 2> nul
del *[b4+1C]* 2> nul
del *[b4+C]* 2> nul
del *[b4C]* 2> nul
del *[b4I]* 2> nul
del *[b4S]* 2> nul
del *[b4]* 2> nul
del *[b3+C]* 2> nul
del *[b3+2C]* 2> nul
del *[b3+1C]* 2> nul
del *[b3+2C]* 2> nul
del *[b3+1C]* 2> nul
del *[b3+C]* 2> nul
del *[b3C]* 2> nul
del *[b3S]* 2> nul
del *[b3]* 2> nul
del *[b2+2C]* 2> nul
del *[b2+1C]* 2> nul
del *[b2+C]* 2> nul
del *[b2C]* 2> nul
del *[b2S]* 2> nul
del *[b2]* 2> nul
del *[b1+2C]* 2> nul
del *[b1+1C]* 2> nul
del *[b1+C]* 2> nul
del *[b1C]* 2> nul
del *[b1I]* 2> nul
del *[b1S]* 2> nul
del *[b1]* 2> nul
del *[bI]* 2> nul
del *[bIR]* 2> nul
del *[bIR+C]* 2> nul

rem a prefix
del *[a4+2C]* 2> nul
del *[a4+1C]* 2> nul
del *[a4+C]* 2> nul
del *[a4C]* 2> nul
del *[a4I]* 2> nul
del *[a4S]* 2> nul
del *[a4]* 2> nul
del *[a3+C]* 2> nul
del *[a3+2C]* 2> nul
del *[a3+1C]* 2> nul
del *[a3+2C]* 2> nul
del *[a3+1C]* 2> nul
del *[a3+C]* 2> nul
del *[a3C]* 2> nul
del *[a3S]* 2> nul
del *[a3]* 2> nul
del *[a2+2C]* 2> nul
del *[a2+1C]* 2> nul
del *[a2+C]* 2> nul
del *[a2C]* 2> nul
del *[a2S]* 2> nul
del *[a2]* 2> nul
del *[a1+2C]* 2> nul
del *[a1+1C]* 2> nul
del *[a1+C]* 2> nul
del *[a1C]* 2> nul
del *[a1I]* 2> nul
del *[a1S]* 2> nul
del *[a1]* 2> nul
del *[aI]* 2> nul
del *[aIR]* 2> nul
del *[aIR+C]* 2> nul

rem special prefix
del *[T-* 2> nul
del *[T+* 2> nul

echo COMPLETE!

:theend
endlocal
exit /b
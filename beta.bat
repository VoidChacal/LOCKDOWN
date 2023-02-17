@echo off
echo 1 Apagar arquivos temporarios
echo 2 Apagar Logs
echo 3 Distribution
set /p resposta=
if %resposta%==1 goto Temporarios
if %resposta%==2 goto logs
if %resposta%==3 goto Distribution
:Temporarios
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
pause
:logs
REM parte 2
cd/
@echo
del *.log /a /s /q /f
pause
REM parte 3
:Distribution
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
pause
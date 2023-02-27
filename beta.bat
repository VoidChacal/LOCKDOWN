@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
:menu
@echo.
@echo    *************************************************************************   Nota: Provavelmente ha um
@echo    ***                                        			         ***        programa melhor que este
@echo    ***         Sistema batchfile de limpeza de computadores	       	 ***      
@echo    ***                                                                   ***   Aviso: Executar o arquivo 	  
@echo    *************************************************************************         no modo administrador 
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
call :ColorText 0c "2 Apagar Logs"
call :ColorText 0c "3 Distribution"
set /p resposta=
 if %resposta%==1 ( goto Temporarios
 ) else if %resposta%==2 ( goto logs 
 ) else if %resposta%==3 ( goto Distribution 
 ) else ( 
 cls
 echo.
 call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
 call :ColorText 02 "   &&&                                                                    &&& "
 call :ColorText 02 "   &&&                         Valor Invalido                             &&& "
 call :ColorText 02 "   &&&                                                                    &&& "	  
 call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
 goto menu
 )
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
cls
goto menu
:logs
REM parte 2
cd/
@echo
del *.log /a /s /q /f
pause
cls
goto menu
REM parte 3
:Distribution
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
pause
cls
goto menu
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
@echo off
REM ********************************
REM         Color Function
REM ********************************
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
REM ********************************
REM             Menu
REM ********************************
:menu
@echo.
@echo    *************************************************************************   data: %date%
@echo    ***                                                                   ***   Horario: %time%
@echo    ***                         Multipurpose tools                        ***   Aviso: Executar o arquivo    
@echo    ***                                                                   ***   	  no modo administrador 
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
call :ColorText 0c "2 Opcoes de disco"
set /p resposta=
REM 2>NUL CALL :CASE_%resposta%
if "%resposta%"=="1" ( cls & goto limpeza ) 
if "%resposta%"=="2" ( cls & goto TEST ) else ( goto DEFAULT_CASE )
:NAOVENHA
@echo DENOVO
pause
:limpeza
@echo.
@echo    *************************************************************************  Data: %date% 
@echo    ***                                                                   ***  Horario: %time% 
@echo    ***         Sistema batchfile de limpeza de computadores              ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
Call :ColorText 0c "2 Voltar ao menu"
set /p resposta2=
if %resposta2%==1 ( goto Temporarios )
if %resposta2%==2 ( goto menu ) else ( 
    goto DEFAULT_CASE )
REM ********************************
REM        Delete Temp Files
REM ********************************
:Temporarios
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
cd/
@echo
del *.log /a /s /q /f
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
@echo.
@echo    *************************************************************************  Data: %date%
@echo    ***                                                                   ***  Horario: %time%
@echo    ***                   Executando Limpeza Avancada                     ***      
@echo    ***                                                                   ***    	  
@echo    *************************************************************************  
@echo.
takeown /f "C:\TEMP"
del *.log /a /s /q /f
pause
cls
goto menu
REM ********************************
REM             Disc
REM ********************************
:TEST
@echo.
@echo    ************************************************************************* Data: %date%  
@echo    ***                                                                   *** Horario: %time%
@echo    ***                        Opcoes de Disco                            ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************
@echo.         
@echo.
call :ColorText 0c "1 Continuar"
call :ColorText 0c "2 Check disc"
call :ColorText 0c "3 Voltar ao menu"
set /p resposta3=
if %resposta3%==1 ( goto Fragments )
if %resposta3%==2 ( goto checkDisc )
if %resposta3%==3 ( %cls% goto menu ) else ( 
    goto DEFAULT_CASE )
cls
:Fragments
@echo.
@echo    *************************************************************************  Data: %date%
@echo    ***                                                                   ***  Horario: %time%    
@echo    ***                        Digite o disco                             ***      
@echo    ***                       Exemplo: C: ou D:                           ***
@echo    ***                                                                   ***   
@echo    *************************************************************************
@echo.         
@echo.
set /p disc=
defrag %disc%
:checkDisck
@echo.
@echo    *************************************************************************  Data: %date% 
@echo    ***                                                                   ***  Horario: %time%
@echo    ***                         Check Disc                                ***        
@echo    ***                        Digite o disco                             ***      
@echo    ***                       Exemple: C: ou D:                           ***
@echo    ***                                                                   ***   
@echo    *************************************************************************
@echo.         
@echo.
set /p Chkdisc=
CHKDSK %Chkdisc%
REM ********************************
REM         Default Case
REM ********************************
:DEFAULT_CASE
cls
echo.
call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
call :ColorText 02 "   &&&                                                                    &&& "
call :ColorText 02 "   &&&                         Valor Invalido                             &&& "
call :ColorText 02 "   &&&                                                                    &&& "
call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
goto menu
REM ********************************
REM         Color Function
REM ********************************
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
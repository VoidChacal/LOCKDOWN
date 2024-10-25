@echo off
chcp 65001 >nul
mode 120,30
Title Multipurpose tools
REM ********************************
REM         Color Function
REM ********************************
@echo off
for /f %%A in ('"prompt $H &echo on &for %%B in (1) do rem"') do set BS=%%A
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
REM ********************************
REM             Menu
REM ********************************
:menu
@echo.
@echo [96m   ╔══════════════════════════════════════════════════════════════════════╗  data: %date% [0m
@echo [96m   ║*********                                                    *********║  Horario: %time% [0m
@echo [96m   ║****                       Multipurpose tools                     ****║  Aviso: Executar o arquivo [0m
@echo [96m   ║*********                                                    *********║   	    no modo administrador [0m
@echo [96m   ╚══════════════════════════════════════════════════════════════════════╝ [0m        
@echo.     
echo [38;2;255;255;0m   ╔═(1) Apagar arquivos temporarios[0m  
echo [38;2;255;255;0m   ║[0m
echo [38;2;255;140;30m   ╚╦═(2) Opções de Disco[0m    
echo [38;2;255;140;30m    ║[0m  
set /p resposta= [92m    ╚═════^>[0m 
REM 2>NUL CALL :CASE_%resposta%
if "%resposta%"=="1" ( cls & goto limpeza ) 
if "%resposta%"=="2" ( cls & goto Disco ) else ( goto DEFAULT_CASE )
:NAOVENHA
@echo DENOVO
pause
:limpeza
@echo.
@echo [38;2;255;255;0m   ╔══════════════════════════════════════════════════════════════════════╗   data: %date% [0m
@echo [38;2;255;255;0m   ║*********                                                    *********║   Horario: %time% [0m
@echo [38;2;255;255;0m   ║****         Sistema batchfile de limpeza de computadores         ****║   [0m      
@echo [38;2;255;255;0m   ║*********                                                    *********║   [0m   
@echo [38;2;255;255;0m   ╚══════════════════════════════════════════════════════════════════════╝   [0m       
@echo.
echo [38;2;255;255;0m   ╔═(1) Apagar arquivos temporarios[0m  
echo [38;2;255;255;0m   ║[0m
echo [38;2;255;255;0m   ╚╦═(2) Voltar ao menu[0m
echo [38;2;255;255;0m    ║[0m  
set /p resposta2= [92m    ╚═════^>[0m
if "%resposta2%"=="1" ( cls & goto Temporarios )
if "%resposta2%"=="2" ( cls & goto menu ) else ( 
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
@echo [38;2;255;255;0m   ╔══════════════════════════════════════════════════════════════════════╗   data: %date% [0m
@echo [38;2;255;255;0m   ║*********                                                    *********║   Horario: %time% [0m
@echo [38;2;255;255;0m   ║****                   Executando Limpeza Avançada                ****║  [0m    
@echo [38;2;255;255;0m   ║*********                                                    *********║   [0m   
@echo [38;2;255;255;0m   ╚══════════════════════════════════════════════════════════════════════╝   [0m  
@echo.
takeown /f "C:\TEMP"
del *.log /a /s /q /f
pause
cls
goto menu
REM ********************************
REM             Disc
REM ********************************
:Disco
@echo.
@echo [38;2;255;140;30m   ╔══════════════════════════════════════════════════════════════════════╗ Data: %date%  [0m
@echo [38;2;255;140;30m   ║*********                                                    *********║ Horario: %time% [0m
@echo [38;2;255;140;30m   ║****                        Opções de Disco                       ****║       [0m
@echo [38;2;255;140;30m   ║*********                                                    *********║   [0m
@echo [38;2;255;140;30m   ╚══════════════════════════════════════════════════════════════════════╝ [0m
@echo.         
echo [38;2;255;140;30m   ╔═(1) Remover Fragmentos do Disco [0m  
echo [38;2;255;140;30m   ║   [0m
echo [38;2;255;140;30m   ╠══(2) Checagem de Disco [0m
echo [38;2;255;140;30m   ║   [0m
echo [38;2;255;140;30m   ╚╦══(3) Voltar ao menu[0m    
echo [38;2;255;140;30m    ║[0m  
set /p resposta3= [92m    ╚═════^>[0m 
if "%resposta3%"=="1" ( cls & goto Fragments )
if "%resposta3%"=="2" ( cls & goto checkDisc )
if "%resposta3%"=="3" ( cls & goto menu ) else ( 
    goto DEFAULT_CASE )
cls
:Fragments
@echo.
@echo  [38;2;255;140;30m   ╔══════════════════════════════════════════════════════════════════════╗  Data: %date% [0m
@echo  [38;2;255;140;30m   ║*********                                                    *********║  Horario: %time%  [0m  
@echo  [38;2;255;140;30m   ║****                        Digite o disco                        ****║   [0m   
@echo  [38;2;255;140;30m   ║****                       Exemplo: C: ou D:                      ****║  [0m
@echo  [38;2;255;140;30m   ║*********                                                    *********║  [0m 
@echo  [38;2;255;140;30m   ╚══════════════════════════════════════════════════════════════════════╝  [0m
@echo.         
@echo.
set /p disc= [92m    ═════^>[0m 
defrag %disc%
:checkDisck
@echo.
@echo  [38;2;255;140;30m   ╔══════════════════════════════════════════════════════════════════════╗  Data: %date% [0m
@echo  [38;2;255;140;30m   ║*********                                                    *********║  Horario: %time% [0m
@echo  [38;2;255;140;30m   ║****                         Check Disc                           ****║  [0m      
@echo  [38;2;255;140;30m   ║***                         Digite o disco                         ***║  [0m    
@echo  [38;2;255;140;30m   ║****                      Exemplo: C: ou D:                       ****║  [0m
@echo  [38;2;255;140;30m   ║*********                                                    *********║  [0m 
@echo  [38;2;255;140;30m   ╚══════════════════════════════════════════════════════════════════════╝  [0m
@echo.         
@echo.
set /p Chkdisc= [92m    ═════^>[0m 
CHKDSK %Chkdisc%
REM ********************************
REM         Default Case
REM ********************************
:DEFAULT_CASE
cls
echo.

@echo [31m   ╔══════════════════════════════════════════════════════════════════════╗   Data: %date% [0m
@echo [31m   ║*********                                                    *********║   Horario: %time% [0m
@echo [31m   ║****                        Valor Invalido                        ****║        [0m
@echo [31m   ║*********                                                    *********║     [0m
@echo [31m   ╚══════════════════════════════════════════════════════════════════════╝  [0m
@echo.                     
goto menu
REM ********************************
REM         Color Function
REM ********************************
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

                            
                   
@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
:menu
@echo.
@echo    *************************************************************************   
@echo    ***                                        			         ***        
@echo    ***         		   Multipurpose tools	       	 		 ***      
@echo    ***                                                                   ***   Aviso: Executar o arquivo 	  
@echo    *************************************************************************         no modo administrador 
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
call :ColorText 0c "2 Remover fragmentos do disco"
set /p resposta=
2>NUL CALL :CASE_%resposta%
if %resposta%==2 ( goto Activation ) 
else if %resposta%==1 ( goto limpeza )
else ( goto DEFAULT_CASE )
:CASE_1
@echo.
@echo    *************************************************************************   
@echo    ***                                        			         ***        
@echo    ***         Sistema batchfile de limpeza de computadores	       	 ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
Call :ColorText 0c "2 Voltar ao menu"
set /p resposta2=
if %resposta2%==1 ( goto Temporarios )
else if %resposta2%==2 ( goto menu )
else ( goto DEFAULT_CASE )
:DEFAULT_CASE
cls
echo.
call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
call :ColorText 02 "   &&&                                                                    &&& "
call :ColorText 02 "   &&&                         Valor Invalido                             &&& "
call :ColorText 02 "   &&&                                                                    &&& "	  
call :ColorText 02 "   &&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&&& "
goto menu
:Temporarios
RD /S /Q %temp%
MKDIR %temp%
takeown /f "%temp%" /r /d y
takeown /f "C:\Windows\Temp" /r /d y
RD /S /Q C:\Windows\Temp
MKDIR C:\Windows\Temp
takeown /f "C:\Windows\Temp" /r /d y
takeown /f %temp% /r /d y
REM parte 2
cd/
@echo
del *.log /a /s /q /f
net stop wuauserv
net stop UsoSvc
rd /s /q C:\Windows\SoftwareDistribution
md C:\Windows\SoftwareDistribution
@echo.
@echo    *************************************************************************  
@echo    ***                                        			         ***   
@echo    ***         		Executando Limpeza Profunda	       	 	 ***      
@echo    ***                                                                   ***    	  
@echo    *************************************************************************  
@echo.
takeown /f "C:\TEMP"
del *.log /a /s /q /f
pause
cls
goto menu
:CASE_2
@echo.
@echo    *************************************************************************   
@echo    ***                                        			         ***        
@echo    ***                        Limpar fragmentos do Disco	       	 	 ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Continuar"
call :ColorText 0c "2 Voltar ao menu"
set /p resposta3=
if %resposta3%==1( goto Fragments )
else if %resposta3%==2 ( goto menu )
else ( goto DEFAULT_CASE )
set key= 
:Fragments
@echo.
@echo    *************************************************************************   
@echo    ***                                        			         ***      Exemple: C: or D:  
@echo    ***                        Digite o disco	       	 	        ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
set /p disc=
defrag %disc%
:test
set key=test
@echo %key%
REM cscript slmgr.vbs /ipk %key%
REM cscript slmgr.vbs /skms kms.lotro.cc
REM cscript slmgr.vbs /ato
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1
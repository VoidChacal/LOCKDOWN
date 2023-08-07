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
call :ColorText 0c "2 Ativacao do Windows"
set /p resposta=
2>NUL CALL :CASE_%resposta%
if %resposta%==2( goto Activation 
) else if %resposta%==1( goto limpeza )
:CASE_1
@echo.
@echo    *************************************************************************   
@echo    ***                                        			         ***        
@echo    ***         Sistema batchfile de limpeza de computadores	       	 ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Apagar arquivos temporarios"
set /p resposta2=
 if %resposta2%==1 ( goto Temporarios
 )
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
@echo    ***                        Windows Activation	       	 	 ***      
@echo    ***                                                                   ***   
@echo    *************************************************************************         
@echo.
call :ColorText 0c "1 Home/Core"
call :ColorText 0c "2 Home/Core (Country Specific)"
call :ColorText 0c "3 Home/Core (Single Language)"
call :ColorText 0c "4 Home/Core N"
call :ColorText 0c "5 Professional(Wind 10 pro)"
call :ColorText 0c "6 Professional N(Wind 10 pro N)"
call :ColorText 0c "7 Enterprise"
call :ColorText 0c "8 Enterprise N"
call :ColorText 0c "9 Education"
call :ColorText 0c "10 Education N"
call :ColorText 0c "11 Enterprise 2015 LTSB"
call :ColorText 0c "12 Enterprise 2015 LTSB N"
call :ColorText 0c "13 Enterprise 2016 LTSB"
call :ColorText 0c "14 Enterprise 2016 LTSB N"
set /p resposta3=
if %resposta3%==1( %key%= TX9XD-98N7V-6WMQ6-BX7FG-H8Q99 )
if %resposta3%==2( %key%= PVMJN-6DFY6-9CCP6-7BKTT-D3WVR )
if %resposta3%==3( %key%= 7HNRX-D7KGG-3K4RQ-4WPJ4-YTDFH )
if %resposta3%==4( %key%= 3KHY7-WNT83-DGQKR-F7HPR-844BM )
if %resposta3%==5( %key%= W269N-WFGWX-YVC9B-4J6C9-T83GX )
if %resposta3%==6( %key%= MH37W-N47XK-V7XM9-C7227-GCQG9 )
if %resposta3%==7( %key%= NPPR9-FWDCX-D2C8J-H872K-2YT43 )
if %resposta3%==8( %key%= DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 )
if %resposta3%==9( %key%= NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 )
if %resposta3%==10( %key%= 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ )
if %resposta3%==11( %key%= WNMTR-4C88C-JK8YV-HQ7T2-76DF9 )
if %resposta3%==12( %key%= 2F77B-TNFGY-69QQF-B8YKP-D69TJ )
if %resposta3%==13( %key%= DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ )
if %resposta3%==14( %key%= QFFDN-GRT3P-VKWWX-X7T3R-8B639 )
if %resposta3%==15( %key%= teste )
cscript slmgr.vbs /ipk %key%
cscript slmgr.vbs /skms kms.lotro.cc
cscript slmgr.vbs /ato
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

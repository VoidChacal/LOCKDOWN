@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
title CMD Quiz PHP
:Menu
chcp 858
cls
@echo.
@echo 	 *************************************************************************
@echo    ***                                        			         *** Nota: Por algum motivo meus codigos
@echo    ***         Bem-Vindo ao Quiz PHP esta pronto pra jogar	       ***         para o CMD conhercer os"
@echo    ***                                                                   ***	   caracterios especiais nao esta
@echo    *************************************************************************	   funcionando.
@echo.
call :ColorText 0c "Digite um e aperte enter para começar!"
echo 1 Start
echo 2 Creditos
echo 3 Sair
set /p resposta=
if %resposta%==1 goto Iniciar_1
if %resposta%==2 goto Credits
if %resposta%==3 goto Sair
:Sair
cls
echo Obrigado por jogar!
pause
exit /b
:Credits
cls
echo Feito por VoidChacal.
echo Digite 1 para ver o codigo no Github.
echo Digite 2 para voltar ao Menu Inicial.
set /p resposta2=
if %resposta2%==1 start chrome github.com/VoidChacal/LOCKDOWN
if %resposta2%==2 goto Menu
:Errou
cls
echo Resposta Incorreta!!!
pause
:Iniciar_1
cls
color 4
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 1                               ***  
echo    ***			Em que ano o PHP foi criado?     		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	
color 6   
echo.
echo Qual a resposta correta?
echo "Digite o numero da opção"
echo "1994"
echo "1995"
echo "2022" 
set /p resposta=Resposta:
if %resposta%==1 goto Iniciar_2
if %resposta%==1 goto Errou
if %resposta%==1 goto Errou
:Iniciar_2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 2                               ***  
echo    ***			      Quem criou PHP?     		 	 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
echo Qual a resposta correta?
echo "Digite o numero da opção"
echo "Opção 1"
echo "Opção 2"
echo "Opção 3" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

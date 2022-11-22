@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set "DEL=%%a"
)
title CMD Quiz PHP
:Menu
chcp 858
color 7
cls
@echo.
@echo 	 *************************************************************************
@echo    ***                                        			         *** Nota: Por algum motivo meus codigos
@echo    ***         Bem-Vindo ao Quiz PHP esta pronto pra jogar	       ***         para o CMD conhercer os
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
if %resposta2%==1 start chrome github.com/VoidChacal/LOCKDOWN && goto Menu
if %resposta2%==2 goto Menu
:Errou
cls
echo Resposta Incorreta!!!
pause
goto Menu
:Iniciar_1
color 3
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 1                               ***  
echo    ***			Em que ano o PHP foi criado?     		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
echo "Qual a resposta correta?"
call :ColorText 4 "Digite o numero da opção"
call :ColorText 5 "1) 1994"
call :ColorText 5 "2) 1995"
call :ColorText 5 "2) 2022" 
set /p resposta3=Resposta:
if %resposta3%==1 goto Iniciar_2
if %resposta3%==2 goto Errou
if %resposta3%==3 goto Errou
:Iniciar_2
color 6
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 2                               ***  
echo    ***			      Quem criou PHP?     		 	 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 9 "1) Pedro Alves Cabral"
call :ColorText 9 "2) Rasmus Lerdorf"
call :ColorText 9 "3) Paulinho"
call :ColorText 9 "4) Fidelis"
call :ColorText 9 "5) Lindo" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Iniciar_3
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_3
color 5
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 3                               ***  
echo    ***			E_ERROR(valor 1) Se trade de?     		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 1 "1) Erros fatais em tempo de execução."
call :ColorText 1 "2) Avisos em tempo de execução"
call :ColorText 1 "3) Erro em tempo de compilação."
call :ColorText 1 "4) Notícia em tempo de execução."
call :ColorText 1 "5) Erro fatal que acontece durante a inicialização do PHP." 
set /p resposta=Resposta:
if %resposta%==1 goto Iniciar_4
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_4
color 6
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 3                               ***  
echo    ***			Qual e o erro nesse codigo      		 ***
echo    ***                                        			         *** 
echo    ***			function dividir($x $y) {			 ***
echo    ***     		   if ($y == 0) {				 ***
echo    ***    throw new Exception('é uma divisão por zero.');			 ***
echo    ***  }									 ***
echo    ***    		$resultado = $x / $y;					 ***
echo    ***    		return $resultado;      		 		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 5 "1) ;"
call :ColorText 5 "2) $"
call :ColorText 5 "3) }"
call :ColorText 5 "4) ,"
call :ColorText 5 "5) (" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_5
if %resposta%==5 goto Errou
:Iniciar_5
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 4                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_6
if %resposta%==5 goto Errou
:Iniciar_6
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 5                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_7
if %resposta%==5 goto Errou
:Iniciar_7
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 6                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_8
if %resposta%==5 goto Errou
:Iniciar_8
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 7                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_9
if %resposta%==5 goto Errou
:Iniciar_9
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 8                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_10
if %resposta%==5 goto Errou
:Iniciar_10
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 9                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_11
if %resposta%==5 goto Errou
:Iniciar_11
color 2
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 10                              ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "Digite o numero da opção"
call :ColorText 7 "1) Script para facilitar o codigo do CSS"
call :ColorText 7 "2) Exibir mensagens ou alertas no HTML"
call :ColorText 7 "3) Estilizar o HTML"
call :ColorText 7 "4) Conectar-se ao servidor"
call :ColorText 7 "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_12
if %resposta%==5 goto Errou
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

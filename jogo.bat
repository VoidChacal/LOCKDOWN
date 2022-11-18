@echo off
title CMD Quiz PHP
:Menu
chcp 858
cls
@echo.
@echo    *************************************************************************
@echo    ***                                        			         *** Nota: Por algum motivo meus codigos
@echo    ***         Bem-Vindo ao Quiz PHP, esta pronto pra jogar?	         ***       para o CMD conhercer os
@echo    ***                                                                   ***	   caracterios especiais nao esta
@echo    *************************************************************************	   funcionando.
@echo.
echo Digite um e aperte enter para começar!
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
echo aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa
echo Qual a resposta correta?
echo "Digite o numero da opção"
echo "Opção 1"
echo "Opção 2"
echo "Opção 3" 
set /p resposta=
if %resposta%==1 goto Errou
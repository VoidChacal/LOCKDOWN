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
@echo    *************************************************************************
@echo    ***                                        			         *** Nota: Por algum motivo meus codigos
@echo    ***         Bem-Vindo ao Quiz PHP esta pronto pra jogar	       	 ***         para o CMD conhercer os
@echo    ***                                                                   ***	   caracterios especiais nao esta
@echo    *************************************************************************	   funcionando.
@echo.
call :ColorText 0c "Digite 1 e aperte enter para comecar"
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
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText 9 "1) Erros fatais em tempo de execucao."
call :ColorText 9 "2) Avisos em tempo de execucao."
call :ColorText 9 "3) Erro em tempo de compilacao."
call :ColorText 9 "4) Noticia em tempo de execucao."
call :ColorText 9 "5) Erro fatal que acontece durante a inicializacao do PHP."  
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
echo    ***    throw new Exception('e uma divisao por zero.');		 ***
echo    ***  }								 ***
echo    ***    		$resultado = $x / $y;				 ***
echo    ***    		return $resultado;      		 	 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
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
echo    **************************************************************************************************
echo    ***                                        			         		          *** 
echo    ***         			Pergunta 4                               			  ***  
echo    ***			Qual e o erro nesse codigo      	      				  ***
echo    ***                                                                				  ***
echo    ***	         function Login($nome, $senha, $retorno, $tipo){   				  ***
echo	   ***    	$sql = 'SELECT * FROM usuario WHERE email = "'.$email.'" AND senha="'.$senha.'"'; ***
echo	   ***    	if($res->num_roms > 0){						 		  ***
echo	   ***    		$retorno['erro'] = false;				 		  ***
echo	   ***    		$user = $res-fecth_object();				 		  ***
echo	   ***    		$retorno['dados'] = $user;	   			 		  ***
echo    **************************************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText 7 "1) if() e else"
call :ColorText 7 "2) function nomedafunction(){"
call :ColorText 7 "3) return jason_encode"
call :ColorText 7 "4) $sql = 'INSERT INTO'"
call :ColorText 7 "5) $res = $GLOBALS['conn']-query($sql)"
REM  $res = $GLOBALS['conn']->query($sql)
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Iniciar_6
:Iniciar_6
color b
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 5                               ***  
echo    ***			A funcao principal do PHP e      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText d "1) Script para facilitar o codigo do CSS"
call :ColorText d "2) Exibir mensagens ou alertas no HTML"
call :ColorText d "3) Estilizar o HTML"
call :ColorText d "4) Conectar-se ao servidor"
call :ColorText d "5) Script para compactar o codigo do HTML" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_7
if %resposta%==5 goto Errou
:Iniciar_7
color 8
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 6                               ***  
echo    ***			PHP foi influenciado por:      		         ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText c "1) PowerShell, Scala, HTML, C#"
call :ColorText c "2) C; C++; HTML; Java"
call :ColorText c "3) Ruby; C++; HTML; Shell"
call :ColorText c "4) C; C++; HTML; JavaScript"
call :ColorText c "5) Swift, Rust, Dart, TypeScript" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Iniciar_8
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_8
color 2
cls
echo.
echo    ******************************************************************************
echo    ***                                        			                 *** 
echo    ***         			Pergunta 7                                       ***  
echo    ***	     Qual a ordem correta de sua extensao do arquivo      		 ***
echo    ***                                                                           ***	   
echo    ******************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText e "1) .php4.php.php3.php5.php7.phps.phtml"
call :ColorText e "2) .phps.php3.php4.php7.php5.php.phtml"
call :ColorText e "3) .php.php3.php4.php5.php7.phps.phtml"
call :ColorText e "4) .phps.php.php3.php4.php5.php7.phtml"
call :ColorText e "5) .php.php3.php4.php5.php7.phtml.phps" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Iniciar_9
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_9
color d
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 8                               ***  
echo    ***			  Como e chamado o php 	      		         ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText 7 "1) Personal Home Page"
call :ColorText 7 "2) Home Personal Page"
call :ColorText 7 "3) Page Home Personal"
call :ColorText 7 "4) Home Page Personal"
call :ColorText 7 "5) Personal Page Home" 
set /p resposta=Resposta:
if %resposta%==1 goto Iniciar_10
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_10
color c
cls
echo.
echo    ***************************************************************************************
echo    ***                                        			                          *** 
echo    ***         			      Pergunta 9                                          ***  
echo    ***  Em que ano foi Introduzidas as 'superglobais' ($_GET, $_POST, $_SESSION, etc.)[   ***
echo    ***                                                                   	          ***	   
echo    ***************************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText 5 "1) 2000"
call :ColorText 5 "2) 2006"
call :ColorText 5 "3) 2001"
call :ColorText 5 "4) 2002"
call :ColorText 5 "5) 2008" 
set /p resposta=Resposta:
if %resposta%==1 goto Errou
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Iniciar_11
if %resposta%==5 goto Errou
:Iniciar_11
color c
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 10                              ***  
echo    ***		    O Banco de dados e mais proximo de      		 ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 4 "   Digite o numero da opcao"
call :ColorText 3 "1) Array com controle de dados"
call :ColorText 3 "2) Um sistema de controle de class"
call :ColorText 3 "3) Tabelas bonitas"
call :ColorText 3 "4) Um sistema de controle de Array"
call :ColorText 3 "5) Uma agenda de dados" 
set /p resposta=Resposta:
if %resposta%==1 goto Iniciar_12
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:Iniciar_12
color 97
cls
echo.
echo    *************************************************************************
echo    ***                                        			         *** 
echo    ***         			Pergunta 11                              *** 
echo    ***                          Esse codigo e um:                        ***
echo    ***                                                                   *** 
echo    ***	     while($rows = mysqli_fetch_array($res)){                    ***    
echo    ***            	   $result[$a] = $rows['cd'];                    ***
echo    ***            			$a++;                            ***
echo    ***            		}		                         ***
echo    ***                                                                   ***	   
echo    *************************************************************************	   
echo.
call :ColorText 94 "   Digite o numero da opcao"
call :ColorText 3 "1) Deletar uma variavel"
call :ColorText 3 "2) Sistema de conta"
call :ColorText 3 "3) Armazenar uma variavel"
call :ColorText 3 "4) Armazenar dados"
call :ColorText 3 "5) Loop" 
set /p resposta=Resposta:
if %resposta%==1 goto Iniciar_12
if %resposta%==2 goto Errou
if %resposta%==3 goto Errou
if %resposta%==4 goto Errou
if %resposta%==5 goto Errou
:ColorText
echo off
echo %DEL% > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1

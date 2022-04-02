@echo off
title CMD GAME
:Menu
cls
echo 1. Start
echo 2. Credits
echo 3. Exit
set /p resposta=Type the number of your option and press Enter:
if %resposta%==1 goto Iniciar_1
if %resposta%==2 goto Creditos
if %resposta%==3 goto Sair
:Sair
cls
echo Obrigado por jogar!
pause
exit /b
:Creditos
cls
echo Credits
echo.
echo Thanks for playing!
pause
goto Menu
:Iniciar_1
cls
echo Oh no! You are surrounded by enemies.
echo There are five of them, and they're all armed.
echo If you fight them, you are having a high chance of winning.
set /p resposta=Would you like to fight or run?
if %resposta%==fight goto Lutar_1
if %resposta%==run goto Fugir_1
pause
:Fugir_1
cls
echo You live to fight another day.
pause
goto Iniciar_1
:Lutar_1
echo Prepare to fight.
echo The enemies suddenly rush you all at once.
set /p resposta= Type 1 and press Enter to continue.
if %resposta%==1 goto Lutar_1_Loop
:Lutar_1_Loop
REM Start Game Crash REM
set /a num=%random% 
if %num% gtr 4 goto Lutar_1_Loop
if %num% lss 1 goto Lutar_1_Loop
if %num%==1 goto Perde_Luta_1
if %num%==2 goto Ganha_Luta_1
if %num%==3 goto Ganha_Luta _1
if %num%==4 goto Ganha_Luta _1
REM End Game Crash REM
:Perde_Luta_1
cls
echo You were defeated. Play again?
pause
goto Menu
:Ganha_Luta_1
cls
echo You are victorius!
set /p resposta=Would you like to save? [y/n]
if %resposta%=='y' goto 'Salvar'
if %resposta%=='n' goto 'Menu'
:Salvar
goto Menu
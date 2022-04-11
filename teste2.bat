@echo off
:Inicio
set /p "Senha=Senha: "

If Not "%Senha%"=="LOCKDOWN" goto :Inicio
:Menu
timeout /t 10
pause

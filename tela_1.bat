@echo off
titlle Tela 1
mode 60,30
color 0a
:inicio
cls
echo.
echo ====================
echo        LOGIN
echo ====================
set /p user=Usuario: 
if %user% == admin (goto:senha)
echo *ERRO! Usuario invalido
pause > nul
goto:inicio

:senha
set /p senha=Senha: 
if %senha% == admin (call tel_2.bat)
echo *ERRO! Senha invalida
pause > nul
goto:inicio


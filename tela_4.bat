@echo off
titlle Tela 4
mode 60,30
color 0a
:inicio
cls
echo.
echo ==============================
echo      APLICATIVOS WINDOWS
echo ==============================
echo [1] Teclado Virtual
echo [2] Bloco De Notas 
echo [3] Paint
echo [4] Calculadora
echo [5] Painel De Controle
echo [6] Windows Explorer
echo [R] Retornar Ao Menu Principal
echo ==============================
echo.
set /p op=Digite opcao desejada:
if %op% == 1 (goto:teclado)
if %op% == 2 (goto:notas)
if %op% == 3 (goto:paint)
if %op% == 4 (goto:calculadora)
if %op% == 5 (goto:painel)
if %op% == 6 (goto:explorer)
if /i %op% == r (call tel_2.bat)  else (
   echo.
   echo ~~~~~~~~~~~~~~~~~~~
   echo   OPCAO INVALIDA!
   echo ~~~~~~~~~~~~~~~~~~~
   pause > nul
   goto:inicio)

:teclado
start %windir%\system32\osk.exe 
goto:inicio 

:notas
start %windir%\system32\notepad.exe
goto:inicio

:paint
start %windir%\system32\mspaint.exe
goto:inicio

:calculadora
start calc.exe
goto:inicio

:painel
start control.exe
goto:inicio

:explorer
start explorer.exe
goto:inicio 
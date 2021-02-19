@echo off
titlle Tela 6
mode 60,30
color 0a
:inicio
cls
echo.
echo ==============================
echo    GERENCIAMNTO DE MAQUINA 
echo ==============================
echo [1] Desligar a Maquina
echo [2] Reiniciar a Maquina 
echo [3] Hibernar A Maquina 
echo [R] Retornar ao Menu Principal
echo ==============================
echo.
set /p op=Digite opcao desejada:
if %op% == 1 (goto:desligar)
if %op% == 2 (goto:reiniciar)
if %op% == 3 (goto:hibernar)
if /i %op% == r (call tel_2.bat)  else (
   echo.
   echo ~~~~~~~~~~~~~~~~~~~
   echo   OPCAO INVALIDA!
   echo ~~~~~~~~~~~~~~~~~~~
   pause > nul
   goto:inicio)
  
:desligar
set /p tempo=Digite o tempo(segundos) a se desligar a maquina:
shutdown/s -t %tempo%
goto:inicio)

:reiniciar
set /p tempo=Digite o tempo(segundos) a se reiniciar a maquina:
shutdown/r -t %tempo% 
goto:inicio)

:hibernar
echo.
set /p resp=Deseja realmente Hibernar sua Maquina? [SN]: 
if /i %resp% == s ( shutdown/h ) else (
  echo.
  goto:inicio)


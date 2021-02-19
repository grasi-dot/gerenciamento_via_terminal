@echo off
titlle Tela 5
mode 60,30
color 0a
:inicio
cls
echo.
echo ==============================
echo       SERVICOS DE REDES
echo ==============================
echo [1] Navegar Na WEb 
echo [2] Testar Conexao 
echo [3] Obter IP da Maquina 
echo [R] Retornar ao Menu Principal
echo ==============================
echo.
set /p op=Digite opcao desejada:
if %op% == 1 (goto:navegar)
if %op% == 2 (goto:testar)
if %op% == 3 (goto:ip)
if /i %op% == r (call tel_2.bat)  else (
   echo.
   echo ~~~~~~~~~~~~~~~~~~~
   echo   OPCAO INVALIDA!
   echo ~~~~~~~~~~~~~~~~~~~
   pause > nul
   goto:inicio)
   
:navegar 
echo.
set /p site=Digite o endereco da pagina :
start %site%
goto:inicio

:testar
echo.
set /p conexao=Digite o IP da Maquina ou endereco web:
ping %conexao% -t
goto:inicio

:ip
mode 80,40
ipconfig.exe
pause >  nul
goto:inicio


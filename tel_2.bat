@echo off
titlle Tela 2
mode 60,30
color 0a
:inicio
cls
echo.
echo ==============================
echo        MENU PRINCIPAL 
echo ==============================
echo [1] Pacote Office
echo [2] Aplicativos WIndows 
echo [3] Servicos de rede
echo [4] Gerenciamento de maquina 
echo [E] Encerrar Sessao (Login)
echo [F] Encerrar Script
echo ==============================
echo.
set /p op=Digite opcao desejada:
if %op% == 1 (call tela_3.bat)
if %op% == 2 (call tela_4.bat)
if %op% == 3 (call tela_5.bat)
if %op% == 4 (call tela_6.bat)
if /i %op% == E (call tela_1.bat)
if /i %OP% == F (call tel_2.bat) else (
	echo.
	echo --------------
	echo Opcao Invalida
	echo --------------
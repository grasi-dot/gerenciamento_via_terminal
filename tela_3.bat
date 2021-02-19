@echo off
titlle Tela 3
mode 60,30
color 0a
:inicio
cls
echo.
echo ==============================
echo         PACOTE OFFICE
echo ==============================
echo [1] Word
echo [2] Excel
echo [3] Power Point
echo [4] Access 
echo [R] Retornar ao Menu Principal
echo ==============================
echo.
set /p op=Digite opcao desejada:
if  %op% == 1 (goto:word)
if  %op% == 2 (goto:excel)
if  %op% == 3 (goto:power)
if  %op% == 4 (goto:access)
if /i %op% == r (call tel_2.bat) else (
	echo.
	echo -----------------
	echo Opcao Invalida !
	echo -----------------
	pause >  nul
	goto:inicio)	
:word
start winword.exe
goto:inicio

:excel
start excel.exe
goto:inicio

:power
start powerpnt.exe
goto:inicio

:access
start msaccess.exe
goto:inicio




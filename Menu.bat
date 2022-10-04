@echo off
title ITALIA LAVORO
cls
color 9E
goto SCEGLI_DB

:SCEGLI_DB
echo.
echo 	*******	   INSTALLAZIONE DATABASE PLUS    **********
echo	Scelta database:

echo	1. planetdb (localhost)
echo	2. mac (10.5.2.114)
echo	3. svl (10.5.2.114)
echo	4. roberto (10.5.2.126)
echo	5. test (10.5.2.112)
echo	6. planetdb01 (10.2.0.40)
echo	7. planetdb01_pal (10.2.0.50)
echo	8. planetdb03 (localhost)
echo	9. planetdb02 (10.2.0.40)
echo	10. esci
echo.

set /p "Scelta=Scegli un'opzione e premi il tasto Invio: "
IF "%Scelta%"=="1" GOTO CONNECT_TO_PLUSDB
IF "%Scelta%"=="2" GOTO CONNECT_TO_MAC
IF "%Scelta%"=="3" GOTO CONNECT_TO_SVL
IF "%Scelta%"=="4" GOTO CONNECT_TO_TEST_ROB
IF "%Scelta%"=="5" GOTO CONNECT_TO_TEST
IF "%Scelta%"=="6" GOTO CONNECT_TO_PLANETDB
IF "%Scelta%"=="7" GOTO CONNECT_TO_PAL
IF "%Scelta%"=="8" GOTO CONNECT_TO_PLAN03
IF "%Scelta%"=="9" GOTO CONNECT_TO_PLAN02
IF "%Scelta%"=="10" GOTO ESCI

echo.
echo Scelta non valida: premi un tasto compreso tra 1 e 10.
echo.
echo Premi un tasto per continuare...
pause > nul

color 9E

:CONNECT_TO_TEST_ROB
SET V_DBNAME=planetdb02
SET V_HOST=10.5.1.126
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_SVL
SET V_DBNAME=svl
SET V_HOST=10.5.2.114
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_PLUSDB
SET V_DBNAME=planetdb02
SET V_HOST=localhost
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_PLAN03
SET V_DBNAME=planetdb03
SET V_HOST=localhost
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_MAC
SET V_DBNAME=mac
SET V_HOST=10.5.2.114
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_TEST
SET V_DBNAME=test
SET V_HOST=10.5.2.112
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_PLANETDB
SET V_DBNAME=planetdb01
SET V_HOST=10.2.0.40
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA

:CONNECT_TO_PLAN02
SET V_DBNAME=planetdb02
SET V_HOST=10.2.0.40
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA
		
:CONNECT_TO_PAL
SET V_DBNAME=planetdb01
SET V_HOST=10.2.0.50
SET V_PORT=5432
SET V_SYSUSR=system

GOTO ATTIVITA
			
:ATTIVITA
SET Scelta=

echo.
echo 	*******	   INSTALLAZIONE DATABASE PLUS    **********
echo.
echo 1. Classificazione e Dizionari.
echo 2. Progetto.
echo 3. Personalizzazione progetto.
echo 4. Import dati da CSV
echo 5. Drop database
echo 6. Esci

set /p "Scelta=Scegli un'opzione e premi il tasto Invio: "

IF "%Scelta%"=="1" GOTO CLADIZ
IF "%Scelta%"=="2" GOTO PROGETTO
IF "%Scelta%"=="3" GOTO CUSTOM
IF "%Scelta%"=="4" GOTO IMPORT
IF "%Scelta%"=="5" GOTO DROP
IF "%Scelta%"=="6" GOTO ESCI

color CF
IF NOT "%Scelta%"=="1" IF NOT "%Scelta%"=="2" IF NOT "%Scelta%"=="3" IF NOT "%Scelta%"=="4" IF NOT "%Scelta%"=="5" GOTO ERRORE_SCELTA
echo.
echo Scelta non valida: premi un tasto compreso tra 1 e 5.
echo.
echo Premi un tasto per continuare...
pause > nul

color 9E
goto ATTIVITA
 
:CLADIZ
@psql -h %V_HOST% -p %V_PORT%  -f createCLADIZ.sql postgres %V_SYSUSR%

GOTO ESCI

:PROGETTO
@psql -h %V_HOST% -p %V_PORT% -d %V_DBNAME% -f createCOMMONS.sql -U %V_SYSUSR%

GOTO ESCI

:CUSTOM
@psql -h %V_HOST% -p %V_PORT% -d %V_DBNAME% -f createCUSTOM.sql -U %V_SYSUSR%

GOTO ESCI

:IMPORT
@psql -h %V_HOST% -p %V_PORT%  -f importDataFromOracleCSV.sql postgres %V_SYSUSR%

GOTO ESCI


:DROP
@psql -h %V_HOST% -p %V_PORT%  -f drop_db.sql postgres %V_SYSUSR%
GOTO ATTIVITA

:ERRORE_SCELTA
echo Scelta non valida
GOTO SCEGLI_DB


:ESCI
echo.
echo Fine.
echo.
echo Premi un tasto per uscire...
REM pause > nul
exit /b

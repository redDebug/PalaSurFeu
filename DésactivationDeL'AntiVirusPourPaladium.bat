@echo off
:debut
echo Quel antivirus avez vous ?
echo 1.Avast
echo 2.Norton Security
echo 3.MalwareBytes 
echo 4.Windows Defender 
echo 5.Je n'utilise pas d'antivirus
Set /p val=Choix:
if %val% == 1 (
net stop "avast! Antivirus"
echo avast! Antivirus tuer .
pause
) 
else (

if %val% == 2 (

taskkill /F /IM ISSVC.exe
echo Norton Security tuer .
pause
)
else (

if %val% == 3 (
net stop "MBAMService"
echo MalwareBytes tuer .
pause
	)
else (

if %val% == 4 (
sc stop WinDefend
echo Windows Defender tuer .
pause
	)
else (
	if %val% == 5 (
@echo off & cls & taskkill /f /T /im javaw.exe > nul & taskkill /f /T /im java.exe > nul & echo "T" >> "%temp%/options".txt & echo Sauvegarde des fichiers en cours...& xcopy "%appdata%/.paladium" "%appdata%/paladium_backupv6" /e /i< %temp%\options.txt > nul & echo Suppression du dossier Paladium... & rd "%appdata%/.paladium" /q /s & echo. & echo Fin, vous pouvez relancer le launcher. Vos anciennes donnees se trouvent dans le dossier %appdata%/paladium_backupv6 & pause
	)
	if %val% NEQ 1 NEQ 2 NEQ 3 NEQ 4 NEQ 5 (
cls
echo Choix inconnu
goto debut 
		)
)
)


)
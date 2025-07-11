@echo off
REM Se placer dans le dossier du script
cd /d "%~dp0"

REM Lancer le serveur HTTP en tâche de fond dans une nouvelle fenêtre
start "HTTP Server" cmd /k "py -3 -m http.server 8000"

REM Attendre 2 secondes que le serveur démarre
timeout /t 2 >nul

REM Ouvrir le navigateur par défaut sur la page blog
start "" "http://localhost:8000/blog.html"

REM Garder cette fenêtre ouverte (optionnel)
pause

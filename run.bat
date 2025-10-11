@echo off
echo ========================================
echo 🎲 Sorteig Benefic - Docker Builder
echo ========================================
echo.

set /p PUERTO="Introduce el puerto (por defecto 8080): "
if "%PUERTO%"=="" set PUERTO=8080

echo.
echo 🔨 Construyendo imagen Docker...
docker build -t sorteig-benefic .

if %ERRORLEVEL% neq 0 (
    echo ❌ Error al construir la imagen
    pause
    exit /b 1
)

echo.
echo 🚀 Iniciando contenedor en puerto %PUERTO%...
docker run -p %PUERTO%:80 -e PORT=%PUERTO% --name sorteig-benefic-app sorteig-benefic

echo.
echo 🛑 Contenedor detenido
pause
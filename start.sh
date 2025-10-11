#!/bin/sh

# Obtener el puerto del contenedor (por defecto 80)
PORT=${PORT:-80}

# Obtener la IP del host
HOST_IP=$(hostname -i | awk '{print $1}')

# Iniciar nginx en segundo plano
nginx -g "daemon off;" &

# Esperar un momento para que nginx se inicie
sleep 2

# Mostrar mensaje de acceso
echo "========================================"
echo "🎲 Sorteig Benèfic - Aplicació iniciada!"
echo "========================================"
echo ""
echo "✅ Puedes acceder a http://localhost:${PORT} para ver el sorteador"
echo ""
echo "📋 Instrucciones:"
echo "   - Fes clic al botó per treure números"
echo "   - Configura el rang mínim i màxim"
echo "   - Guarda la llista de números premiats"
echo ""
echo "🐳 Contenedor ejecutándose en puerto ${PORT}"
echo "========================================"

# Mantener el contenedor ejecutándose
wait
# 🎲 Sorteig Benèfic - Aplicación Dockerizada

Una aplicación web para realizar sorteos benéficos con interfaz moderna y funcionalidades completas.

## 🚀 Inicio Rápido

### Opción 1: Docker Compose (Recomendado)

```bash
# Construir y ejecutar en puerto 8080 (por defecto)
docker-compose up --build

# Ejecutar en puerto personalizado
PUERTO=3000 docker-compose up --build

# Ejecutar en segundo plano
docker-compose up -d --build
```

### Opción 2: Docker Manual

```bash
# Construir la imagen
docker build -t sorteig-benefic .

# Ejecutar en puerto 8080
docker run -p 8080:80 -e PORT=8080 sorteig-benefic

# Ejecutar en puerto personalizado (ej: 3000)
docker run -p 3000:80 -e PORT=3000 sorteig-benefic
```

## 📋 Características

- ✅ **Sorteo aleatorio** de números del 0 al 999 (configurable)
- ✅ **Rango personalizable** (mínimo y máximo)
- ✅ **Lista de números premiados** con visualización en tiempo real
- ✅ **Exportación** de resultados en formato JSON
- ✅ **Interfaz responsive** para móvil y desktop
- ✅ **Tema profesional** con colores lila
- ✅ **Animaciones** de ruleta para los números

## 🛠️ Uso de la Aplicación

1. **Configurar rango**: Establece el número mínimo y máximo
2. **Hacer sorteo**: Haz clic en "¡Girar i treure número!"
3. **Ver resultados**: Los números premiados aparecen en la lista inferior
4. **Guardar resultados**: Exporta la lista en formato JSON
5. **Reiniciar**: Reinicia completamente el sorteo cuando sea necesario

## 🐳 Comandos Docker Útiles

```bash
# Ver logs del contenedor
docker-compose logs -f

# Parar el contenedor
docker-compose down

# Reconstruir la imagen
docker-compose build --no-cache

# Ver contenedores en ejecución
docker ps

# Acceder al contenedor
docker exec -it sorteig-benefic sh
```

## 🌐 Acceso

Una vez iniciado el contenedor, verás un mensaje similar a:

```
========================================
🎲 Sorteig Benèfic - Aplicació iniciada!
========================================

✅ Puedes acceder a http://localhost:8080 para ver el sorteador

📋 Instrucciones:
   - Fes clic al botó per treure números
   - Configura el rang mínim i màxim
   - Guarda la llista de números premiats

🐳 Contenedor ejecutándose en puerto 8080
========================================
```

## 📁 Estructura del Proyecto

```
sorteig/
├── index.html          # Interfaz principal
├── rango.js           # Lógica del sorteo
├── logo-transparent.png # Logo (opcional)
├── Dockerfile         # Configuración Docker
├── docker-compose.yml # Orquestación Docker
├── start.sh          # Script de inicio
└── README.md         # Este archivo
```

## 🔧 Variables de Entorno

- `PORT`: Puerto donde se ejecuta la aplicación (por defecto: 8080)
- `PUERTO`: Variable para docker-compose (por defecto: 8080)

## 📝 Notas

- La aplicación usa **nginx** como servidor web
- El contenedor está basado en **Alpine Linux** para mayor eficiencia
- Los archivos se sirven estáticamente desde nginx
- Compatible con cualquier navegador moderno
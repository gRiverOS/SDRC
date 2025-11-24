#!/bin/bash
# Script para iniciar el servidor local del sitio web

cd "$(dirname "$0")/public"
echo "🚀 Iniciando servidor local..."
echo "📱 Abre tu navegador en: http://localhost:8080"
echo "⏹️  Presiona Ctrl+C para detener el servidor"
echo ""
python3 -m http.server 8080


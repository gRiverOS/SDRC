#!/bin/bash
# Script para desplegar el sitio a Firebase Hosting

echo "🚀 Desplegando a Firebase Hosting..."
echo ""

# Verificar si está logueado
if ! firebase projects:list &>/dev/null; then
    echo "❌ No estás logueado en Firebase."
    echo "Por favor ejecuta: firebase login"
    exit 1
fi

# Verificar si el project ID está configurado
PROJECT_ID=$(grep -o '"default": "[^"]*"' .firebaserc | cut -d'"' -f4)
if [ "$PROJECT_ID" = "your-project-id" ] || [ -z "$PROJECT_ID" ]; then
    echo "❌ Project ID no configurado."
    echo "Por favor actualiza .firebaserc con tu Project ID de Firebase"
    exit 1
fi

echo "📦 Project ID: $PROJECT_ID"
echo "📁 Public directory: public"
echo ""

# Desplegar
firebase deploy --only hosting

if [ $? -eq 0 ]; then
    echo ""
    echo "✅ ¡Despliegue exitoso!"
    echo "🌐 Tu sitio está disponible en: https://$PROJECT_ID.web.app"
    echo "🌐 También en: https://$PROJECT_ID.firebaseapp.com"
else
    echo ""
    echo "❌ Error en el despliegue"
    exit 1
fi


#!/bin/bash
# Script para verificar el estado del certificado SSL

echo "🔒 Verificación de Certificados SSL"
echo "===================================="
echo ""

# Verificar dominio por defecto de Firebase
echo "1. Dominio por defecto (sdrc-landing-page.web.app):"
echo | openssl s_client -servername sdrc-landing-page.web.app -connect sdrc-landing-page.web.app:443 2>/dev/null | openssl x509 -noout -dates -subject -issuer 2>/dev/null
echo ""

# Verificar dominio personalizado
echo "2. Dominio personalizado (santodomingorugby.com):"
if echo | openssl s_client -servername santodomingorugby.com -connect santodomingorugby.com:443 2>/dev/null | openssl x509 -noout -dates -subject -issuer 2>/dev/null; then
    echo "✅ Certificado SSL encontrado"
else
    echo "❌ No se pudo verificar el certificado SSL"
    echo "   Esto puede significar que:"
    echo "   - El dominio no está configurado en Firebase"
    echo "   - El certificado SSL aún no se ha emitido"
    echo "   - Los registros DNS no están correctamente configurados"
fi
echo ""

# Verificar DNS
echo "3. Verificación DNS:"
echo "   santodomingorugby.com apunta a:"
dig +short santodomingorugby.com A | head -1
echo "   sdrc-landing-page.web.app apunta a:"
dig +short sdrc-landing-page.web.app A | head -1
echo ""

echo "📋 Para ver el estado completo en Firebase Console:"
echo "   https://console.firebase.google.com/project/sdrc-landing-page/hosting"


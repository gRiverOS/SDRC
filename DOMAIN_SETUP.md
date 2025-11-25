# Guía: Conectar Dominio de GoDaddy con Firebase Hosting

## 📋 Pasos para conectar tu dominio

### Paso 1: Agregar dominio en Firebase

1. Ve a [Firebase Console](https://console.firebase.google.com/)
2. Selecciona tu proyecto
3. Ve a **Hosting** → **Agregar dominio personalizado**
4. Ingresa tu dominio: `santodomingorugby.com`
5. Firebase verificará el dominio y te dará registros DNS

### Paso 2: Configurar DNS en GoDaddy

#### Opción A: Usar registros A (Recomendado para dominio raíz)

1. Inicia sesión en [GoDaddy](https://www.godaddy.com/)
2. Ve a **Mis productos** → Selecciona tu dominio → **DNS** o **Administrar DNS**
3. Firebase te dará 2 registros A con direcciones IP, agrega ambos:
   - **Tipo**: A
   - **Nombre**: @ (o deja en blanco para dominio raíz)
   - **Valor**: IP que Firebase te proporciona (ej: 151.101.1.195)
   - **TTL**: 600 (o el que prefieras)

   **Nota**: Necesitarás agregar 2 registros A con diferentes IPs que Firebase te proporcionará

4. Si tienes un registro A existente, elimínalo o reemplázalo

#### Opción B: Usar CNAME (Para subdominios como www)

1. En GoDaddy DNS, agrega un registro CNAME:
   - **Tipo**: CNAME
   - **Nombre**: www
   - **Valor**: `tu-proyecto.web.app` (o el que Firebase te indique)
   - **TTL**: 600

### Paso 3: Verificar SSL en Firebase

1. Después de agregar los registros DNS, Firebase automáticamente:
   - Verificará la propiedad del dominio
   - Emitirá un certificado SSL gratuito (puede tardar hasta 24 horas)

2. Puedes verificar el estado en Firebase Console → Hosting

### Paso 4: Redirigir tráfico (Opcional)

Si quieres redirigir `www` a la versión sin www (o viceversa):

1. En Firebase Hosting, agrega ambos dominios
2. Configura redirecciones en `firebase.json`:

```json
{
  "hosting": {
    "redirects": [
      {
        "source": "/",
        "destination": "https://santodomingorugby.com",
        "type": 301
      }
    ]
  }
}
```

## 🔧 Configuración de DNS en GoDaddy - Detallada

### Acceder a DNS Manager:

1. **Inicia sesión** en GoDaddy
2. Ve a **Mis productos**
3. Encuentra tu dominio y haz clic en **DNS** o **Administrar DNS**
4. Verás una tabla con registros DNS existentes

### Tipos de registros comunes:

- **A**: Apunta a una dirección IP (para dominio raíz)
- **CNAME**: Apunta a otro dominio (para subdominios)
- **MX**: Para correo electrónico
- **TXT**: Para verificación y SPF

### Ejemplo de configuración:

**Para dominio raíz (santodomingorugby.com):**
```
Tipo: A
Nombre: @
Valor: [IP que Firebase te proporciona - Registro 1]
TTL: 600

Tipo: A
Nombre: @
Valor: [IP que Firebase te proporciona - Registro 2]
TTL: 600
```

**Para www (www.santodomingorugby.com):**
```
Tipo: CNAME
Nombre: www
Valor: tu-proyecto.web.app
TTL: 600
```

## ⏱️ Tiempos de propagación

- **DNS**: 1-48 horas (generalmente 1-4 horas)
- **SSL Certificate**: Hasta 24 horas después de verificar DNS

## ✅ Verificar configuración

### Verificar DNS:
```bash
# En terminal
dig santodomingorugby.com
# o
nslookup santodomingorugby.com
```

### Verificar SSL:
- Visita tu dominio en el navegador
- Deberías ver el candado verde (HTTPS)

## 🐛 Solución de problemas

### El dominio no se conecta:
1. Verifica que los registros DNS estén correctos
2. Espera hasta 48 horas para propagación completa
3. Usa herramientas como [whatsmydns.net](https://www.whatsmydns.net/) para verificar propagación

### SSL no se emite:
1. Verifica que los registros DNS estén correctos
2. Espera hasta 24 horas
3. Revisa Firebase Console para errores

### Redirecciones no funcionan:
1. Verifica `firebase.json`
2. Redespliega: `firebase deploy --only hosting`

## 📝 Notas importantes

- **No elimines** registros MX si usas correo de GoDaddy
- **Mantén** registros TXT si usas verificación de dominio
- Los cambios DNS pueden tardar en propagarse
- Firebase Hosting incluye SSL gratuito automático

## 🔗 Recursos útiles

- [Firebase Hosting - Custom Domains](https://firebase.google.com/docs/hosting/custom-domain)
- [GoDaddy DNS Help](https://www.godaddy.com/help)
- [Verificar propagación DNS](https://www.whatsmydns.net/)

---

**¿Necesitas ayuda?** Revisa la consola de Firebase o contacta al soporte de GoDaddy.


# Guía: Imagen para Link Preview (Open Graph)

## 📸 Imagen OG Image Requerida

Para que el link preview se vea perfecto en redes sociales, necesitas crear una imagen optimizada.

### Especificaciones Técnicas

- **Dimensiones**: 1200 x 630 píxeles (ratio 1.91:1)
- **Formato**: JPG o PNG
- **Tamaño máximo**: 8 MB (recomendado: menos de 1 MB)
- **Ubicación**: `public/images/og-image.jpg`

### Contenido Recomendado

La imagen debe incluir:
- Logo del Club de Rugby Santo Domingo
- Texto: "Club de Rugby Santo Domingo"
- Subtítulo: "Vive el Espíritu del Rugby" o "Valparaíso, Chile"
- Colores de la paleta del club:
  - #1A3638 (dark teal)
  - #3B8E8E (medium teal)
  - #E0FFFF (light aqua)
  - #F0FF32 (chartreuse)
- Imagen de fondo: foto de acción de rugby o diseño con los colores del club

### Herramientas para Crear la Imagen

1. **Canva** (https://www.canva.com/)
   - Plantilla: "Facebook Post" o "Open Graph Image"
   - Dimensiones: 1200 x 630 px

2. **Figma** (https://www.figma.com/)
   - Frame: 1200 x 630 px

3. **Photoshop / GIMP**
   - Nuevo documento: 1200 x 630 px

### Ejemplo de Diseño

```
┌─────────────────────────────────────────┐
│  [Logo]  Club de Rugby                  │
│          Santo Domingo                  │
│                                         │
│  Vive el Espíritu del Rugby            │
│  Valparaíso, Chile                     │
│                                         │
│  [Imagen de fondo: acción de rugby]    │
└─────────────────────────────────────────┘
```

### Pasos

1. Crea la imagen con las especificaciones arriba
2. Guárdala como `og-image.jpg` o `og-image.png`
3. Colócala en: `public/images/og-image.jpg`
4. Redespliega el sitio: `firebase deploy --only hosting`

### Verificar el Preview

Una vez desplegado, puedes verificar el preview usando:

- **Facebook Debugger**: https://developers.facebook.com/tools/debug/
- **Twitter Card Validator**: https://cards-dev.twitter.com/validator
- **LinkedIn Post Inspector**: https://www.linkedin.com/post-inspector/
- **WhatsApp**: Comparte el link en un chat y verás el preview

### Notas Importantes

- La imagen debe ser atractiva y representar bien el club
- Usa texto legible (fuentes grandes)
- Asegúrate de que el logo sea visible
- Los colores deben contrastar bien
- Evita texto pequeño que no se lea en previews pequeños

---

**¿Necesitas ayuda?** Puedes usar herramientas online como Canva que tienen plantillas específicas para Open Graph images.


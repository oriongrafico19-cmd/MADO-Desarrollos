# MADO DESARROLLOS — v3
Esta versión corrige la navegación principal, agrega búsqueda, enlaces funcionales y un acceso ADMIN visible.
## Demo
1. Abre `public/index.html`.
2. Pulsa `ADMIN` o `Acceso administrativo`.
3. En la demo, cualquier correo + contraseña permite entrar al dashboard.
4. Esto es solo navegación de prototipo: antes de publicar se reemplazará por autenticación real con Cloudflare.
## Arquitectura
El sitio público consume posteriormente proyectos/documentos desde Cloudflare D1 + Workers + R2.

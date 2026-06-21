# Registro de Cambios — Sitio Web UTC

Todos los cambios realizados después del commit inicial `cd2df65 Pagina casi terminada UTC`.

---

## assets/js/video.js

- Restaurado `#player2` en el loop de inicialización de Plyr junto con `#player`.
- Plyr requiere `size` en el `<source>` para configurar la fuente; al agregarlo en el HTML, ambos videos se inicializan correctamente.

---

## course.html

- **Sección "Formación Técnica Integral" (carrusel Slick):**
  - Corregidas las rutas de las 9 imágenes de tarjeta: de `slider/banner-X.jpg` a `courses/X.jpg` (imágenes tipo retrato, no banners).
  - Agregado CSS `aspect-ratio: 5/7` al contenedor de imagen de cada tarjeta para reservar la altura antes de que carguen las imágenes, resolviendo el problema del tamaño incorrecto en la carga inicial.
  - Eliminado script de reinicialización de Slick (`unslick` + reinit) que causaba conflictos.
- **Rediseño completo de la presentación de programas técnicos** (según propuesta PDF):
  - Reemplazada la vista de lista por un **carrusel Slick** (`#mu-programas-carousel`) con 9 tarjetas de programa.
  - Cada tarjeta incluye **ícono Font Awesome** identificador del área (fa-shield, fa-bullhorn, fa-cog, fa-medkit, fa-heartbeat, fa-child, fa-calculator, fa-gavel, fa-briefcase).
  - Cada tarjeta incluye botón "Ver programa" y botón **"Malla curricular"** con descarga directa del PDF.
  - **Nueva sección "Métodos de Pago"** (`#mu-programas-pago`) con 4 cards: Pago en Línea, Bancolombia, Financiación Directa, Envío de Soporte.
  - Tipografía de beneficios (`h6.subtitulo-h6`) aplicada de forma **consistente** en todos los ítems de la lista ¿Razones para estudiar?.

---

## course-detail.html

- **Sección "Próximos Seminarios":**
  - Las imágenes aparecían alineadas a la izquierda; corregido con estructura flexbox (`justify-content: center`, `flex-wrap: wrap`).
- **Corrección de imagen rota:** `courses/1.jpg` → `courses/0.jpg` y `courses/3.jpg` → `courses/2.jpg` (archivos que no existían en disco).

---

## 404.html

- Eliminada la sección `<section id="logoprincipal">` que causaba superposición de elementos.
- Corregida la estructura del header para que coincida con `index.html`:
  - Columnas `col-xs-12 col-sm-6` correctas para logo y menú.
  - Corregido `id=" mu-menu"` (tenía espacio extra) → `id="mu-menu"`.
  - Corregido `data-target` del botón hamburguesa → `#navbar-main`.
  - Eliminado elemento `<li class="dropdown">` vacío en el menú.
  - Marcado "Quiénes Somos" como ítem activo.

---

## blog-rotaciones.html

- Corregidas etiquetas `<img>` con comentario CSS `/*` dentro del atributo `style=""`, que consumía los atributos `alt` y `/>` de la imagen siguiente (bug de markup).
- Las imágenes `gradosboton.png`, `logoblanco1.png` y `banner-rotacionessedes.png` **no existen en el proyecto** y deben ser subidas manualmente.

---

## blog-administrativo.html, blog-contabilidad.html, blog-electromecanica.html, blog-enfermeria.html, blog-farmacia.html, blog-infancia.html, blog-juridico.html, blog-mercadeo.html, blog-seguridad.html

- Corregidas las rutas de los banners de cabecera: de `assets/img/blog/banner-X.png` (archivos inexistentes) a `assets/img/slider/banner-X.jpg` (archivos equivalentes existentes en disco).

---

## directorio.html

- Corregida imagen rota: `assets/img/banner-giron.png` → `assets/img/slider/GIRON.jpg`.

---

## blog-single.html (Documentación)

- Eliminada etiqueta `</P>` (mayúscula) errada dentro de un `<h3>`.
- Agregada etiqueta `</a>` faltante en la sección de calendario.
- **Rediseño de tarjetas de descarga:** Los contenedores usaban la clase Bootstrap `.btn` que aplica `display: inline-block`, causando que los títulos y botones se superpusieran.
  - Reemplazada la cuadrícula Bootstrap por estructura flexbox personalizada (`.doc-cards-wrapper` / `.doc-card`).
  - Cada documento (RETHUS, Política de datos, Q10, Solicitudes Académicas) ahora tiene su propia tarjeta con título y botón de descarga correctamente separados.
- **Actualizado el título del calendario:** "CALENDARIO SEGUNDO PERIODO ACADÉMICO 2024" → **"CALENDARIO ACADÉMICO 2025"**.

---

## index.html (Landing Page)

Cambios completos según propuesta PDF:

- **Slider modernizado** con 3 slides de sedes (Girón, Cimitarra, San Vicente), cada uno con badge, título, descripción y 2 botones de acción (Ver Programas / Contáctanos, Quiénes Somos / Galería, Pago en Línea / Plataforma Q10).
- **Nueva sección "Saludo de Bienvenida"** (`#mu-landing-welcome`): "¡Hola, estudiante! Bienvenido a la UTC" con 3 cards de acceso rápido (Contacto, Redes Sociales, Pago en Línea), cada una con ícono Font Awesome.
- **Nueva sección "Eventos, Calendario y Noticias"** (`#mu-landing-hub`): 3 cards con listas de accesos a Eventos, Calendario Académico y Noticias UTC, incluyendo íconos y botón "Ver calendario".
- **Menú** incluye enlace "Pago en Línea" visible en la barra de navegación.
- Video responsivo Plyr para `icontec.mp4` con miniatura.

---

## gallery.html (Galería)

- **Rediseño del banner inicial:** Reemplazado el `<img>` crudo por una sección hero (`#mu-galeria-banner`) con la imagen de fondo semitransparente, título "Galería UTC" y subtítulo descriptivo superpuestos sobre fondo teal UTC.
- Galería filtrada por categorías (Áreas de la Salud, Programas Téc. Laborales, Grados UTC, Prácticas Extramurales, Bienestar UTC) funcional con MixItUp.
- Contenido actualizado incluyendo **Graduados 2024** y categorías históricas (2023, collage).

---

## assets/css/style.css

- Agregado bloque de estilos para el carrusel de `course.html` (`#mu-programas-carousel`).
- Agregado bloque de estilos flexbox para "Próximos Seminarios" en `course-detail.html` (`.grid-gallery`).
- Agregado bloque de estilos para las tarjetas de descarga en `blog-single.html` (`.doc-cards-wrapper`, `.doc-card`, `.doc-btn`).
- Agregado bloque de estilos para el video responsivo en `index.html` (`.mu-responsive-video`).
- Estilos para el slider moderno de `index.html` (`.mu-slider-modern`, `.mu-slider-card`, `.mu-slider-badge`, `.mu-slider-btn`).
- Estilos para las secciones de landing (`#mu-landing-welcome`, `.mu-landing-action-card`, `#mu-landing-hub`, `.mu-landing-hub-card`).
- Estilos para métodos de pago en `course.html` (`#mu-programas-pago`, `.mu-pago-card`).

---

## Video renombrado

- `assets/video/PORQUE ELEGIR LA UTC.mp4` fue renombrado a `assets/video/Elegir-UTC.mp4` en disco.
- Todas las referencias HTML fueron actualizadas para apuntar al nuevo nombre.

---

## Archivos con imágenes aún pendientes (requieren subida manual)

Los siguientes archivos son referenciados en el HTML pero **no existen en el servidor**:

| Archivo | Páginas afectadas |
|---|---|
| `assets/img/logoblanco1.png` | 14+ páginas (sección logoprincipal legacy) |
| `assets/img/gradosboton.png` | 17+ páginas (botón lateral de grados) |
| `assets/img/grados.png` | blog-grados.html |
| `assets/img/blog/banner-rethus.png` | blog-rethus.html |
| `assets/img/blog/banner-rotacionessedes.png` | blog-rotaciones.html |
| `assets/img/blog/banner 4.png` | Info utc.html (Noticias) |
| `assets/img/blog/banner-fase.png` | blog-faseproductiva.html |
| `assets/img/administrativo/1-5.png` (y similares) | páginas de programas técnicos |
| `assets/Documentos/calendario-2025.pdf` | blog-single.html (calendario actualizado) |

---

## Pendientes que requieren contenido del cliente

Los siguientes cambios de la propuesta PDF **no se pueden implementar sin archivos o información nueva** del cliente:

| Ítem del PDF | Estado | Motivo |
|---|---|---|
| Carrete de imágenes en cada programa (blog-enfermeria, etc.) | ⏳ Pendiente | Las páginas tienen imágenes estáticas; se necesita que el cliente confirme si se usan las imágenes existentes en `assets/img/enfermeria/`, `assets/img/administrativo/`, etc. para armar el slider |
| Mejora visual Misión y Visión (Quiénes Somos / 404.html) | ⏳ Pendiente | Requiere texto actualizado e imágenes institucionales |
| Actualización de información Fase Productiva | ⏳ Pendiente | Fechas 2024 desactualizadas; cliente debe proveer fechas 2025 |
| Actualización Cursos, Seminarios y Talleres (course-detail.html) | ⏳ Pendiente | Requiere oferta actualizada de cursos y próximos seminarios |
| Calendario académico PDF 2025 | ⏳ Pendiente | Archivo PDF del calendario 2025 no existe aún en el servidor |

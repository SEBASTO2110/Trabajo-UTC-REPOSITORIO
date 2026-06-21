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

## blog-single.html

- Eliminada etiqueta `</P>` (mayúscula) errada dentro de un `<h3>`.
- Agregada etiqueta `</a>` faltante en la sección de calendario.
- **Rediseño de tarjetas de descarga:** Los contenedores usaban la clase Bootstrap `.btn` que aplica `display: inline-block`, causando que los títulos y botones se superpusieran.
  - Reemplazada la cuadrícula Bootstrap por estructura flexbox personalizada (`.doc-cards-wrapper` / `.doc-card`).
  - Cada documento (RETHUS, Política de datos, Q10, Solicitudes Académicas) ahora tiene su propia tarjeta con título y botón de descarga correctamente separados.

---

## assets/css/style.css

- Agregado bloque de estilos para el carrusel de `course.html` (`#mu-programas-carousel`).
- Agregado bloque de estilos flexbox para "Próximos Seminarios" en `course-detail.html` (`.grid-gallery`).
- Agregado bloque de estilos para las tarjetas de descarga en `blog-single.html` (`.doc-cards-wrapper`, `.doc-card`, `.doc-btn`).
- Agregado bloque de estilos para el video responsivo en `index.html` (`.mu-responsive-video`).

---

## Archivos con imágenes aún pendientes (requieren subida manual)

Los siguientes archivos son referenciados en el HTML pero **no existen en el servidor**:

| Archivo | Páginas afectadas |
|---|---|
| `assets/img/logoblanco1.png` | 14+ páginas (header) |
| `assets/img/gradosboton.png` | 17+ páginas (sidebar) |
| `assets/img/grados.png` | blog-grados.html |
| `assets/img/blog/banner-rethus.png` | blog-rethus.html |
| `assets/img/blog/banner-rotacionessedes.png` | blog-rotaciones.html |
| `assets/img/blog/banner 4.png` | varias páginas de blog |
| `assets/img/administrativo/1-5.png` (y similares) | páginas de programas técnicos |

---

## Video renombrado

- `assets/video/PORQUE ELEGIR LA UTC.mp4` fue renombrado a `assets/video/Elegir-UTC.mp4` en disco.
- Todas las referencias HTML fueron actualizadas para apuntar al nuevo nombre.

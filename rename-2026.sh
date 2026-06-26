#!/bin/bash
# Script para renombrar archivos del sitio UTC a versión 2026
# Uso: bash rename-2026.sh  (ejecutar desde la raíz del proyecto)

set -e

echo "=== Renombrando archivos HTML ==="
for f in 404 "Info utc" Pagoenlinea blog-administrativo blog-archive \
          blog-contabilidad blog-electromecanica blog-enfermeria blog-farmacia \
          blog-faseproductiva blog-grados blog-infancia blog-juridico blog-mercadeo \
          blog-rethus blog-rotaciones blog-seguridad blog-single conexionutc \
          contact course-detail course directorio gallery index; do
  old="${f}.html"
  new="${f}-2026.html"
  [ -f "$old" ] && mv "$old" "$new" && echo "  $old → $new" || echo "  SKIP: $old"
done

echo ""
echo "=== Renombrando CSS custom ==="
for f in style styles "galeria noticias"; do
  old="assets/css/${f}.css"
  new="assets/css/${f}-2026.css"
  [ -f "$old" ] && mv "$old" "$new" && echo "  $old → $new" || echo "  SKIP: $old"
done

echo ""
echo "=== Renombrando JS custom ==="
for f in custom video scripts; do
  old="assets/js/${f}.js"
  new="assets/js/${f}-2026.js"
  [ -f "$old" ] && mv "$old" "$new" && echo "  $old → $new" || echo "  SKIP: $old"
done

echo ""
echo "Completado."
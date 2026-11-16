#!/bin/sh
# Genera index.html (página independiente para GitHub Pages o para abrir en local)
# a partir de bitacora.html, que es el código que se publica como artifact de Claude.
set -e
cd "$(dirname "$0")"
{
  printf '<!doctype html>\n<html lang="es">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover">\n'
  printf '<style>:root{color-scheme:light;padding-top:env(safe-area-inset-top,0px);padding-bottom:env(safe-area-inset-bottom,0px)}body{margin:0;font:14px system-ui,sans-serif}img{max-width:100%%}[hidden]{display:none!important}</style>\n'
  printf '</head>\n<body>\n'
  cat bitacora.html
  printf '\n</body>\n</html>\n'
} > index.html
echo "index.html generado"

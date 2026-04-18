#!/bin/bash
# publicar.sh — Copia la wiki de trabajo a Quartz y publica

WIKI_DIR="$(dirname "$0")/../SolarpunkWiki/wiki"
CONTENT_DIR="$(dirname "$0")/content"

# Limpiar contenido anterior
rm -rf "$CONTENT_DIR"/*

# Copiar wiki
cp -r "$WIKI_DIR"/* "$CONTENT_DIR"/

echo "Wiki copiada a content/. Para previsualizar:"
echo "  npx quartz build --serve"
echo "Para publicar:"
echo "  npx quartz sync"


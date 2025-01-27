#!/bin/sh
cd "$(dirname "$0")"
pandoc ./summary.md -o ./summary.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
echo "Generated PDF" 
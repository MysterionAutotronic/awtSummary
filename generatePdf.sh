#!/bin/sh
cd "$(dirname "$0")"
pandoc ./html.md -o ./html.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
pandoc ./css.md -o ./css.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
echo "Generated PDF" 
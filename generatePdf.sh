#!/bin/sh
cd "$(dirname "$0")"
pandoc ./html.md -o ./html.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
echo "Generated html.pdf" 
pandoc ./css.md -o ./css.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
echo "Generated css.pdf" 
pandoc ./js.md -o ./js.pdf --toc --toc-depth=3 --pdf-engine=pdflatex
echo "Generated js.pdf" 
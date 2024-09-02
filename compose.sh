filename="${1:-main}"

pdflatex "${filename}"
biber "${filename}"
pdflatex "${filename}"
pdflatex "${filename}"

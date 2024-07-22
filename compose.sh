filename="${1:-main.tex}"

pdflatex "${filename}"
biber "${filename}"
pdflatex "${filename}"

target="${1:-main}"
filename="${2:-main}"  # Allow composing multiple documents individually.

main() {
    pdflatex "$1"
    biber "$1"
    pdflatex "$1"
    pdflatex "$1"
}

titlepage(){
    (cd ./titlepage && lualatex main)
}

if [ "${target}" = 'main' ]; then
    main "${filename}"
elif [ "${target}" = 'titlepage' ]; then
    titlepage
elif [ "${target}" = 'full' ]; then
    titlepage
    main "${filename}"
fi

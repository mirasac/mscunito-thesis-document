# mscunito-thesis-document

Sources for thesis content.

## Versioning

[SemVer 2.0.0](https://semver.org/spec/v2.0.0.html) is used to tag commits and releases.
Commit messages follow [Convential Commits 1.0.0](https://www.conventionalcommits.org/en/v1.0.0/) specification.

## Palette

To use the palette of colors in Inkscape or in GIMP, copy file `palette.gpl` to the right directory.
Colors in LaTeX are managed with package `xcolor` and they are defined in file `palette.tex`. This file must be inputted in the preamble among other packages.

These files are not linked together, hence if a new color should be added, it needs to be inserted manually in every file.

## Compose document

The document can be composed by pdfLaTex and for the title page LuaLaTeX is needed. Both programs should be reachable in the system path.

To launch the document composition, use any POSIX-compatible shell and run script `compose.sh` from the same directory of the script file. Specify one of the following additional arguments when running the script to obtain the respective output:

- `main` is the default option, compose only the main document; the file `titlepage/main.pdf` containing the title page must exist. Only pdfLaTeX is used.
- `titlepage` compose only the title page; source and outputs are in directory `titlepage`. Only LuaLaTeX is used.
- `full` compose the full document. Both pdfLaTeX and LuaLaTeX are used.

### Title page

The University of Turin provides an official frontispiece which is recommended for thesis documents. A LaTeX template is [available on the University's website](https://www.unito.it/didattica/esame-di-laurea) and it is composed using LuaLaTeX.

To use the official frontispiece and keep using pdfTeX for the rest of the document, the code for the title page is compiled separately and later the output is inserted in the document, as suggested in the template.
Related files are in directory `titlepage` and are adapted from University's template. Files for University's logo and fonts (i.e. the [Tahoma font family](https://learn.microsoft.com/en-us/typography/font-list/tahoma) and [Verdana Italic](https://learn.microsoft.com/en-us/typography/font-list/verdana)) are not included because thay are subject to licensing, hence they should be gathered manually after having downloaded the repository. The logo is shipped with the official LaTeX template, the fonts are already available on Windows and other OSes, see file `.gitignore` under comment "# Licensed material" to know how these files should be named.

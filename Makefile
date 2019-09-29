LATEX=xelatex
LFLAGS=-shell-escape -interaction=nonstop
BIB=bibtex

TEXFILE=main
BIBFILE=csci30.bib

.PHONY: clean

bib: $(BIBFILE)
	$(LATEX) $(LFLAGS) $(TEXFILE).tex
	$(BIB) $(TEXFILE)
	$(LATEX) $(LFLAGS) $(TEXFILE).tex

main: $(TEXFILE).tex
	$(LATEX) $(LFLAGS) $(TEXFILE).tex

clean:
	rm -f *.aux
	rm -f *.bbl
	rm -f *.blg
	rm -f *.idx
	rm -f *.log
	rm -f *.out
	rm -f *.lof
	rm -f *.lot
	rm -f *.toc
	rm -f *.fdb_latexmk
	rm -f *.fls
	rm -f *.synctex.gz
	echo "Removed temporary files"



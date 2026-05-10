
MAIN = main
PDF = $(MAIN).pdf
TEX_SOURCES = $(MAIN).tex $(wildcard TeX_files/*.tex)

.PHONY: all pdf clean

all: pdf

pdf: $(PDF)

$(PDF): $(TEX_SOURCES)
	pdflatex -interaction=nonstopmode -halt-on-error $(MAIN).tex
	pdflatex -interaction=nonstopmode -halt-on-error $(MAIN).tex

clean:
	rm -f *.aux *.log *.out *.toc *.lof *.lot *.fls *.fdb_latexmk *.synctex.gz
	rm -f TeX_files/*.aux

TITLEPAGES	= $(patsubst %.tex, %.pdf, $(wildcard titlepage_*.tex))


default: all

all: $(TITLEPAGES)

titlepage_%.pdf: sample.tex titlepage_%.tex
	pdflatex -jobname titlepage_$* sample.tex

clean:
	rm -f *.{log,aux,pdf}

FONTS	= $(patsubst %.tex, %.pdf, $(wildcard font_*.tex))


default: all

all: $(FONTS)

font_%.pdf: font_%.tex header_%.tex sample.tex
	pdflatex -jobname "font_$*" sample.tex

clean:
	rm -f *.{log,aux,pdf}

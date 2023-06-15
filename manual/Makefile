default: all

all: manual-de.pdf manual-en.pdf

SAMPLES		:= $(wildcard samples/*)
BSAMPLES	:= $(shell find figures/samples -type f -name "*.pdf")
DEPS		:= $(wildcard content/*.tex)

.PHONY: $(BSAMPLES)


manual-%.pdf: manual-%.tex $(DEPS)
	latexmk -pdf $<

samples: $(BSAMPLES)

$(BSAMPLES): figures/samples/%:
	make -C samples/$(dir $*) $(notdir $*)
	cp -up samples/$* $@

clean:
	rm -f manual-de.pdf
	rm -f manual-en.pdf
	rm -f *.{log,aux,toc,lof,lot,lol,out,bbl,bcf,blg,fls,fdb_latexmk,synctex.gz,run.xml}

deepclean: clean
	for d in $(SAMPLES); do make -C $$d clean; done

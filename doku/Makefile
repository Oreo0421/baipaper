default: all

all: arbeit.pdf

SAMPLES		:= $(wildcard samples/*)
BSAMPLES	:= $(shell find bilder/samples -type f -name "*.pdf")
DEPS		:= $(wildcard inhalt/*.tex) \
		   $(BSAMPLES)

.PHONY: $(BSAMPLES)


arbeit.pdf: arbeit.tex $(DEPS)
	latexmk -pdf $<

$(BSAMPLES): bilder/samples/%:
	make -C samples/$(dir $*) $(notdir $*)
	cp -up samples/$* $@

clean:
	rm -f arbeit.pdf
	rm -f *.{log,aux,toc,lof,lot,lol,out,bbl,bcf,blg,fls,fdb_latexmk,synctex.gz,run.xml}

deepclean: clean
	for d in $(SAMPLES); do make -C $$d clean; done

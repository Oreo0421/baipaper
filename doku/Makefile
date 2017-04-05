default: arbeit.pdf

SAMPLES		:= $(wildcard samples/*)
BSAMPLES	:= $(shell find bilder/samples -type f -name "*.pdf")
DEPS		:= $(wildcard inhalt/*.tex) \
		   $(BSAMPLES)

.PHONY: $(BSAMPLES)


arbeit.pdf: arbeit.tex $(DEPS)
	latexmk -pdf $<

$(BSAMPLES): bilder/samples/%:
	make -C samples/$(dir $*) $(notdir $*)
	cp -a samples/$* $@

clean:
	rm -f arbeit.pdf
	rm -f *.{log,aux,toc,fls,fdb_latexmk}
	for d in $(SAMPLES); do make -C $$d clean; done

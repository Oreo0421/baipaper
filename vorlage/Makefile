default: arbeit.pdf


arbeit.pdf: arbeit.tex $(wildcard inhalt/*.tex)
	latexmk -pdf $<

clean:
	rm -f arbeit.pdf
	rm *.{log,aux,toc,fls,fdb_latexmk}

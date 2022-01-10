default: arbeit.pdf


arbeit.pdf: arbeit.tex $(wildcard inhalt/*.tex)
	latexmk -pdf $<

clean:
	rm -f arbeit.pdf
	rm -f *.{log,aux,toc,out,fls,fdb_latexmk,synctex.gz}

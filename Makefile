default: all

all: manual/manual-de.pdf \
     manual/manual-en.pdf \
     template-de.tar.bz2 template-de.zip \
     template-en.tar.bz2 template-en.zip

template-%.tar.bz2: template-%.tar
	bzip2 -9 -f $<

template-%.tar: manual/manual-%.pdf
	tar chf $@ --exclude .gitignore template-$* manual/manual-$*.pdf

template-%.zip: manual/manual-%.pdf
	zip -9 -r $@ template-$* manual/manual-$*.pdf -x template-$*/.gitignore

manual/manual-%.pdf:
	make -C manual manual-$*.pdf

clean:
	rm -f template-de.tar
	rm -f template-de.tar.bz2
	rm -f template-de.zip
	rm -f template-en.tar
	rm -f template-en.tar.bz2
	rm -f template-en.zip
	make -C manual      clean
	make -C template-de clean
	make -C template-en clean

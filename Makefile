default: all

all: vorlage.tar.bz2 vorlage.zip

vorlage.tar.bz2: vorlage.tar
	bzip2 -9 -f $<

vorlage.tar: vorlage
	tar cf $@ --exclude .gitignore vorlage doku/arbeit.pdf

vorlage.zip: vorlage
	zip -9 -r $@ vorlage doku/arbeit.pdf -x vorlage/.gitignore

.PHONY: vorlage
vorlage:
	make -C doku    all
	make -C vorlage clean

clean:
	rm -f vorlage.tar
	rm -f vorlage.tar.bz2
	rm -f vorlage.zip
	make -C doku    clean
	make -C vorlage clean

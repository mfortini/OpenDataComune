all: comune.html

%.html: %.md
	pandoc --data-dir=. --template=openDataComune.md -o tmp_$@.md $<
	pandoc -o $@ tmp_$@.md
	rm tmp_$@.md


all : pdfs $(patsubst %.adoc,pdfs/%.pdf,$(wildcard *.adoc)) $(patsubst %.adoc,html/%.html,$(wildcard *.adoc))

pdfs :
	mkdir -p pdfs

html :
	mkdir -p html

pdfs/%.pdf : %.adoc
	asciidoctor-pdf $< -o $@

html/%.html : %.adoc
	asciidoctor $< -o $@

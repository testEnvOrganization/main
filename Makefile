# Makefile for RedPen documentation
#

# You can set these variables from the command line.
# BUILDDIR              = build

#ASCIIDOCTOR           = asciidoctor
#ASCIIDOCTOR_PDF       = asciidoctor-pdf
#.PHONY: help clean html pdf

#help:
#	@echo "Please use \`make <target>' where <target> is one of"
#	@echo "  html       to make standalone HTML files"
#	@echo "  check      to check soruce files with RedPen"

#clean:
#	-rm -rf $(BUILDDIR)/*

#html:
#	mkdir -p $(BUILDDIR)/html
#	mkdir -p build/html
#	cp docs/*.png $(BUILDDIR)/html/
#	cp docs/*.png build/html/
#	cp -a docs/redpen $(BUILDDIR)/html/
#	$(ASCIIDOCTOR) -a source-highlighter=coderay -a target-version=1.8 -d book -b html5 -D $(BUILDDIR)/html -o $(BUILDDIR)/html docs/sample.adoc
#	asciidoctor -a source-highlighter=coderay -a target-version=1.8 -d book -b html5 -o index.html sample.adoc
#	@echo "Build finished. The HTML pages are in $(BUILDDIR)/html"

#pdf:
#	mkdir -p $(BUILDDIR)/pdf
#	$(ASCIIDOCTOR_PDF) -a pdf-stylesdir=docs/pdf -a pdf-fontsdir=docs/pdf/fonts -a source-highlighter=coderay -a target-version=1.7 -d book docs/index_ja.adoc -D $(BUILDDIR)/pdf
#	@echo "Build finished. The PDF file is in $(BUILDDIR)/pdf"

check:
	redpen -f asciidoc source\/01_Index.adoc

include makeconf
## Kommentar
TFLAGS = -shell-escape -halt-on-error -file-line-error -interaction=nonstopmode

SDIR = spec
SMAIN = spec
DIR = thesis
MAIN = thesis

all: thesis.pdf spec.pdf

compile: $(wildcard $(DIR)/*.tex)
	$(TEX) $(TFLAGS) $(DIR)/$(MAIN).tex

bib: compile
	$(BIB) $(MAIN)

thesis.pdf: bib
	$(TEX) $(TFLAGS) $(DIR)/$(MAIN).tex

scompile: $(wildcard $(SDIR)/*.tex)
	$(TEX) $(TFLAGS) $(SDIR)/$(SMAIN).tex

sbib: scompile
	$(BIB) $(SMAIN)

spec.pdf: sbib
	$(TEX) $(TFLAGS) $(SDIR)/$(SMAIN).tex

clean:
	rm -f *.aux *.log *.xml *.blg *.bcf *.bbl *.out *.toc

distclean: clean
	rm -f *.pdf

biberclean:
	rm -rf `biber --cache`

TEX = lualatex
BIB = biber
TFLAGS = -shell-escape -halt-on-error -file-line-error -interaction=nonstopmode
DIR = thesis
MAIN = thesis

all: thesis.pdf

compile: $(wildcard $(DIR)/*.tex)
	$(TEX) $(TFLAGS) $(DIR)/$(MAIN).tex

bib: compile
	$(BIB) $(MAIN)

thesis.pdf: bib
	$(TEX) $(TFLAGS) $(DIR)/$(MAIN).tex

clean:
	rm -f *.aux *.log *.xml *.blg *.bcf *.bbl

distclean: clean
	rm -f thesis.pdf

biberclean:
	rm -rf `biber --cache`

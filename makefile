TEX = lualatex
BIB = biber
TFLAGS = -shell-escape -halt-on-error -file-line-error -interaction=nonstopmode
DIR = thesis

all: thesis.pdf

thesis.pdf: $(wildcard $(DIR)/*.tex)
	$(TEX) $(TFLAGS) $(DIR)/thesis.tex
	$(BIB) thesis
	$(TEX) $(TFLAGS) $(DIR)/thesis.tex

clean:
	rm -f *.aux *.log *.xml *.blg *.bcf *.bbl

distclean: clean
	rm -f thesis.pdf

biberclean:
	rm -rf `biber --cache`

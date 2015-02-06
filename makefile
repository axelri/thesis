TEX = lualatex
TFLAGS = -shell-escape -halt-on-error -file-line-error -interaction=nonstopmode
DIR = thesis

all: thesis.pdf

thesis.pdf: $(wildcard *.tex)
	$(TEX) $(TFLAGS) $(DIR)/thesis.tex

clean:
	rm -f *.aux *.log

distclean: clean
	rm -f thesis.pdf

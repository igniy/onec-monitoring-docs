PANDOC ?= pandoc
PDF := onec-monitoring.pdf
CHAPTERS := $(wildcard chapters/*.md)
FIGURES := $(wildcard figures/*.svg)
STYLES := styles/document.typ styles/gost-r-7-0-5-2008-numeric-iaa.csl
FONTS := $(wildcard styles/fonts/*.ttf)

.PHONY: all pdf clean
.DELETE_ON_ERROR:

all: pdf

pdf: $(PDF)

$(PDF): Makefile document.yaml references.bib $(CHAPTERS) $(FIGURES) $(STYLES) $(FONTS)
	$(PANDOC) --defaults=document.yaml --output="$@"

ifeq ($(OS),Windows_NT)
SHELL := cmd.exe
clean:
	if exist "$(PDF)" del /q "$(PDF)"
else
clean:
	rm -f "$(PDF)"
endif

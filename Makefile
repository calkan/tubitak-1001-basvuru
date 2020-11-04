PAPER = tubitak-1001-basvuru

TEX = $(wildcard ./*.tex) 

.PHONY: all, clean
all: $(TEX)
	wget -nc https://www.tubitak.gov.tr/sites/default/files/tubitak_logo.jpg
	mv tubitak_logo.jpg figs/
	pdflatex $(PAPER) 
	pdflatex $(PAPER)
	bibtex $(PAPER)
	pdflatex $(PAPER)
	pdflatex $(PAPER)

clean:
	rm -rf *.dvi *.log *.aux *.bbl *.blg *.pdf

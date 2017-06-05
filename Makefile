# Daniel Agar resume Makefile
# sudo apt install texlive-latex-recommended


TEX=dagar_resume

%.pdf: %.tex
	pdflatex $<
	pdflatex $<

.PHONY: all clean view 

#${TEX}.pdf:	${TEX}.tex
#	latex ${TEX}
#	bibtex ${TEX}
#	latex ${TEX}
#	latex ${TEX}
#	pdflatex ${TEX}

${TEX}.pdf:    ${TEX}.tex
	pdflatex ${TEX}

all: dagar_resume.pdf

clean:
	rm -f *.aux *.bbl *.blg *.dvi *.log *.out *.toc *.pdf

view: ${TEX}.pdf
	evince ${TEX}.pdf


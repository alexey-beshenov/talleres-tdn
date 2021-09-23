all: guia-1.pdf guia-1-soluciones.pdf hoja-0.pdf hoja-1.pdf hoja-2.pdf hoja-3.pdf hoja-4.pdf hoja-5.pdf hoja-6.pdf residuos.pdf

guia-1.pdf: guia-1.tex
	pdflatex guia-1
	pdflatex guia-1

guia-1-soluciones.pdf: guia-1.tex
	pdflatex -jobname=guia-1-soluciones '\let\solutions=1 \input' guia-1
	pdflatex -jobname=guia-1-soluciones '\let\solutions=1 \input' guia-1

hoja-0.pdf: hoja-0.tex
	pdflatex hoja-0
	pdflatex hoja-0

hoja-1.pdf: hoja-1.tex
	pdflatex hoja-1
	pdflatex hoja-1

hoja-2.pdf: hoja-2.tex
	pdflatex hoja-2
	pdflatex hoja-2

hoja-3.pdf: hoja-3.tex
	pdflatex hoja-3
	pdflatex hoja-3

hoja-4.pdf: hoja-4.tex
	pdflatex hoja-4
	pdflatex hoja-4

hoja-5.pdf: hoja-5.tex
	pdflatex hoja-5
	pdflatex hoja-5

hoja-6.pdf: hoja-6.tex
	pdflatex hoja-6
	pdflatex hoja-6

residuos.pdf: residuos.tex
	xelatex residuos
	xelatex residuos

clean:
	rm -f *.aux *.log *.nav *.out *.pdf *.snm *.toc *~

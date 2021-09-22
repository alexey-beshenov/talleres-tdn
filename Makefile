all: guia-1.pdf guia-soluciones.pdf

guia-1.pdf:
	pdflatex guia-1
	pdflatex guia-1

guia-soluciones.pdf:
	pdflatex -jobname=guia-1-soluciones '\let\solutions=1 \input' guia-1
	pdflatex -jobname=guia-1-soluciones '\let\solutions=1 \input' guia-1

clean:
	rm -f *.aux *.log *.out *.pdf


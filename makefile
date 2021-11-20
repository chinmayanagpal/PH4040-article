article.pdf: article.tex refs.bib
	pdflatex -shell-escape article
	bibtex article
	pdflatex -shell-escape article
	pdflatex -shell-escape article
	rm article.aux
	rm article.log
	rm article.bbl
	rm article.blg
mta: article.tex
	detex article.tex | wc -w > meta
	cat meta

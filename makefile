article.pdf: article.tex refs.bib
	pdflatex -shell-escape article
	bibtex article
	pdflatex -shell-escape article
	pdflatex -shell-escape article
	pdfunite cover.pdf article.pdf submission.pdf
meta: article.tex
	detex article.tex | wc -w > meta
	cat meta
clean:
	rm -f article.aux article.log article.bbl article.blg meta submission.pdf article.pdf


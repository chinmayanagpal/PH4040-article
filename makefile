article.pdf: article.tex 
	pdflatex -shell-escape article.tex
	pdflatex -shell-escape article.tex
	rm article.aux
	rm article.log
meta: article.tex
	detex article.tex | wc -w > meta
	cat meta

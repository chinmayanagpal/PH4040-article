article.pdf: article.tex
	pdflatex article.tex
	rm article.aux
	rm article.log

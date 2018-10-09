DOKUMENT = slides

make:
	pdflatex $(DOKUMENT).tex -output-format=pdf -shell-escape

clean:
	rm -f *.vrb *.aux *.log *.nav *.out *.snm *.toc *.bbl *.blg *.zip *~

full:
	make
	make
	make clean

handout:
	pdflatex  '\def\handout{1} \input{$(DOKUMENT).tex}' -output-format=pdf -shell-escape
	pdflatex  '\def\handout{1} \input{$(DOKUMENT).tex}' -output-format=pdf -shell-escape
	make clean
	mv $(DOKUMENT).pdf $(DOKUMENT)-handout.pdf
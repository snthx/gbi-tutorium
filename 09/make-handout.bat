@echo off
	set DOKUMENT=slides

	for %%* in (.) do set CurrDirName=%%~nx*

	set OUTPUTNAME="%CurrDirName%-handout"

	pdflatex  "\def\handout{1} \input{%DOKUMENT%.tex}" -output-format=pdf -jobname=%OUTPUTNAME%
	pdflatex  "\def\handout{1} \input{%DOKUMENT%.tex}" -output-format=pdf -jobname=%OUTPUTNAME%

	del -f .\*.vrb
	del -f .\*.aux
	del -f .\*.log
	del -f .\*.nav
	del -f .\*.out
	del -f .\*.snm
	del -f .\*.toc
	del -f .\*.bbl
	del -f .\*.blg
	del -f .\*.zip
	del -f .\*~

	start .\%OUTPUTNAME%.pdf
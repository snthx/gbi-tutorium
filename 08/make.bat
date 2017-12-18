@echo off

for %%f in ".\*.tex" (
	pdflatex %%f
	pdflatex %%f
)



del -f *.vrb
del -f *.aux
del -f *.log
del -f *.nav
del -f *.out
del -f *.snm
del -f *.toc
del -f *.bbl
del -f *.blg
del -f *.zip
del -f *~

start .\*.pdf
PROJECT=laerdactron

default: article

article: $(PROJECT).pdf cleanout

$(RPOJECT).pdf: bibliography
	pdflatex $(PROJECT)

bibliography:
	pdflatex $(PROJECT)
	bibtex $(PROJECT)

# Remove only auxiliary files
cleanout:
	rm *.aux
	rm *.log
	rm *.bbl
	rm *.blg
	rm *.dvi
	rm *.log
	rm *.toc
	rm *.nav
	rm *.snm
	rm *.out
	rm *.vrb

# Remove generated PDF
clean: cleanout
	rm $(PROJECT).pdf

PROJECT=article
PDFLATEX=pdflatex
BIBTEX=bibtex
RM=rm -f
export TEXINPUTS=$(shell kpsepath tex):$(shell pwd)/../common/sbc/:$(shell pwd)/

# Default action
default: article

# Create article and clean the mess
article: $(PROJECT).pdf cleanout

$(PROJECT).pdf: bibliography genpdf

bibliography:
	echo $(TEXINPUTS)
	$(PDFLATEX) $(PROJECT)
	$(BIBTEX) $(PROJECT)
	$(PDFLATEX) $(PROJECT)
	$(PDFLATEX) $(PROJECT)

genpdf:
	$(PDFLATEX) $(PROJECT)

# Remove only auxiliary files
cleanout:
	$(RM) *.aux
	$(RM) *.log
	$(RM) *.bbl
	$(RM) *.blg
	$(RM) *.dvi
	$(RM) *.log
	$(RM) *.toc
	$(RM) *.nav
	$(RM) *.snm
	$(RM) *.out
	$(RM) *.vrb

# Remove generated PDF
clean: cleanout
	$(RM) $(PROJECT).pdf

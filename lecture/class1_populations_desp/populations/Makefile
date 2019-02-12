
HANDOUT = populations.pdf
SOLUTIONS = $(basename $(HANDOUT))-sol.pdf
PDFS = $(HANDOUT) $(SOLUTIONS)


HANDOUT_SRC = $(HANDOUT:.pdf=.tex)
SOLUTIONS_SRC = $(SOLUTIONS:.pdf=.tex)

PLOTS = # EMPTY

all: $(PDFS)

$(SOLUTIONS_SRC): $(HANDOUT_SRC)
	sed -e s/\\\\documentclass\\[/\\\\documentclass\\[answers,/ $< > $@

$(HANDOUT): $(HANDOUT_SRC) $(wildcard *.tex) $(PLOTS)
	pdflatex $<
	pdflatex $<

$(SOLUTIONS): $(SOLUTIONS_SRC) $(wildcard *.tex) $(PLOTS)
	pdflatex $<
	pdflatex $<

%.pdf: %.R
	R CMD BATCH $<

clean:
	rm -f *.log *.aux *.pdf $(SOLUTIONS_SRC)


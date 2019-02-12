
HANDOUT = counting.pdf
SOLUTIONS = $(basename $(HANDOUT))-sol.pdf
PDFS = $(HANDOUT) $(SOLUTIONS)


HANDOUT_SRC = $(HANDOUT:.pdf=.tex)
SOLUTIONS_SRC = $(SOLUTIONS:.pdf=.tex)

all: $(PDFS)

$(SOLUTIONS_SRC): $(HANDOUT_SRC)
	sed -e s/\\\\documentclass\\[/\\\\documentclass\\[answers,/ $< > $@

%.pdf: %.tex $(HANDOUT_SRC) $(wildcard *.tex)
	pdflatex $<
	pdflatex $<

clean:
	rm -f *.log *.aux *.pdf $(SOLUTIONS_SRC)

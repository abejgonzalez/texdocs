# Basic makefile to compile my two pdfs

# Main variables
LCC = pdflatex
DEPS = res.cls

# Commands

all: cv.pdf resume.pdf

clean:
	@rm -rf *.pdf

cv.pdf: cv.tex $(DEPS) 
	$(LCC) cv.tex --jobname=cv

resume.pdf: resume.tex $(DEPS)
	$(LCC) resume.tex --jobname=resume

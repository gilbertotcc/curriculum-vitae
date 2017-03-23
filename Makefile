all: pdf

.PHONY: clean
clean:
	latexmk -C

pdf:
	latexmk \
	  -pdf \
		-pdflatex="pdflatex -interaction=nonstopmode -halt-on-error -shell-escape" \
		cv.tex

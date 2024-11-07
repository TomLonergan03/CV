all:
	pdflatex resume.tex

clean:
	rm -f *.aux *.log *.out *.toc

watch:
	while true; do inotifywait -e modify *.tex; make; done

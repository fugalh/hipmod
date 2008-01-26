all: 2week-matrix.pdf 1week.pdf

2week-matrix.pdf: core.pdf tools
	./pocketmod -page 86,26,46,26,46,82,84,89 core.pdf
	mv core-up.pdf $@

1week.pdf: core.pdf tools
	./pocketmod -page 86,30,30,30,30,30,30,30 core.pdf
	mv core-up.pdf $@

tools: multivalent pocketmod Makefile

clean:
	rm -f 2week-matrix.pdf

.PHONY: clean tools all

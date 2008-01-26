deps=core.pdf multivalent hipmod
hipmods=2week.pdf 1week.pdf

all: ${hipmods}

1week.pdf: ${deps}
	./hipmod -page 86,30,30,30,30,30,30,30 core.pdf
	mv core-up.pdf $@

2week.pdf: ${deps}
	./hipmod -page 86,26,46,26,46,82,84,89 core.pdf
	mv core-up.pdf $@

clean:
	rm -f ${hipmods}

.PHONY: clean tools all

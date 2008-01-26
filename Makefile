deps=core.pdf multivalent pocketmod
pocketmods=2week-matrix.pdf 1week.pdf

all: ${pocketmods}

%.pdf: %.txt ${deps}
	./pocketmod -page `cat $<` core.pdf
	mv core-up.pdf $@

clean:
	rm -f ${pocketmods}

.PHONY: clean tools all

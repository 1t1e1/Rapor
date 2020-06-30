COMPILER = pandoc
TO = -t revealjs
VFLAG = -V 
VALURL = revealjs-url=https://unpkg.com/reveal.js@3.9.2/
VALTHEME = theme=solarized

SRCS := $(wildcard *.md)
# BINS := $(SRCS:%.md=%)
HTMLS := $(SRCS:%.md=%.html)

all: ${HTMLS}
	rm README.html

%.html: %.md
	${COMPILER} ${TO} ${VFLAG} ${VALURL} ${VFLAG} ${VALTHEME} -s $< -o $@

clean: 
	rm *.html


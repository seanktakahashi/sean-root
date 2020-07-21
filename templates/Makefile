# Sean's Make File!
# Making many things since 2020

NAME:=notes

##############
## SPELLING ## 
##############

# spellcheck using hunspell
spellcheck:
	hunspell -d en_US -p hunspell_en_US $(NAME).md

##############
## MARKDOWN ## 
##############

# builds all of md files, md -> pdf
# expects: some .md file
build-md:
	pandoc -t markdown-simple_tables-multiline_tables-pipe_tables -s -o .tmp.md *.md
	pandoc .tmp.md -t pdf -s -o notes.pdf
	rm .tmp.md

########### 
## LATEX ##
########### 

# build tex -> pdf
# expects: $(NAME).tex, references.bib
build-tex:
	pdflatex $(NAME).tex
	biber $(NAME)
	pdflatex $(NAME).tex
	pdflatex $(NAME).tex
	make clean

## install tex
install-tex:
	tlmgr install $(NAME)

clean-tex:
	rm *.log *.aux *.fls *.fdb_latexmk

# remove all of the leftovers from a tex compilation
clean-tex:
	rm *.log *.aux *.fls *.fdb_latexmk

#######
## C ##
#######

CFLAGS = -Wall -Werror -g  -O -Wno-unused-function
CC = gcc 
SRC = $(NAME).c

OBJS = $(SRC:.c=.o)

my-delete: $(OBJS)
	$(CC) $(CFLAGS) $(NAME).o -o $(NAME)


.PHONY: clean build reset spellcheck

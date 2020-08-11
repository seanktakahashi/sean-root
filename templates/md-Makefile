# Sean's Markdown Project Makefile!
#
# PREREQUISITES
# 	pandoc
# 	*hunspell
# 	*pdftk
#
# 	* - optional

# title file
TITLE:=README
# compiles *.md files in notes/
INPUT:=notes
# file to output build file of all compiled notes
OUTPUT_FILE:=notes
# folder to ouptut indivually compiled notes
OUTPUT_FOLDER:=out

all: build

##############
### BUILD ####
##############

build-tables:
	pandoc -t markdown-simple_tables-multiline_tables-pipe_tables -s -o .tmp.md $(INPUT).md
	pandoc .tmp.md -t pdf -s -o $(OUTPUT).pdf
	rm .tmp.md

# builds all of md files, md -> pdf
# expects: some .md file
build-seperate:
	if [ -d "$(OUTPUT_FOLDER)" ]; then rm -rf $(OUTPUT_FOLDER); fi
	mkdir $(OUTPUT_FOLDER)
	pandoc $(TITLE).md -o $(OUTPUT_FOLDER)/00-$(TITLE).pdf
	find notes -iname "*.md" -type f -exec sh -c \
		'pandoc "$${0}" -o "$(OUTPUT_FOLDER)/$$(basename $${0%.md}.pdf)"' {} \;

compile-seperate:
	pdftk $(OUTPUT_FOLDER)/*.pdf cat output $(OUTPUT_FILE).pdf

build:
	make build-seperate
	make compile-seperate

##################
#### HUNSPELL ####
##################

# check spelling using hunspell
# 	using en_US dictionary and en_additional_US dictionary
spell:
	hunspell -d en_US -p en_personal_US $(INPUT).md

list-dicts:
	hunspell -D

.PHONY: build spell list-dicts

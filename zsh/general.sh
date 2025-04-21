#### SEAN BIN ####
PATH=$SEAN/bin:$PATH
PATH=$SEAN/local-bin:$PATH

#### LL ####
alias ll="ls -GgoAth -color" 

#### Pandoc ####
# for guide see https://jdhao.github.io/2019/05/30/markdown2pdf_pandoc
pdf() {
  local args=("--pdf-engine=xelatex" "-V" "colorlinks" "-V" "urlcolor=NavyBlue" "-V" "toccolor=red")
  if [ $# = 1 ]; then
    set -x
    pandoc $args "$1" -o "${1%.md}.pdf"
  elif [ $# = 2 ]; then 
    set -x
    pandoc $args "$1" -o "$2"
  else
    echo "Usage: pdf <input.md> <output.pdf>"
  fi
}

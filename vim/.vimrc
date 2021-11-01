" GENERAL - general settings for writing code

"   VIEWPORT
set relativenumber number
" grey column at 80 chars
set colorcolumn=80
let g:gruvbox_number_column = 'grey'

"   CURSOR
let &t_SI = "\<esc>[5 q"  " blinking I-beam in insert mode
let &t_SR = "\<esc>[3 q"  " blinking underline in replace mode
let &t_EI = "\<esc>[ q"  " default cursor (usually blinking block) otherwise
"   OTHER
" zsh-like tab completion for files
set wildmode=longest,list,full
set wildmenu
syntax on
filetype plugin indent on
set tabstop=2 shiftwidth=2 expandtab
set tags=tags


" REMAPPINGS
"map ; to : so that I don't have to shift
nnoremap ; :
"map <C-i> to <C-a> to free up <C-a> for tmux
nnoremap <C-i> <C-a>
" delete, yanking into special reg
" nnoremap d "_d
" vnoremap d "_d
" replace currently selected text with default register
" without yanking it
vnoremap p "_dP

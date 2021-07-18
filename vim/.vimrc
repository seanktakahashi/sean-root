" GENERAL - general settings for writing code
set relativenumber number
" grey column at 80 chars
set colorcolumn=80
let g:gruvbox_number_column = 'grey'
" zsh-like tab completion for files
set wildmode=longest,list,full
set wildmenu
" other
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

" PLUGS
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
execute pathogen#infect()
"add syntex highlighting for md
autocmd BufRead *.md set ft=markdown
" vim-plug
call plug#begin('~/.vim/plugged')
" plugin section
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'maxmellon/vim-jsx-pretty'
augroup SyntaxSettings
  autocmd!
  autocmd BufNewFile,BufRead *.tsx set filetype=typescript
augroup END
" end vim-plug
call plug#end()

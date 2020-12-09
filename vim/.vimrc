" GENERAL
"general settings for writing code
set relativenumber
set colorcolumn=80
highlight ColorColumn ctermbg=lightgrey guibg=lightgrey
execute pathogen#infect()
syntax on
filetype plugin indent on
let g:gruvbox_number_column = 'grey'
set tabstop=2 shiftwidth=2 expandtab
set tags=tags


" REMAPPINGS
"map ; to : so that I don't have to shift
nnoremap ; :
"map <C-i> to <C-a> to free up <C-a> for tmux
nnoremap <C-i> <C-a>

" PLUGS
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

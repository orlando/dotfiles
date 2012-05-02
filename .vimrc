:set nocompatible
runtime bundle/vim-pathogen/autoload/pathogen.vim
let g:AutoClosePreservDotReg = 0
if $COLORTERM == 'gnome-terminal'
  set term=gnome-256color
  colorscheme railscasts-term
else
  colorscheme railscasts 
endif
" let g:molokai_original = 1
" colorscheme molokai
:set number
syntax on
filetype plugin indent on
set tabstop=2
set shiftwidth=2
set expandtab
call pathogen#infect()
call pathogen#helptags()
set runtimepath+=$HOME/.vim/vim-haml
:set omnifunc=csscomplete#CompleteCSS
:imap <c-space> <c-x><c-o>

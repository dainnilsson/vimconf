" The location of this file is ~/.vim/.vimrc
" To use, a symlink needs to point to it from ~/.vimrc

execute pathogen#infect()
syntax on
filetype plugin indent on

set nocompatible

" python-mode
" Disable python folding
let g:pymode_folding = 0

" Works with files encrypted for multiple smart cards
let g:GPGExecutable = "gpg2"

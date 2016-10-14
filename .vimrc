" The location of this file is ~/.vim/.vimrc
" To use, a symlink needs to point to it from ~/.vimrc

" no vi-compatible
set nocompatible
" required for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles from GitHub repos

Bundle 'tpope/vim-sensible'
Bundle 'kien/ctrlp.vim'
Bundle 'jamessan/vim-gnupg'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'klen/python-mode'

syntax on
filetype plugin indent on

set wildmode=longest,list
set wildmenu

let mapleader = ","

" Spaces, not tabs!
set expandtab
set shiftwidth=2 tabstop=2

" associate *.template with html filetype
au BufRead,BufNewFile *.template setfiletype html

" Type specific indentation
" autocmd FileType html setlocal shiftwidth=2 tabstop=2

" python-mode
" Disable python folding
let g:pymode_folding = 0

" Works with files encrypted for multiple smart cards
let g:GPGExecutable = "gpg2"

" Swap/Undo/Backup file locations
set directory^=~/.cache/vim/swap//
set undodir^=~/.cache/vim/undo//
set backupdir^=~/.cache/vim/backup//

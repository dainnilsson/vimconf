" The location of this file is ~/.vim/.vimrc
" To use, a symlink needs to point to it from ~/.vimrc

" no vi-compatible
set nocompatible
" Setting up Vundle - the vim plugin bundler
let iCanHazVundle=1
let vundle_readme=expand('~/.vim/bundle/vundle/README.md')
if !filereadable(vundle_readme)
    echo "Installing Vundle..."
    echo ""
    silent !mkdir -p ~/.vim/bundle
    silent !git clone https://github.com/gmarik/vundle ~/.vim/bundle/vundle
    let iCanHazVundle=0
endif

" required for vundle
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" Bundles from GitHub repos

Bundle 'tpope/vim-sensible'
Bundle 'jamessan/vim-gnupg'
Bundle 'kien/ctrlp.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'klen/python-mode'
Bundle 'tristen/vim-sparkup'

" Installing plugins the first time
if iCanHazVundle == 0
    echo "Installing Bundles, please ignore key map error messages"
    echo ""
    :BundleInstall
endif

" tabs and spaces handling
" set expandtab
" set tabstop=4
" set softtabstop=4
" set shiftwidth=4

syntax on
filetype plugin indent on

set nocompatible

let mapleader = ","

" python-mode
" Disable python folding
let g:pymode_folding = 0

" Works with files encrypted for multiple smart cards
let g:GPGExecutable = "gpg2"

" Swap/Undo/Backup file locations
set directory^=~/.cache/vim/swap//
set undodir^=~/.cache/vim/undo//
set backupdir^=~/.cache/vim/backup//

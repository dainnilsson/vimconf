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
Bundle 'tpope/vim-sensible'
Bundle 'kien/ctrlp.vim'
let g:ctrlp_custom_ignore = {
  \ 'dir': '\v[\/](\.git|\.hg|\.svn|build|bin|out|project|target|node_modules|__pycache__)',
  \ 'file': '\v\.(o|exe|so|dll|class)$',
  \}
let g:ctrlp_extensions = [ 'autoignore' ]


Bundle 'Valloric/YouCompleteMe'

Bundle 'vim-syntastic/syntastic'
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 2
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

Bundle 'Vimjas/vim-python-pep8-indent'
Bundle 'peterhoeg/vim-qml'
Bundle 'fatih/vim-go'
Bundle 'jamessan/vim-gnupg'
Bundle 'Lokaltog/vim-easymotion'

syntax on
filetype plugin indent on

set number
set colorcolumn=81
set statusline+=%F\ %l\,%c\ %p%%

set wildmode=longest,list
set wildmenu

let mapleader = ","

" Spaces, not tabs!
set expandtab
set shiftwidth=2 tabstop=2

" Remove trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e


" associate *.template with html filetype
au BufRead,BufNewFile *.template setfiletype html

" Type specific indentation
" autocmd FileType html setlocal shiftwidth=2 tabstop=2

au FileType qml setl sw=4 sts=4
au FileType cpp setl sw=4 sts=4

au BufRead,BufNewFile *.wsgi setfiletype python

" Works with files encrypted for multiple smart cards
let g:GPGExecutable = "gpg2"

" Swap/Undo/Backup file locations
set directory^=~/.cache/vim/swap//
set undodir^=~/.cache/vim/undo//
set backupdir^=~/.cache/vim/backup//


set mouse=a
set ttymouse=xterm2

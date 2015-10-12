set nocompatible

filetype off
filetype plugin indent off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'
Plugin 'tpope/vim-rails'
Plugin 'mxw/vim-jsx'

call vundle#end()
filetype plugin indent on

syntax on

set ruler
set number
set nowrap
set autoindent
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set backspace=2

let g:jsx_ext_required = 0

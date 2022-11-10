" @file generic.vim
" @brief Generic Vim settings
" @author Joseph Telaak
" @since 21 Oct 2022
"===============================================================================

" Disable compatibility with vi which can cause unexpected issues.
set nocompatible

" Enable type file detection. Vim will be able to try to detect the type of file in use.
filetype on

" Enable plugins and load plugin for the detected file type.
filetype plugin on

" Load an indent file for the detected file type.
filetype indent on

" Turn syntax highlighting on.
syntax on

" Add numbers to each line on the left-hand side.
set number

" Highlight cursor line underneath the cursor horizontally.
set cursorline

" Encode all files as UTF-8.
set encoding=utf-8

" Enable mouse support.
set mouse=a
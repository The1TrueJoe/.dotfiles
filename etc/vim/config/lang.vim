" @file lang.vim
" @brief language specific settings
" @author Joseph Telaak
" @since 21 Oct 2022
"===============================================================================

" set Arduino to use C++ syntax hilighting
augroup arduino
    au!
    au BufNewFile,BufReadPost *.ino set filetype=cpp
augroup END

" Have matlab reload files on change
augroup Matlab
    au!
    au FileType matlab setlocal autoread
    au FocusGained,BufEnter * checktime

augroup END

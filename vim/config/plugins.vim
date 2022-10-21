" @file lang.vim
" @brief plugins
" @author Joseph Telaak
" @since 21 Oct 2022
"===============================================================================

" A: Alternate between .h and .cpp files quickly
Plugin 'vim-scripts/a.vim'

" For React components.
let g:alternateExtensions_js = "scss"
let g:alternateExtensions_scss = "js"

"===============================================================================

" DelimitMate: Provides the 'autoclose' functionality that many editors have for
" parens and brackets.
Plugin 'Raimondi/delimitMate'

" will close parens inside of quotes
let delimitMate_expand_inside_quotes = 1

" hitting enter and space inside of delimiters works more nicely
let delimitMate_expand_cr = 2
let delimitMate_expand_space = 1

" turn off delimitMate for markdown, where the ``` gets really messy
augroup DelimitMate
    au!
    au FileType markdown let b:loaded_delimitMate = 1
augroup END

"===============================================================================

" GitGutter: If a file is in a git repository, shows a column on the side with
" diff information.
Plugin 'airblade/vim-gitgutter'

"===============================================================================

" Syntastic: Syntax checking on file save
Plugin 'scrooloose/syntastic'

" Nicer symbols in the gutter
let g:syntastic_error_symbol = '✘'
let g:syntastic_warning_symbol = "▲"

let g:syntastic_javascript_checkers = ['eslint']

" LaTeX warnings are very prolific, so it's not too helpful to have on all the
" time.
augroup Syntastic
    au!
    au FileType tex let b:syntastic_mode = "passive"
augroup END

"===============================================================================

" Syntax files for a bunch of languages
Plugin 'kchmck/vim-coffee-script'
Plugin 'pangloss/vim-javascript'
Plugin 'digitaltoad/vim-jade'
Plugin 'ap/vim-css-color'
Plugin 'ekalinin/Dockerfile.vim'
Plugin 'evanmiller/nginx-vim-syntax'
Plugin 'Keithbsmiley/tmux.vim'
Plugin 'cypok/vim-sml'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

"===============================================================================

" IndentLine: shows bars at each indent level, which helps keep them straight,
" especially useful in languages with functional whitespace like Python
Plugin 'Yggdroot/indentLine'

"===============================================================================

" BetterWhitespace: hilights trailing whitespace, as well as double newlines.
" Also provides the StripWhitespace command I use elsewhere to clean up files.
Plugin 'ntpeters/vim-better-whitespace'

"===============================================================================

" Rainbow: Implements 'rainbow parentheses', where matching parens get different
" colors, to help track down mismatched parens.
Plugin 'luochen1990/rainbow'

" turn on rainbow parens by default
let g:rainbow_active = 1

" disable in html (it messes up the syntax hilighting) and CSS, and fix the
" parens in SML (where the (* comments *) freak out).
let g:rainbow_conf = {
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\   'separately': {
\       '*': {},
\       'html': 0,
\       'css': 0,
\       'sml': {
\           'parentheses': ['start=/(\(\*\)\@!/ end=/\(\*\)\@<!)/', 'start=/\[/ end=/\]/ fold']
\       }
\   }
\}

"===============================================================================

" NERDTree: Shows a file-system tree in a sidebar.
Plugin 'scrooloose/nerdtree'

" Show hidden files, since I'm often editing dotfiles
let NERDTreeShowHidden = 1

"===============================================================================

" NERDTreeTabs: NERDTree open by default 
Plugin 'jistr/vim-nerdtree-tabs'

" Auto-enable
let g:nerdtree_tabs_open_on_console_startup = 1

"===============================================================================

" Surround: Easy quoting!
Plugin 'tpope/vim-surround'
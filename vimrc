":::PATHOGEN
execute pathogen#infect()

"::::VUNDLE
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
"Bundle 'tpope/vim-fugitive'
"Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
"Bundle 'tpope/vim-rails.git'
"""""""""""""""""""""""""""""""""""""Bundle 'joonty/vdebug.git' 
"
" vim-scripts repos
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" non github repos
"Bundle 'git://git.wincent.com/command-t.git'

" git repos on your local machine (ie. when working on your own plugin)
"Bundle 'file:///Users/gmarik/path/to/plugin'

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..

":::General
colorscheme torte
set hlsearch
set ignorecase
set smartindent
set tabstop=4
set shiftwidth=4
set nu "numeros de linea

":::snipMate
au BufRead *.tpl set ft=tpl.html
au BufNewFile *.tpl set ft=html.tpl

":::CommandT
let g:CommandTAcceptSelectionSplitMap='<C-p>'

":::Groovy
filetype plugin on

":::PHPQA
let g:phpqa_codesniffer_autorun=0
let g:phpqa_messdetector_autorun=0

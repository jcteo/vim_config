":::PATHOGEN
execute pathogen#infect()

"::::VUNDLE
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" required! 
Bundle 'gmarik/vundle'
" My Bundles here:
" original repos on github
Bundle 'Shougo/neocomplete.vim'
Bundle 'wincent/Command-T'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/nerdtree'
Bundle 'joonty/vim-phpqa'
Bundle 'joonty/vim-phpunitqf'
Bundle 'tpope/vim-fugitive'
Bundle 'bling/vim-airline'
Bundle 'mattn/emmet-vim'
Bundle 'mattn/webapi-vim'
Bundle 'jiangmiao/auto-pairs'
"Themes
Bundle 'nanotech/jellybeans.vim'
filetype plugin indent on     " required!

":::GENERAL
colorscheme torte
set hlsearch
set ignorecase
set smartindent
set tabstop=4
set shiftwidth=4
set nu "numeros de linea
au BufRead,BufNewFile *.tpl set ft=tpl.html
"Map Tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nmap <C-X> :mksession!<CR>:echo "Sesion Guardada!"<CR>

"Fixes 7.4
syntax on
set backspace=2

":::COMMANDT
nmap <C-f> \t
let g:CommandTAcceptSelectionSplitMap='<C-h>'

":::GROOVY
filetype plugin on

":::PHPQA
let g:phpqa_codesniffer_autorun=0
let g:phpqa_messdetector_autorun=0

":::NEOCOMPLETE
let g:neocomplete#enable_at_startup = 1
"Disable AutoComplPop
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 2

":::VIM-AIRLINE
set laststatus=2
set t_Co=256
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'
"let g:airline_theme	= 'powerlineish'
let g:airline#extensions#branch#enabled = 1
"let g:airline_powerline_fonts = 1
"function! AirlineInit()
	"let g:airline_section_a = airline#section#create(['mode'])
	"let g:airline_section_b = airline#section#create(['branch'])
"endfunction
"autocmd VimEnter * call AirlineInit()

":::EMMET
nmap <C-E> <C-Y>,
imap <C-E> <C-Y>,

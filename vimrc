":::PATHOGEN
execute pathogen#infect()

"::::VUNDLE
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" required! 
Plugin 'gmarik/Vundle.vim'
" My Bundles here:
" original repos on github
Plugin 'Shougo/neocomplete.vim'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'joonty/vdebug'
Plugin 'joonty/vim-phpqa'
Plugin 'joonty/vim-phpunitqf'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'mattn/webapi-vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'editorconfig-vim'
"Themes
Plugin 'nanotech/jellybeans.vim'

call vundle#end()     " required!
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
au BufRead,BufNewFile *.less set ft=.css
"Maps
nmap tt <C-W>gf
nmap t vi'
nmap T vi"
nmap <C-X> :mksession!<CR>:echo "Sesion Guardada!"<CR>
"Map Tabs
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>

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
"let g:phpqa_messdetector_autorun=0

":::NEOCOMPLETE
let g:neocomplete#enable_at_startup = 1
"Disable AutoComplPop
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#enable_insert_char_pre = 1
" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

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

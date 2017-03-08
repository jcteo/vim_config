"::::VUNDLE
set nocompatible               " be iMproved
filetype off                   " required!
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
"=========PLUGINS
" required! 
Plugin 'gmarik/Vundle.vim'

" profile/base
Plugin 'Shougo/neocomplete.vim'
Plugin 'wincent/Command-T'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'tpope/vim-surround'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'joonty/vdebug'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'editorconfig-vim'
Plugin 'vim-scripts/vim-auto-save'
" THEMES
Plugin 'nanotech/jellybeans.vim'

" profile/git
Plugin 'tpope/vim-fugitive'

" profile/notes
Plugin 'plasticboy/vim-markdown'

"profile/php
"Plugin 'joonty/vim-phpqa'
"Plugin 'joonty/vim-phpunitqf'

" profile/html
"Plugin 'mattn/emmet-vim'

" profile/javascript
"Plugin 'KabbAmine/gulp-vim'
"Plugin 'digitaltoad/vim-jade'
"Plugin 'kchmck/vim-coffee-script'
"Plugin 'groenewege/vim-less'
"Plugin 'mustache/vim-mustache-handlebars'

call vundle#end()     " required!
filetype plugin indent on     " required!

"=========CONF
" profile/base
colorscheme jellybeans
set hlsearch
set ignorecase
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set nu "numeros de linea
set cursorline

au BufRead,BufNewFile *.tpl set ft=tpl.html
"Fixes 7.4
syntax on
set backspace=2

":::COMMANDT
let g:CommandTAcceptSelectionSplitMap='<C-h>'
":::NERDTREE
nmap <C-d> :NERDTreeToggle<CR>
nmap \f :NERDTreeFind<CR>
"::AUTO-SAVE
"let g:auto_save=1
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

" profile/git
":::FUGITIVE
set diffopt+=vertical

" profile/javascript
"au BufRead,BufNewFile *.less set ft=.css

" profiles/foundation
"set wildignore+=build/**,node_modules/**,generated/**,vendor/**,media-items/**,target/**,tomcat/**,*.jpg,*.png

" profiles/php
"set wildignore+=vendor/**,**/templates_c/**,*.jpg,*.png
":::PHPQA
"let g:phpqa_codesniffer_autorun=0
"let g:phpqa_messdetector_autorun=1

"=========MAPS
"inoremap <C-C> <C-C>:w<CR>:echo "Guardado!"<CR>
nmap \o <C-W>gf
nmap <C-X> :mksession!<CR>:echo "Sesion Guardada!"<CR>

"Map Navigation
"Moving through tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>
"Moving through buffers
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>

" profiles/html
"nmap <C-E> <C-Y>,
"imap <C-E> <C-Y>,


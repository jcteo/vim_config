"PROFILE
let vimProfile="default"
if !empty($VIMPROFILE)
  let vimProfile=$VIMPROFILE
endif

let profileDir="~/.config/nvim/profiles/".vimProfile."/"

call plug#begin('~/.local/share/nvim/plugged')

"=========PLUGINS

" profile/base
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'vim-syntastic/syntastic'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'joonty/vdebug'
Plug 'maksimr/vim-jsbeautify'
"Plug 'editorconfig-vim'
Plug 'vim-scripts/vim-auto-save'
" THEMES
Plug 'nanotech/jellybeans.vim'

" git
Plug 'tpope/vim-fugitive'

" notes
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown'

" profile/html
"Plug 'mattn/emmet-vim'
if !empty(glob(profileDir."plugins.vim"))
  execute "source ".profileDir."plugins.vim"
endif
call plug#end()

"=========CONF
" profile/base
colorscheme jellybeans
set hlsearch
set ignorecase
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab
set relativenumber "numeros de linea
set number
set cursorline

"Fixes 7.4
syntax on
set backspace=2

":::CTRLP
" Show buffers
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

"Open files in current window
set hidden

":::NERDTREE
nmap <C-d> :NERDTreeToggle<CR>
nmap \f :NERDTreeFind<CR>
"::AUTO-SAVE
"let g:auto_save=1

":::SYNTASTIC
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 0

let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['php', 'js'], 'passive_file_types': ['java'] }

"::DEOPLETE
let g:deoplete#enable_at_startup = 1

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


" Markdown
" disable folding, vim markdown have an error it closes every key stroke
set nofoldenable


" profile/git
":::FUGITIVE
set diffopt+=vertical

"=========MAPS
nmap <C-X> :mksession!<CR>:echo "Sesion Guardada!"<CR>

"Map Navigation
"Moving through tabs
nnoremap <C-h> :tabprevious<CR>
nnoremap <C-l> :tabnext<CR>

"Moving through buffers
nnoremap <C-j> :bnext<CR>
nnoremap <C-k> :bprevious<CR>

" profiles/html
"nmap <C-E> <C-Y>,
"imap <C-E> <C-Y>,

if !empty(glob(profileDir."source.vim"))
  execute "source ".profileDir."source.vim"
endif

echo "Using profile: ".vimProfile

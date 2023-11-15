" PLUG INSTALLATION
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

"PROFILE
let vimProfile="default"
if !empty($VIMPROFILE)
  let vimProfile=$VIMPROFILE
endif

let profileDir="~/.config/nvim/profiles/".vimProfile."/"

" Change for Shougo/dein.vim???
call plug#begin('~/.local/share/nvim/plugged')

"=========PLUGINS

" profile/base
" DDC -----------------------
" // Needs [Deno](https://deno.land/manual@v1.35.1/getting_started/installation) Installed
Plug 'Shougo/ddc.vim'
Plug 'vim-denops/denops.vim'
" DDC UIs
Plug 'Shougo/ddc-ui-native'
" DDC sources
Plug 'Shougo/ddc-source-around'
Plug 'LumaKernel/ddc-source-file'
Plug 'LumaKernel/ddc-tabnine'
" DDC filters
Plug 'Shougo/ddc-matcher_head'
Plug 'Shougo/ddc-sorter_rank'
" ----------------------- /DDC
"
" TODO: see CocSearch or fzf. or Telescope Replace ctrlpvim?
" TODO: check plugin for compact code compact in JSON file for example
" TODO: review Coc to Classes, variables definitions navigation (like Ctrl+Click de intelliJ)
" TODO: install font (Nerd Font)[https://github.com/ryanoasis/nerd-fonts#font-installation]  in order to make devicons work
Plug 'nvim-lua/plenary.nvim'
Plug 'BurntSushi/ripgrep'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.4' }
Plug 'pwntester/octo.nvim'
"Plug 'ctrlpvim/ctrlp.vim'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
" icon colors on nerdtree
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'dense-analysis/ale'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'tpope/vim-surround'
" ack replaced with telescope list_grep
"Plug 'mileszs/ack.vim'
Plug 'bling/vim-airline'
Plug 'joonty/vdebug'
Plug 'maksimr/vim-jsbeautify'
" Plug 'editorconfig-vim'
Plug 'vim-scripts/vim-auto-save'
" THEMES
Plug 'nanotech/jellybeans.vim'

" git
Plug 'tpope/vim-fugitive'
Plug 'lewis6991/gitsigns.nvim'

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

"::: DDC // TODO pass to a separate file
" Customize global settings

" You must set the default ui.
" NOTE: native ui
" https://github.com/Shougo/ddc-ui-native
call ddc#custom#patch_global('ui', 'native')

" Use around source.
" https://github.com/Shougo/ddc-source-around
" Use source tabnine
" call ddc#custom#patch_global('sources', ['around', 'tabnine'])
call ddc#custom#patch_global('sources', ['around', 'file'])

" Use matcher_head and sorter_rank.
" https://github.com/Shougo/ddc-matcher_head
" https://github.com/Shougo/ddc-sorter_rank
call ddc#custom#patch_global('sourceOptions', #{
      \ _: #{
      \   matchers: ['matcher_head'],
      \   sorters: ['sorter_rank']},
      \ })

" Change source options
call ddc#custom#patch_global('sourceOptions', #{
      \   around: #{ mark: 'A' },
      \ })

call ddc#custom#patch_global('sourceOptions', #{
    \ tabnine: #{
    \   mark: 'TN',
    \   isVolatile: v:true,
    \ }})

call ddc#custom#patch_global('sourceParams', #{
      \   around: #{ maxSize: 500 },
      \ })

" Customize settings on a filetype
call ddc#custom#patch_filetype(['c', 'cpp'], 'sources',
      \ ['around', 'clangd'])
call ddc#custom#patch_filetype(['c', 'cpp'], 'sourceOptions', #{
      \   clangd: #{ mark: 'C' },
      \ })
call ddc#custom#patch_filetype('markdown', 'sourceParams', #{
      \   around: #{ maxSize: 100 },
      \ })

" LUA
" TODO: import lua from file source '~/.config/nvim/lua/init.lua'
lua << EOF
  require('gitsigns').setup {
    signs = {
      add       = { text = ">" },
      delete    = { text = "<" },
    }
  }

  require('octo').setup()
EOF

" Mappings

" <TAB>: completion.
inoremap <silent><expr> <TAB>
\ pumvisible() ? '<C-n>' :
\ (col('.') <= 1 <Bar><Bar> getline('.')[col('.') - 2] =~# '\s') ?
\ '<TAB>' : ddc#map#manual_complete()

" <S-TAB>: completion back.
inoremap <expr><S-TAB>  pumvisible() ? '<C-p>' : '<C-h>'

" Use ddc.
call ddc#enable()

" TODO: move to profile
set wildignore+=*/target/*,**/target/*,*/node_modules/*

":::CTRLP
" Show buffers
nnoremap <silent> <leader>b :CtrlPBuffer<CR>

":::TELESCOPE
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

"Open files in current window
set hidden

":::NERDTREE
nmap <leader>d :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>
let NERDTreeQuitOnOpen=1

"::AUTO-SAVE
"let g:auto_save=1

"::ALE
let g:ale_linters = {'javascript': ['eslint'], 'less': ['lesshint']}


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

"Functions
"Config files
" TODO improve this with a single function
function s:Cfnv()
  tabnew ~/.config/nvim/init.vim
endfunction

function s:Cfa()
  tabnew ~/.config/alacritty/alacritty.yml
endfunction

function s:Cft()
  tabnew ~/.tmux.conf
endfunction

command! Cfnv call s:Cfnv()
command! Cfa call s:Cfa()
command! Cft call s:Cft()

" profiles/html
" TODO: move to brightspot profile
au BufReadPost *.hbs set syntax=html
"nmap <C-E> <C-Y>,
"imap <C-E> <C-Y>,

if !empty(glob(profileDir."source.vim"))
  execute "source ".profileDir."source.vim"
endif

echo "Using profile: ".vimProfile

"============CONF
"tpl sintax
au BufRead,BufNewFile *.tpl set ft=tpl.html

set wildignore+=*/vendor/*,*/templates_c/*,*.jpg,*.png

":::PHPQA
let g:phpqa_codesniffer_autorun=0
let g:phpqa_messdetector_autorun=1

"===============MAPS
nmap \o <C-W>gf

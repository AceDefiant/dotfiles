" Import Plugins
source $HOME/.config/nvim/vim-plug/plugins.vim

" Set Stuff
syntax on
set tabstop=4 softtabstop=4
set expandtab
set smartindent
set nu
set incsearch
set hls!
let g:python3_host_prog = '/usr/bin/python3'

" Syntax for x86_64 Assembly Language
if &ft==fnamemodify("%", ":e")
  set syntax=asmx86_64
endif

" Prettify
let g:airline_theme='atomic'


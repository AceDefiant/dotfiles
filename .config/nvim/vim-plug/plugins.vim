
call plug#begin('~/.config/nvim/autoload/plugged')

	Plug 'sheerun/vim-polyglot'
	Plug 'jiangmiao/auto-pairs'
	Plug 'tpope/vim-surround'
	Plug 'scrooloose/syntastic'
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	" x86_64 Assembly
	Plug 'vim-scripts/asmx86_64'
	Plug 'philj56/vim-asm-indent'
	" Rust
	Plug 'rust-lang/rust.vim'

call plug#end()

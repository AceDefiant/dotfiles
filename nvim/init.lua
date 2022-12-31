--       ___      _______  
--      | \ \    / /  __ \	
--      | |\ \  / /| |  | |	A customized init.lua for
--  _   | | \ \/ / | |  | | neovim (https://neovim.io)
-- | |__| |  \  /  | |__| |
--  \____/    \/   |_____/ 

local g = vim.g
local o = vim.o

----------------------------------------------------------
-- Variables
----------------------------------------------------------

o.number = true
o.autoindent = true
o.tabstop = 4
o.softtabstop = 4
o.shiftwidth = 4
o.smarttab = true
o.mouse = 'a'
o.timeoutlen = 1000

vim.cmd("colorscheme nord")
g.airline_powerline_fonts = 1
g['airline#extensions#tabline#enabled'] = 1
g.suda_smart_edit = 1
g.wiki_root = '~/Documents/wiki'

----------------------------------------------------------
-- Keybinds
----------------------------------------------------------

local function map(m, k, v)
    vim.keymap.set(m, k, v, { silent = true })
end

g.mapleader = ' '
g.maplocalleader = ' '

map('n', '<Leader>q', ':wq<CR>')
map('n', '<LEADER>Q', ':q!<CR>')
map('n', '<LEADER>W', ':w<CR>')
map('n', '<Leader>mf', ':NERDTreeToggle<CR>')
map('n', '<Leader>mv', ':Tagbar Toggle<CR>')
map('n', '<Leader>ws', ':vsplit<CR>')
map('n', '<Leader>wS', ':split<CR>')
map('n', '<Leader>wh', '<C-w>h')
map('n', '<Leader>wj', '<C-w>j')
map('n', '<Leader>wk', '<C-w>k')
map('n', '<Leader>wl', '<C-w>l')
map('n', '<Leader>bp', ':bp<CR>')
map('n', '<Leader>bn', ':bn<CR>')
map('n', '<Leader>bd', ':bd<CR>')
map('n', '<Leader>cc', ':e ~/.config/nvim/init.lua<CR> ')


----------------------------------------------------------
-- Macros
----------------------------------------------------------

-- Indent Line Once
vim.cmd("let @t = '0i	j'")
-- Paste Monogram
vim.cmd("let @s = 'i      ___      _______oi     | \\ \\    / /  __ \\oi     | |\\ \\  / /| |  | |oi _   | | \\ \\/ / | |  | |oi| |__| |  \\  /  | |__| |oi \\____/    \\/   |_____/oi'")

----------------------------------------------------------
-- Plugins
----------------------------------------------------------

return require('packer').startup(function()

	use 'wbthomason/packer.nvim'

	-- Aesthetic
	use 'vim-airline/vim-airline' -- Status Bar
	use 'vim-airline/vim-airline-themes' -- Themes for airline
	use 'ryanoasis/vim-devicons' -- Adds icons
	use 'arcticicestudio/nord-vim' -- Nord theme
	-- Completion/Syntax
	use 'neoclide/coc.nvim' -- Autocompletion; see Github for language server installation instructions
	use 'jiangmiao/auto-pairs' -- Autoclosing
	use 'tpope/vim-surround' -- Surround using ysw)
	use 'sheerun/vim-polyglot' -- Better syntax highlighting
	use 'lervag/wiki-ft.vim'
	-- Function
	use 'scrooloose/nerdtree' -- File Explorer
	use 'majutsushi/tagbar' -- Tagbar for code navigation
	use 'lambdalisue/suda.vim' -- Editing as root
	use 'francoiscabrol/ranger.vim' -- Use ranger
	use 'lervag/wiki.vim'

end)

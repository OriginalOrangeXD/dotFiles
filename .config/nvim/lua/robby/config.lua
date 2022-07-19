vim.g.mapleader = " "
vim.cmd([[
syntax on
syntax enable
set notimeout
set encoding=utf-8
set nu rnu
set nobackup
set noswapfile
set nowritebackup
set expandtab
set tabstop=4
set shiftwidth=4
set ignorecase
set smartcase
]])

-- colorscheme
vim.opt.background = "dark" -- or "light" for light mode
vim.cmd([[
    colorscheme gruvbox
    let g:gruvbox_transparent_bg = 1
    let g:gruvbox_transparent_bg = 1
    hi! Normal ctermbg=none guibg=none
    hi! NonText ctermbg=none guibg=none
    autocmd BufWritePre *.go :silent! lua require('go.format').gofmt()
    ]])



-- nvim_lsp object
local nvim_lsp = require "lspconfig"

-- Python 
-- :(

-- GO
require('go').setup({})

-- MORE RUST
require('rust-tools').setup({})
require('lspconfig').rust_analyzer.setup({})

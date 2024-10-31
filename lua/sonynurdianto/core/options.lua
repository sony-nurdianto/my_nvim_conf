vim.cmd("let g:netrw_liststyle = 3")

-- font setup
vim.opt.guifont = "Fira Mono"
--vim.opt.guifontsize = 15

-- syntax hightlighting
vim.opt.syntax = "on"

-- Enable automatic indentation
vim.opt.autoindent = true

-- Set tab size
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- Expansion Tab
vim.opt.expandtab = true

-- Set Search options for case-insensitive and whole-word search
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Enable Line Number
vim.opt.number = true

-- show cmd
vim.opt.showcmd = true

-- Enable showmode
vim.opt.showmode = true

-- vim.opt.undoredo = true

-- vim.opt.historysearch = true

-- theme options
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.signcolumn = "yes"

-- backspace options
vim.opt.backspace = "indent,eol,start"

--clipboard
vim.opt.clipboard:append("unnamedplus")

-- split windows
vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.swapfile = false

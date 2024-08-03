-- general options
-- see `:help vim.opt` and `:help option-list`

-- line numbers
vim.opt.number = true
vim.opt.relativenumber = true
-- vim.opt.signcolumn = "number"

-- set tab spaces to 4
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- set some whitespace characters
-- vim.opt.list = true
-- vim.opt.listchars = {space = '·'}

-- sync clipboard between OS and Neovim
vim.opt.clipboard = 'unnamedplus'

-- keep signcolumn on by default
--vim.opt.signcolumn = 'yes'


-- show which line your cursor is on
vim.opt.cursorline = true

-- set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- fast update time
vim.opt.updatetime = 50

-- color column to 80 characters
vim.opt.colorcolumn = "80"

-- require lazy.nvim package manager config file
require('config.lazy')

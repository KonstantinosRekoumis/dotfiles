vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set nowrap")
vim.cmd("set clipboard+=unnamedplus")
-- vim.cmd("set t_Co=16")
vim.g.mapleader = " "

vim.opt.swapfile = false

-- Navigate vim panes better
vim.keymap.set('n', '<c-k>', ':wincmd k<CR>')
vim.keymap.set('n', '<c-j>', ':wincmd j<CR>')
vim.keymap.set('n', '<c-h>', ':wincmd h<CR>')
vim.keymap.set('n', '<c-l>', ':wincmd l<CR>')

-- vim.keymap.set("v", "<leader>y", '"+y', {})
-- vim.keymap.set("v", "<leader>d", '"+d', {})
-- vim.keymap.set("v", "<leader>P", '"+P', {})
-- vim.keymap.set("v", "<leader>p", '"+p', {})
vim.keymap.set("n", "<leader>q", ":q<CR>")
vim.keymap.set("n", "<leader>w", ":w<CR>")
vim.keymap.set("n", "<leader>nh", ':nohl<CR>' , {})
vim.cmd("set nu")
--



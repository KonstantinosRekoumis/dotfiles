local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

vim.opt.termguicolors = true
-- vim.opt.t_Co = 256
vim.o.expandtab = true

-- vim.cmd.colorscheme "kanagawa"

-- vim.o.background = "light"
require("vim-options")
require("lazy").setup("plugins")

-- -- set background based on the time of day
if os.date("*t")["hour"] >= 6 and os.date("*t")["hour"] < 20 then
	vim.cmd.colorscheme("nordfox")
	-- vim.o.background = "light"
else
	vim.cmd.colorscheme("nightfox")
	-- vim.o.background = "dark"
end


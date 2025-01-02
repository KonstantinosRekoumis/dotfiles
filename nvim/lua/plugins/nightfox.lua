return {
	"EdenEast/nightfox.nvim",
	lazy = true,
	name = "nightfox",
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				terminal_colors = true,
				styles = {
					sidebars = "transparent",
					floats = "transparent",
				},
			},
		})
		-- vim.cmd.colorscheme("nightfox")
	end,
} -- lazy

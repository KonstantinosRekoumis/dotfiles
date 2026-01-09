return {
	"EdenEast/nightfox.nvim",
	lazy = false,
	name = "nightfox",
	priority = 1000,
	config = function()
		require("nightfox").setup({
			options = {
				transparent = true,
				transparent_background_level = 2,
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

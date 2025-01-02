return {
	"rebelot/kanagawa.nvim",
	lazy = false,
	name = "kanagawa",
	priority = 1001,
	config = function()
		require("kanagawa").setup({

			transparent = true,
		})
		-- vim.cmd.colorscheme "kanagawa-wave"  --default
		--    vim.cmd.colorscheme "kanagawa-dragon" --dark

		--    vim.cmd.colorscheme "kanagawa-lotus"  --light
	end,
}

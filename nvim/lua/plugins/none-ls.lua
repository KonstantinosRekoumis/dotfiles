return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")
		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				-- null_ls.builtins.formatting.ruff,
				null_ls.builtins.formatting.black,
				null_ls.builtins.diagnostics.mypy.with({
					extra_args = function()
						local virtual = os.getenv("VIRTUAL_ENV") or os.getenv("CONDA_PREFIX") or "/usr"
                        print( virtual)
						return { "--python-executable", virtual .. "/bin/python3" }
					end,
				}),
				-- null_ls.builtins.diagnostics.ruff,
			},
		})
		-- vim.keymap.set('n', '<leader>fm', vim.lsp.buf.format, {})
	end,
}

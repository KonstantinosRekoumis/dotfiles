local on_attach = function(client, bufnr)
	if client.name == "ruff" then
		client.server_capabilities.hoverProvider = false
	end
end

return {

	{
		"williamboman/mason.nvim",
		lazy = false,
		config = function()
			require("mason").setup({
				ensure_installed = {
					"stylua",
					"black",
					"ruff",
					"mypy",
					"fortls",
					"pyright",
					"lua_ls",
				},
			})
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				-- ensure_installed = {
				--
				-- }
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		lazy = false,
		config = function()
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({ on_attach = on_attach, capabilities = capabilities })
			lspconfig.ruff.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				-- extra_args = function()
				-- 	local virtual = os.getenv("virtual_env") or os.getenv("conda_prefix") or "/usr"
				-- 	return { "--python-executable", virtual .. "/bin/python3" }
				-- end,
			})
			lspconfig.fortls.setup({ on_attach = on_attach, capabilities = capabilities })
            lspconfig.clangd.setup({ on_attach = on_attach, capabilities = capabilities })
			lspconfig.pyright.setup({
				on_attach = on_attach,
				capabilities = capabilities,
				settings = {
					pyright = { disableOrganizeImports = true },
					python = {
						analysis = {
							ignore = { "*" },
                            typeCheckingMode = "off",
						},
					},
					-- venv = function()
					-- 	local virtual = os.getenv("virtual_env") or os.getenv("conda_prefix") or "/usr"
					-- 	return { "--python-executable", virtual .. "/bin/python3" }
					-- end,
				},
			})

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
			vim.keymap.set("n", "<leader>fm", vim.lsp.buf.format, {})
		end,
	},
}

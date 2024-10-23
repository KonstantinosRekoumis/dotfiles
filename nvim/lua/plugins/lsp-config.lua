local on_attach = function (client, bufnr)
    if client.name == "ruff" then
      client.server_capabilities.hoverProvider = false
  end
end
  

return {
  {
    "williamboman/mason.nvim",
    lazy = false,
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "fortls", "ruff", "pyright", "lua_ls"}})
    end,
  },
  {
    "neovim/nvim-lspconfig",
    lazy = false,
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({on_attach = on_attach, capabilities = capabilities})
      lspconfig.ruff.setup({on_attach = on_attach, capabilities = capabilities})
      lspconfig.fortls.setup({on_attach = on_attach, capabilities = capabilities})
      lspconfig.pyright.setup({on_attach = on_attach,
        settings = {pyright = {disableOrganizeImports = true,},
                    python = {analysis={
                                ignore = {"*"}, 
                               },
                              },
        },
        capabilities = capabilities})


      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>gr", vim.lsp.buf.references, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}

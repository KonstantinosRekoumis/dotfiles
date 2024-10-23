return {
        "preservim/vim-indent-guides",
        init = function()
            vim.g.indent_guides_enable_on_vim_startup = 1
            vim.g.indent_guides_guide_size = 1
            vim.g.indent_guides_default_mapping = 0
            -- see also `after/ftplugin/fortran.vim`
        end,
    }


return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },

    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = { "lua_ls", "clangd", "neocmake", "jsonls", "pylsp" },
            })
        end
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            local caps = require('cmp_nvim_lsp').default_capabilities()
            local lspconfig = require("lspconfig")

            lspconfig.lua_ls.setup({
                capabilities = caps,
                on_init = function(client)

                    client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
                        workspace = {
                            checkThirdParty = false,
                            library = {
                                vim.env.VIMRUNTINE,
                                "/usr/local/share/luals_addons/"
                            }
                        }
                    })
                end,
                settings = {
                    Lua = {}
                }
            })
            lspconfig.clangd.setup({
                capabilities = caps
            })
            lspconfig.neocmake.setup({
                capabilities = caps
            })
            lspconfig.eslint.setup({
                capabilities = caps
            })
            lspconfig.pylsp.setup({
                capabilities = caps
            })

            vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
            vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
            vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
            vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, {})
            vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})
        end
    }
}

return {
    "neovim/nvim-lspconfig",
    dependencies = {
        "williamboman/mason.nvim",
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            handlers = {
                function(server_name)
                    require("lspconfig")[server_name].setup({
                        capabilities = require("blink.cmp").get_lsp_capabilities(),
                    })
                end,
                ["lua_ls"] = function()
                    require("lspconfig")["lua_ls"].setup({
                        settings = { Lua = { workspace = { library = { vim.env.VIMRUNTIME } } } },
                        capabilities = require("blink.cmp").get_lsp_capabilities(),
                    })
                end,
            },
        })
        vim.diagnostic.config({ signs = false, underline = false, virtual_text = true })
        local orig_util_open_floating_preview = vim.lsp.util.open_floating_preview
        function vim.lsp.util.open_floating_preview(contents, syntax, opts, ...)
            opts = opts or {}
            opts.width = 50
            opts.height = 10
            return orig_util_open_floating_preview(contents, syntax, opts, ...)
        end
    end,
}

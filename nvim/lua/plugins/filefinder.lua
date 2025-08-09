return {
    "nvim-telescope/telescope.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")
        require("telescope").setup({
            defaults = {
                selection_caret = "▌ ",
                prompt_prefix = " ",
                layout_config = {
                    horizontal = { prompt_position = "top" },
                },
                sorting_strategy = "ascending",
                mappings = { i = { ["<esc>"] = actions.close, ["<C-u>"] = false } },
            },
        })
        vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
        vim.keymap.set("n", "<leader>fr", builtin.live_grep, { desc = "Telescope grep files" })
    end,
}

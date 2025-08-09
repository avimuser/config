return {
	"saghen/blink.cmp",
	dependencies = { "rafamadriz/friendly-snippets" },
	opts = {
		keymap = {
			preset = "none",
			["<Up>"] = { "select_prev", "fallback" },
			["<Down>"] = { "select_next", "fallback" },
			["<CR>"] = { "accept", "fallback" },
			["<Tab>"] = { "snippet_forward", "fallback" },
			["<S-Tab>"] = { "snippet_backward", "fallback" },
		},
		completion = {
			menu = {
				scrollbar = false,
				draw = {
					columns = { { "label" } },
					components = { label = { width = { min = 35, max = 35, fill = true } } },
				},
			},
			documentation = {
				auto_show = true,
				window = { min_width = 40, max_width = 40, max_height = 20 },
			},
		},
		fuzzy = { implementation = "lua" },
		sources = { default = { "lsp", "path", "snippets", "buffer" } },
	},
}

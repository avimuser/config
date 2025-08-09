return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"jay-babu/mason-null-ls.nvim",
		"williamboman/mason.nvim",
		"nvim-lua/plenary.nvim",
	},
	config = function()
		require("mason").setup()
		require("null-ls").setup()
		require("mason-null-ls").setup({
			handlers = {},
		})
	end,
}

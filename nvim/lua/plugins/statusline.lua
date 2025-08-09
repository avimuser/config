return {
	"nvim-lualine/lualine.nvim",
	opts = {
		options = { icons_enabled = false, globalstatus = true },
		sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename", "diagnostics" },
			lualine_x = {},
			lualine_y = {},
			lualine_z = {},
		},
	},
}

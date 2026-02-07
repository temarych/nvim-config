return {
	"stevearc/oil.nvim",
	---@module 'oil'
	---@type oil.SetupOpts
	opts = {
		view_options = {
			show_hidden = true,
			sort = {
				{ "type", "asc" },
				{ "name", "asc" },
			},
		},
	},
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
}

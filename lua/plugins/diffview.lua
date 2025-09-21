return {
	"sindrets/diffview.nvim",
	keys = {
		{
			"<leader>gd",
			function()
				require("diffview").open()
			end,
			desc = "Open Git Diffview",
		},
		{
			"<leader>gD",
			function()
				require("diffview").close()
			end,
			desc = "Close Git Diffview",
		},
		{
			"<leader>gh",
			function()
				require("diffview").file_history()
			end,
			desc = "Git File History",
		},
		{
			"<leader>gH",
			function()
				require("diffview").file_history("%")
			end,
			desc = "Current File History",
		},
	},
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = {},
}

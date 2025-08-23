return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local configs = require("nvim-treesitter.configs")

		configs.setup({
			ensure_installed = { "lua", "python", "html", "rust", "typescript", "javascript", "tsx" },
			sync_install = false,
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}

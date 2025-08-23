return {
	"folke/tokyonight.nvim",
	lazy = true,
	priority = 1000,
	opts = {
		style = "night",
		on_colors = function(colors)
			colors.bg = colors.bg_dark
		end,
	},
}

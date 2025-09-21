return {
	"folke/tokyonight.nvim",
	lazy = true,
	priority = 1000,
	opts = {
		style = "night",
		on_colors = function(colors)
			colors.bg_dark = "#0f0f14"
			colors.bg = colors.bg_dark
			colors.bg_float = colors.bg_dark
		end,
	},
}

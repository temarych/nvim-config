return {
	"lewis6991/gitsigns.nvim",
	keys = {
		{
			"]c",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "]c", bang = true })
				else
					require("gitsigns").nav_hunk("next")
				end
			end,
			mode = "n",
			desc = "Next Hunk",
		},
		{
			"[c",
			function()
				if vim.wo.diff then
					vim.cmd.normal({ "[c", bang = true })
				else
					require("gitsigns").nav_hunk("prev")
				end
			end,
			mode = "n",
			desc = "Prev Hunk",
		},

		{
			"<leader>hs",
			function()
				require("gitsigns").stage_hunk()
			end,
			mode = "n",
			desc = "Stage Hunk",
		},
		{
			"<leader>hr",
			function()
				require("gitsigns").reset_hunk()
			end,
			mode = "n",
			desc = "Reset Hunk",
		},

		{
			"<leader>hs",
			function()
				require("gitsigns").stage_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
			mode = "v",
			desc = "Stage Hunk (Visual)",
		},
		{
			"<leader>hr",
			function()
				require("gitsigns").reset_hunk({ vim.fn.line("."), vim.fn.line("v") })
			end,
			mode = "v",
			desc = "Reset Hunk (Visual)",
		},

		{
			"<leader>hS",
			function()
				require("gitsigns").stage_buffer()
			end,
			mode = "n",
			desc = "Stage Buffer",
		},
		{
			"<leader>hR",
			function()
				require("gitsigns").reset_buffer()
			end,
			mode = "n",
			desc = "Reset Buffer",
		},
		{
			"<leader>hp",
			function()
				require("gitsigns").preview_hunk()
			end,
			mode = "n",
			desc = "Preview Hunk",
		},
		{
			"<leader>hi",
			function()
				require("gitsigns").preview_hunk_inline()
			end,
			mode = "n",
			desc = "Preview Inline",
		},

		{
			"<leader>hb",
			function()
				require("gitsigns").blame_line({ full = true })
			end,
			mode = "n",
			desc = "Blame Line",
		},

		{
			"<leader>hd",
			function()
				require("gitsigns").diffthis()
			end,
			mode = "n",
			desc = "Diff This",
		},
		{
			"<leader>hD",
			function()
				require("gitsigns").diffthis("~")
			end,
			mode = "n",
			desc = "Diff This ~",
		},

		{
			"<leader>hQ",
			function()
				require("gitsigns").setqflist("all")
			end,
			mode = "n",
			desc = "Quickfix All Hunks",
		},
		{
			"<leader>hq",
			function()
				require("gitsigns").setqflist()
			end,
			mode = "n",
			desc = "Quickfix Hunks",
		},

		{
			"<leader>tb",
			function()
				require("gitsigns").toggle_current_line_blame()
			end,
			mode = "n",
			desc = "Toggle Blame",
		},
		{
			"<leader>tw",
			function()
				require("gitsigns").toggle_word_diff()
			end,
			mode = "n",
			desc = "Toggle Word Diff",
		},

		{
			"ih",
			function()
				require("gitsigns").select_hunk()
			end,
			mode = { "o", "x" },
			desc = "Select Hunk",
		},
	},
}

return {
	"nvim-neo-tree/neo-tree.nvim",
	cmd = "Neotree",
	dependencies = { "MunifTanjim/nui.nvim", "nvim-tree/nvim-web-devicons" },
	keys = {
		{
			"<leader>fe",
			function()
				require("neo-tree.command").execute({ toggle = true, dir = vim.uv.cwd() })
			end,
			desc = "Explorer NeoTree (cwd)",
		},
		{
			"<leader>ge",
			function()
				require("neo-tree.command").execute({ source = "git_status", toggle = true })
			end,
			desc = "Git Explorer",
		},
		{
			"<leader>be",
			function()
				require("neo-tree.command").execute({ source = "buffers", toggle = true })
			end,
			desc = "Buffer Explorer",
		},
	},
	deactivate = function()
		vim.cmd([[Neotree close]])
	end,
	opts = {
		sources = { "filesystem", "buffers", "git_status" },
		open_files_do_not_replace_types = { "terminal", "Trouble", "trouble", "qf", "Outline" },
		filesystem = {
			bind_to_cwd = false,
			follow_current_file = { enabled = true },
			use_libuv_file_watcher = true,
			filtered_items = {
				visible = true,
				hide_dotfiles = false,
				hide_gitignored = true,
			},
			components = {
				harpoon_index = function(config, node, _)
					local harpoon_list = require("harpoon"):list()
					local path = node:get_id()
					local harpoon_key = vim.uv.cwd()

					for i, item in ipairs(harpoon_list.items) do
						local value = item.value
						if string.sub(item.value, 1, 1) ~= "/" then
							value = harpoon_key .. "/" .. item.value
						end

						if value == path then
							vim.print(path)
							return {
								text = string.format(" ⥤ %d", i),
								highlight = config.highlight or "NeoTreeDirectoryIcon",
							}
						end
					end
					return {}
				end,
			},
			renderers = {
				file = {
					{ "indent" },
					{ "icon" },
					{
						"container",
						content = {
							{
								"name",
								zindex = 10,
							},
							{
								"symlink_target",
								zindex = 10,
								highlight = "NeoTreeSymbolicLinkTarget",
							},
							{ "harpoon_index", zindex = 10 },
							{ "clipboard", zindex = 10 },
							{ "bufnr", zindex = 10 },
							{ "modified", zindex = 20, align = "right" },
							{ "diagnostics", zindex = 20, align = "right" },
							{ "git_status", zindex = 10, align = "right" },
							{ "file_size", zindex = 10, align = "right" },
							{ "type", zindex = 10, align = "right" },
							{ "last_modified", zindex = 10, align = "right" },
							{ "created", zindex = 10, align = "right" },
						},
					},
				},
				directory = {
					{ "indent" },
					{ "icon" },
					{ "current_filter" },
					{
						"container",
						content = {
							{ "name", zindex = 10 },
							{
								"symlink_target",
								zindex = 10,
								highlight = "NeoTreeSymbolicLinkTarget",
							},
							{ "clipboard", zindex = 10 },
							{
								"diagnostics",
								errors_only = true,
								zindex = 20,
								align = "right",
								hide_when_expanded = true,
							},
							{ "git_status", zindex = 10, align = "right", hide_when_expanded = true },
							{ "file_size", zindex = 10, align = "right" },
							{ "type", zindex = 10, align = "right" },
							{ "last_modified", zindex = 10, align = "right" },
							{ "created", zindex = 10, align = "right" },
						},
					},
				},
			},
		},
		window = {
			mappings = {
				["l"] = "open",
				["h"] = "close_node",
				["<space>"] = "none",
				["Y"] = {
					function(state)
						local node = state.tree:get_node()
						local path = node:get_id()
						vim.fn.setreg("+", path, "c")
					end,
					desc = "Copy Path to Clipboard",
				},
				["P"] = { "toggle_preview", config = { use_float = false } },
			},
		},
		default_component_configs = {
			indent = {
				with_expanders = true,
				expander_highlight = "NeoTreeExpander",
			},
		},
	},
	config = function(_, opts)
		vim.api.nvim_set_hl(0, "NeoTreeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeNormalNC", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeEndOfBuffer", { bg = "none" })
		vim.api.nvim_set_hl(0, "NeoTreeWinSeparator", { fg = "#2b2b3b", bg = "none" })
		require("neo-tree").setup(opts)
	end,
}

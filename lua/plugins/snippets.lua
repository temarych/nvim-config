return {
	"L3MON4D3/LuaSnip",
	version = "v2.*",
	event = "InsertEnter",
	build = "make install_jsregexp",
	dependencies = {
		"rafamadriz/friendly-snippets",
	},
	config = function()
		require("luasnip.loaders.from_vscode").lazy_load()

		local ls = require("luasnip")

		ls.add_snippets("lua", {
			ls.snippet("lf", {
				ls.text_node("local function "),
				ls.insert_node(1, "name"),
				ls.text_node("("),
				ls.insert_node(2),
				ls.text_node(")"),
				ls.text_node({ "", "\t" }),
				ls.insert_node(0),
				ls.text_node({ "", "end" }),
			}),
		})

		ls.add_snippets("python", {
			ls.snippet("nm", {
				ls.text_node({ 'if __name__ == "__main__":', "\t" }),
				ls.insert_node(0),
			}),
		})

		vim.keymap.set({ "i", "s" }, "<C-j>", function()
			return require("luasnip").jump(1)
		end, { silent = true })

		vim.keymap.set({ "i", "s" }, "<C-k>", function()
			return require("luasnip").jump(-1)
		end, { silent = true })
	end,
}

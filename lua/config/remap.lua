vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Oil)

vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action)
vim.keymap.set("n", "K", vim.lsp.buf.hover)
vim.keymap.set("n", "gd", vim.lsp.buf.definition)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation)
vim.keymap.set("n", "go", vim.lsp.buf.type_definition)

vim.keymap.set("n", "<leader>e", vim.diagnostic.open_float)

vim.keymap.set("n", "<leader>?", vim.cmd.map, { desc = "Show keymaps" })
vim.keymap.set("n", "<leader>/", vim.cmd.nmap, { desc = "Show normal mode keymaps" })
vim.keymap.set("v", "<leader>/", vim.cmd.vmap, { desc = "Show visual mode keymaps" })
vim.keymap.set("i", "<leader>/", vim.cmd.imap, { desc = "Show insert mode keymaps" })

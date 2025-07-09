vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set({ "n", "v" }, '<leader>ca', vim.lsp.buf.code_action)

vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
vim.keymap.set("n", "go", function() vim.lsp.buf.type_definition() end, opts)

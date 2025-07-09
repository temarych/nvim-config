return {
  {
    "neovim/nvim-lspconfig",
    config = function()
      vim.api.nvim_create_autocmd("BufWritePre", {
        callback = function()
          vim.lsp.buf.format({ async = false })
        end,
      })
    end,
  },
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      "neovim/nvim-lspconfig",
      "mason-org/mason.nvim",
    },
    opts = {
      automatic_enable = {
        exclude = {
          -- "pyright",
          "ty",
        },
      },
    },
  },
}

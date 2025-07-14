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
          "rust_analyzer",
        },
      },
    },
    config = function(_, opts)
      lspconfig = require("mason-lspconfig")

      lspconfig.setup(opts)

      vim.lsp.config("rust-analyzer", {
        on_attach = function(_, bufnr)
          vim.keymap.set("n", "<leader>ca", function()
            vim.cmd.RustLsp("codeAction")
          end, { silent = true, buffer = bufnr })

          vim.keymap.set("n", "K", function()
            vim.cmd.RustLsp({ "hover", "actions" })
          end, { silent = true, buffer = bufnr })
        end,
      })
    end,
  },
}

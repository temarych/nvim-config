return {
  {
    "nvimtools/none-ls.nvim",
    depencencies = { "nvimtools/none-ls-extras.nvim" },
    config = function()
      local null_ls = require("null-ls")

      null_ls.setup({
        sources = {
          null_ls.builtins.formatting.stylua,
        },
      })
    end,
  },
}

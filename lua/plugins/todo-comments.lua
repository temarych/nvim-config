return {
  "folke/todo-comments.nvim",
  event = "VeryLazy",
  dependencies = { "nvim-lua/plenary.nvim" },
  keys = {
    { "<leader>ft", "<cmd>TodoTelescope<cr>",              desc = "Find TODOs (Telescope)" },
    { "<leader>qt", "<cmd>TodoQuickFix<cr><cmd>copen<cr>", desc = "Quickfix TODOs" },
    {
      "]t",
      function()
        require("todo-comments").jump_next()
      end,
      desc = "Next TODO (buffer)",
    },
    {
      "[t",
      function()
        require("todo-comments").jump_prev()
      end,
      desc = "Prev TODO (buffer)",
    },
    { "]T", "<cmd>cnext<cr>", desc = "Next TODO (quickfix)" },
    { "[T", "<cmd>cprev<cr>", desc = "Prev TODO (quickfix)" },
  },
  opts = {},
}

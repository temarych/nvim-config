return {
  "goolord/alpha-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons", "folke/tokyonight.nvim" },
  config = function()
    local startify = require("alpha.themes.startify")

    startify.file_icons.provider = "devicons"

    startify.section.header.val = {
      [[ __                                                       __         ]],
      [[/\ \__                                                   /\ \        ]],
      [[\ \ ,_\    __    ___ ___      __     _ __   __  __    ___\ \ \___    ]],
      [[ \ \ \/  /'__`\/' __` __`\  /'__`\  /\`'__\/\ \/\ \  /'___\ \  _ `\  ]],
      [[  \ \ \_/\  __//\ \/\ \/\ \/\ \L\.\_\ \ \/ \ \ \_\ \/\ \__/\ \ \ \ \ ]],
      [[   \ \__\ \____\ \_\ \_\ \_\ \__/.\_\\ \_\  \/`____ \ \____\\ \_\ \_\]],
      [[    \/__/\/____/\/_/\/_/\/_/\/__/\/_/ \/_/   `/___/> \/____/ \/_/\/_/]],
      [[                                                /\___/               ]],
      [[                                                \/__/                ]],
    }

    require("alpha").setup(startify.config)
  end,
}

local nvterm = require "nvterm"

nvterm.setup {
  terminals = {
    list = {},
    shell = "pwsh",
    type_opts = {
      float = {
        relative = "editor",
        row = 0.3,
        col = 0.25,
        width = 0.5,
        height = 0.4,
        border = "single",
      },
      horizontal = { location = "rightbelow", split_ratio = 0.4 },
      vertical = { location = "rightbelow", split_ratio = 0.4 },
    },
  },
}

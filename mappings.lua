local M = {}

-- In order to disable a default keymap, use
M.disabled = {
  n = {
    --  ["<leader>h"] = "",
    --  ["<C-a>"] = "",
  },
}

-- Your custom mappings
M.general = {
  n = {
    ["<C-n>"] = { "<cmd> Telescope <CR>", "Telescope" },
    ["<C-s>"] = { ":Telescope Files <CR>", "Telescope Files" },
    ["<leader>e"] = { ":NvimTreeToggle <CR>", "Nvim Tree Toggle" },
  },

  i = {
    ["jj"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    -- ...
  },
}

M.tabuffline = {
  n = {
    -- cycle through buffers
    ["]b"] = {
      function()
        require("nvchad_ui.tabufline").tabuflineNext()
      end,
      "Goto next buffer",
    },

    ["[b"] = {
      function()
        require("nvchad_ui.tabufline").tabuflinePrev()
      end,
      "Goto prev buffer",
    },

    -- close buffer + hide terminal buffer
    ["<leader>c"] = {
      function()
        require("nvchad_ui.tabufline").close_buffer()
      end,
      "Close buffer",
    },
  },
}

return M

local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "typescript-language-server",
        "html-lsp",
        "css-lsp",
        "emmet-ls",
        "tailwindcss-language-server",
        "intelephense",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",

    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults
        "vim",
        "lua",

        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "php",
        -- "vue", "svelte",
        -- others

        -- low level
        -- "c",
        -- "zig"
      },
    },
  },
  {
    "windwp/nvim-ts-autotag",
    ft = {
      "html",
      "javascript",
      "typescript",
      "javascriptreact",
      "typescriptreact",
      -- "svelte",
      -- "vue",
      "tsx",
      "jsx",
      -- "rescript",
      "xml",
      "php",
      -- "markdown",
      -- "glimmer",
      -- "handlebars",
      -- "hbs",
    },
    config = function()
      require "custom.configs.tsautotag"
    end,
  },
  {
    "NvChad/nvterm",
    config = function()
      require "custom.configs.nvterm"
    end,
  },
}

return plugins

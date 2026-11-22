return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,

    dependencies = {
      "nvim-telescope/telescope-ui-select.nvim",
      "stevearc/dressing.nvim",
    },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      auto_install = true,
      ensure_installed = {
        "vim",
        "lua",
        "json",
        "vimdoc",
        "html",
        "css",
        "go",
        "gomod",
        "gosum",
        "gowork",
        "bash",
        "zsh",
        "cpp",
        "c",
        "objc",
        "cuda",
        "proto",
        "templ",
      },
    },
  },

  --
  -- Custom
  --
  {
    "nvim-telescope/telescope-ui-select.nvim",
    lazy = true,
    config = function()
      require("telescope").setup {
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown(),
          },
        },
      }

      require("telescope").load_extension "ui-select"
    end,
  },

  {
    "stevearc/dressing.nvim",
    lazy = true,
    opts = {},
  },

  -- Debugger
  {
    "mfussenegger/nvim-dap",
    dependencies = {
      "rcarriga/nvim-dap-ui",
      "nvim-neotest/nvim-nio",
    },
    config = function()
      require "configs.dap"
    end,
  },

  {
    "leoluz/nvim-dap-go",
    ft = "go",
    dependencies = {
      "mfussenegger/nvim-dap",
    },
    opts = {},
  },

  -- golang
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-treesitter/nvim-treesitter",
      { "mason-org/mason.nvim", optional = true },
    },
    opts = {},
  },

  { "ngynkvn/gotmpl.nvim", opts = {} },

  -- cpp
  {
    "p00f/clangd_extensions.nvim",
    lazy = true,
  },

  {
    "Civitasv/cmake-tools.nvim",
    ft = { "c", "cpp", "objc", "objcpp", "cuda", "proto" },
  },
}

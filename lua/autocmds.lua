require "nvchad.autocmds"

local autocmd = vim.api.nvim_create_autocmd

autocmd("LspAttach", {
  desc = "Load clangd_extensions with clangd",
  callback = function(args)
    if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
      require "clangd_extensions"
      -- vim.api.nvim_del_augroup_by_name "clangd_extensions"
    end
  end,
})

autocmd("LspAttach", {
  desc = "Load clangd_extensions with clangd",
  callback = function(args)
    if assert(vim.lsp.get_client_by_id(args.data.client_id)).name == "clangd" then
      require "nvchad.mappings"
      vim.keymap.set("n", "<leader>lw", "<Cmd>ClangdSwitchSourceHeader<CR>", { desc = "Switch source/header file" })
      require("which-key").add {
        { "<leader>lw", "<Cmd>ClangdSwitchSourceHeader<CR>", desc = "Switch source/header file" },
      }
    end
  end,
})

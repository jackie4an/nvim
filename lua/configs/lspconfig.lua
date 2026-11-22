require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "luals", "bashls", "jsonls", "qmlls", "clangd", "templ", "buf_ls" }

-- read :h vim.lsp.config for changing options of lsp servers
vim.lsp.config.bashls = {
  cmd = { "bash-language-server", "start" },
  filetypes = { "bash", "sh", "zsh" },
}

vim.lsp.config.buf_ls = {
  root_markers = { "buf.yaml", ".git", "go.mod" },
}

vim.lsp.enable(servers)

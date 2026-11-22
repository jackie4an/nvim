local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    json = { "prettier" },
    html = { "prettier" },
    template = { "prettier" },
    bash = { "beautysh" },
    zsh = { "beautysh" },
    qml = { "qmlformat" },
    go = {
      "gofumpt",
      "goimports",
      "golines",
    },
    c = {
      "clang_format",
    },
    cpp = {
      "clang_format",
    },
  },

  formatters = {
    qmlformat = {
      command = "/usr/lib/qt6/bin/qmlformat",
      append_args = { "-w", "2" },
    },

    clang_format = {
      prepend_args = { "--style=file", "--fallback-style=Mozilla" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

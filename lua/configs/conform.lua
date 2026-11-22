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
    sql = {
      "pg_format",
    },
    pgsql = {
      "pg_format",
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

    pg_format = {
      prepend_args = { "-s", "2", "-W", "2" },
    },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

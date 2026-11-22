require "configs.dap.cpp"

local dap = require "dap"
local dapui = require "dapui"
local toolbar = require "configs.dap-toolbar"

dapui.setup()

vim.fn.sign_define("DapBreakpoint", {
  text = "●",
  texthl = "DapBreakpoint",
})

vim.fn.sign_define("DapStopped", {
  text = "➜",
  texthl = "DapStopped",
  linehl = "DapStoppedLine",
})

vim.fn.sign_define("DapBreakpointRejected", {
  text = "●",
  texthl = "DapBreakpointRejected",
})

vim.api.nvim_set_hl(0, "DapBreakpoint", {
  fg = "#dc322f",
})

vim.api.nvim_set_hl(0, "DapStopped", {
  fg = "#859900",
})

vim.api.nvim_set_hl(0, "DapBreakpointRejected", {
  fg = "#888888",
})

vim.api.nvim_set_hl(0, "DapStoppedLine", {
  bg = "#2a2a2a",
})

dap.listeners.before.attach.dapui_config = function()
  dapui.open()
  toolbar.open()
end

dap.listeners.before.launch.dapui_config = function()
  dapui.open()
  toolbar.open()
end

dap.listeners.before.event_terminated.dapui_config = function()
  dapui.close()
  toolbar.close()
end

dap.listeners.before.event_exited.dapui_config = function()
  dapui.close()
  toolbar.close()
end

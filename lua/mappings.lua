require "nvchad.mappings"

local map = vim.keymap.set
local dap = require "dap"
local dapui = require "dapui"
local daptoolbar = require "configs.dap-toolbar"
local wk = require "which-key"

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

-- F5 — Start / Continue
map("n", "<F5>", dap.continue, {
  desc = "Debug: Start / Continue",
})

-- F9 — Toggle breakpoint
map("n", "<F9>", dap.toggle_breakpoint, {
  desc = "Debug: Toggle breakpoint",
})

-- F7 — Step into
map("n", "<F7>", dap.step_into, {
  desc = "Debug: Step into",
})

-- F8 — Step over
map("n", "<F8>", dap.step_over, {
  desc = "Debug: Step over",
})

-- F10 — Step out
map("n", "<F10>", dap.step_out, {
  desc = "Debug: Step out",
})

-- F12 — Stop
map("n", "<F12>", dap.terminate, {
  desc = "Debug: Stop",
})

-- F6 — Toggle DAP UI
map("n", "<F6>", function()
  dapui.toggle()
  daptoolbar.toggle()
end, {
  desc = "Debug: Toggle UI",
})

wk.add {
  { "<leader>d", group = "Debug" },

  { "<leader>dc", dap.continue, desc = "Start / Continue    [F5]" },
  { "<leader>du", dapui.toggle, desc = "Toggle UI   [F6]" },
  { "<leader>di", dap.step_into, desc = "Step Into    [F7]" },
  { "<leader>do", dap.step_over, desc = "Step Over    [F8]" },
  { "<leader>db", dap.toggle_breakpoint, desc = "Breakpoint          [F9]" },
  { "<leader>dt", dap.step_out, desc = "Step Out    [F10]" },
  { "<leader>ds", dap.terminate, desc = "Stop        [F12]" },
}

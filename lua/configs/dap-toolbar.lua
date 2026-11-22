local M = {}

local win
local buf

function M.open()
  if win and vim.api.nvim_win_is_valid(win) then
    return
  end

  buf = vim.api.nvim_create_buf(false, true)

  local lines = {
    "  F5 │  F7 │  F8 │  F10 │ ● F9 │  F12 │  ⊞ F6 Toggle UI ",
  }

  vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

  local width = vim.fn.strdisplaywidth(lines[1]) + 2
  local height = 1

  win = vim.api.nvim_open_win(buf, false, {
    relative = "editor",
    width = width,
    height = height,
    row = vim.o.lines,
    col = math.floor((vim.o.columns - width) / 2),
    style = "minimal",
    border = "rounded",
    focusable = false,
  })

  vim.api.nvim_set_option_value("winhl", "Normal:NormalFloat", { win = win })
end

function M.close()
  if win and vim.api.nvim_win_is_valid(win) then
    vim.api.nvim_win_close(win, true)
  end

  win = nil
  buf = nil
end

function M.toggle()
  if win and vim.api.nvim_win_is_valid(win) then
    M.close()
  else
    M.open()
  end
end

return M

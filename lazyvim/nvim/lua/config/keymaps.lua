-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>wi", ":vertical resize +20<CR>", { desc = "Increase the split's width" })

local function code_get_reference()
  local ts_utils = require("nvim-treesitter.ts_utils")
  local current_node = ts_utils.get_node_at_cursor()
  if not current_node then
    return ""
  end
  local expr = current_node

  while expr do
    if expr:type() == "function_definition" then
      break
    end
    expr = expr:parent()
  end

  if not expr then
    return ""
  end

  local child = expr:child(1)
  print(ts_utils.get_node_text(child))
end
vim.keymap.set("n", "<leader>cgr", code_get_reference, { desc = "Get a reference to the current code" })

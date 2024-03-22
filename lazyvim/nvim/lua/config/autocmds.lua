-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("FixDotEnvCommentString", { clear = true }),
  -- callback = function(ev)
  --   vim.bo[ev.buf].commentstring = "# %s"
  -- end,
  command = "au BufRead,BufNewFile .env* set filetype=bash",
  pattern = { "env", "env-override" },
})

-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set(
  "n",
  "<leader>sx",
  require("telescope.builtin").resume,
  { noremap = true, silent = true, desc = "Resume" }
)

vim.keymap.set(
  "n",
  "<leader>unh",
  ":Telescope notify<CR>",
  { noremap = true, silent = true, desc = "Search Notification History" }
)

vim.keymap.set(
  "n",
  "<leader>yp",
  "<cmd>let @+ = expand('%:~:.')<cr> <cmd>lua require('notify')('Yanked relative path')<cr>",
  { noremap = true, silent = true, desc = "Relative Path" }
)

vim.keymap.set(
  "n",
  "<leader>yf",
  "<cmd>let @+ = expand('%:p')<cr> <cmd>lua require('notify')('Yanked full path')<cr>",
  { noremap = true, silent = true, desc = "Full Path" }
)

vim.keymap.set("n", "<leader>ya", "<cmd>%y<cr>", { noremap = true, silent = true, desc = "Buffer Contents" })

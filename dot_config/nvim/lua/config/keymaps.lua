-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local wk = require("which-key")

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

vim.keymap.set("n", "<C-c>", "<cmd>ChatGPT<CR>", { noremap = true, silent = true, desc = "ChatGPT" })

wk.register({
  c = {
    name = "ChatGPT",
    c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
    g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
    t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
    k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
    d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
    a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
    o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
    s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
    f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
    x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
    r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
    l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
  },
}, { prefix = "<leader>c" })

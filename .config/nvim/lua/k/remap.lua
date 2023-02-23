local map = vim.api.nvim_set_keymap
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
map("n", "n", [[:NvimTreeToggle]], {})
map("n", "l", [[:IndentLinesToggle]], {})

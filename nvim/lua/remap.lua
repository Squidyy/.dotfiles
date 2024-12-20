vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- configure move line up and down ( J, K in visual mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- toggle numberline and relative
--vim.keymap.set("n", "<leader>n", ":set nornu<CR>" )
--vim.keymap.set("n", "leader>N", ":set rnu<CR>")

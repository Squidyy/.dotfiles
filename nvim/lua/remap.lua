vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- configure move line up and down ( J, K in visual mode)
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- toggle numberline and relative
--vim.keymap.set("n", "<leader>n", ":set nornu<CR>" )
--vim.keymap.set("n", "leader>N", ":set rnu<CR>")

vim.keymap.set('n', '<C-j>', '<C-W>j', { silent = true })
vim.keymap.set('n', '<C-k>', '<C-W>k', { silent = true })
vim.keymap.set('n', '<C-l>', '<C-W>l', { silent = true })
vim.keymap.set('n', '<C-h>', '<C-W>h', { silent = true })

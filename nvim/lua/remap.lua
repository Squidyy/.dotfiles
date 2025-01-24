vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.keymap.set("n", "<leader>y", '"+y', opts)
vim.keymap.set("v", "<leader>y", '"+y', opts)

vim.keymap.set("n", "<leader>p", '"+p', opts)
vim.keymap.set("v", "<leader>p", '"+p', opts)

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

-- remaping our comment out code 'gcc/gbc' 'gc/gb' 
vim.keymap.set('n', '<leader>/', 'gcc', { remap = true })
vim.keymap.set('n', '<leader>//', 'gbc', { remap = true })
vim.keymap.set('v', '<leader>/', 'gc', { remap = true })
vim.keymap.set('v', '<leader>//', 'gb', { remap = true })

-- default hotkey reminders
-- 'n' 'gc', "code comments"
-- lua-tree 'n', '<leader> t', toggle tree

-- configure our tabs and indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true


-- set numbers on by default
vim.wo.relativenumber = true
vim.wo.number = true

-- Configure column colors so we have lenght markers
vim.cmd[[set colorcolumn=120]]
vim.cmd[[highlight ColorColumn ctermbg=0]]

-- configure our tabs and indents
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

-- set "padding" around current line, so we stay vertecally centered
vim.opt.scrolloff = 50

-- set numbers on by default
vim.wo.relativenumber = true
vim.wo.number = true
vim.api.nvim_set_hl(0, 'LineNr', { fg = "red"})

--set no wrap because im not a monster
vim.api.wrap = false
vim.wo.wrap = false

--vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = "green"})
vim.api.nvim_set_hl(0, 'LineNrAbove', { fg = "lightgreen"})
vim.api.nvim_set_hl(0, 'LineNrBelow', { fg = "lightgreen"})

-- Configure column colors so we have lenght markers
vim.cmd[[set colorcolumn=120]]
vim.cmd[[highlight ColorColumn ctermbg=0]]

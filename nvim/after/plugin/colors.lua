function ColorMyPencils(color)
	color = "cyberdream"
	vim.cmd.colorscheme(color)

	-- Set background to transparent
	vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
end

ColorMyPencils()

return {
  {    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      local cyber = require("cyberdream")
      cyber.setup({
        borderless_telescope = false,
        transparent = true,
      })
      -- Add a custom keybinding to toggle the colorscheme
      vim.api.nvim_set_keymap("n", "<leader>tt", ":CyberdreamToggleMode<CR>", { noremap = true, silent = true })

      -- call our colors to be applyed!!!
      vim.cmd.colorscheme("cyberdream")
    end
  }
}



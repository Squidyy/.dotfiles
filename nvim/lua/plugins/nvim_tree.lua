return {
  {
    'nvim-tree/nvim-tree.lua',
    version = "*",
    lazy = false,
    dependencies = {'nvim-tree/nvim-web-devicons'},
    config = function()
      local tree = require("nvim-tree")
      tree.setup({
        update_focused_file = {enable = true }
      })

      vim.keymap.set("n", "<leader>pv", "<Cmd>NvimTreeFocus<CR>")
      vim.keymap.set("n", "<leader>t", "<Cmd>NvimTreeToggle<CR>")

    end
  }
}

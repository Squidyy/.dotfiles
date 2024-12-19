return {
"neovim/nvim-lspconfig",
dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
}
config = {
 require("mason").setup()
require("mason-lspconfig").setup() 
}
}

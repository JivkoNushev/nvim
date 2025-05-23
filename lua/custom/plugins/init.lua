-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'williamboman/mason.nvim',
    config = function()
      require('mason').setup {}
    end,
  },
  {
    'williamboman/mason-lspconfig.nvim',
    config = function()
      require('mason-lspconfig').setup {
        ensure_installed = { 'lua_ls', 'clangd' },
      }
    end,
  },
  {
    'neovim/nvim-lspconfig',
    config = function()
      local lspconfig = require 'lspconfig'
      lspconfig.lua_ls.setup {}
      lspconfig.clangd.setup {} -- Minimal setup
    end,
  },
}

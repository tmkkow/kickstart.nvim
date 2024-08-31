-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- Oil file menager
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
      require('oil').setup()
      vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open parent direcI:tory' })
    end,
  },
  {
    'savq/melange-nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd.colorscheme 'melange'
      vim.opt.termguicolors = true
    end,
  },
}

-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'supermaven-inc/supermaven-nvim',
    config = function()
      require('supermaven-nvim').setup {}
    end,
  },
  {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = true,
    -- use opts = {} for passing setup options
    -- this is equalent to setup({}) function
  },
  {
    'NeogitOrg/neogit',
    dependencies = {
      'nvim-lua/plenary.nvim', -- required
      'sindrets/diffview.nvim', -- optional - Diff integration

      -- Only one of these is needed, not both.
      'nvim-telescope/telescope.nvim', -- optional
    },
    config = function()
      local neogit = require 'neogit'
      neogit.setup {}

      local open = function()
        neogit.open { kind = 'split' }
      end

      vim.keymap.set('n', '<leader>gg', open, { desc = 'Show git status' })
    end,
  },
  {
    'windwp/nvim-ts-autotag',
    event = 'InsertEnter',
    config = function()
      require('nvim-ts-autotag').setup()
    end,
  },
}

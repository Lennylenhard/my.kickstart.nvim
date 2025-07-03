-- lua/kickstart/plugins/neo-tree.lua

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    -- This single keybinding will now toggle neo-tree
    {
      '<leader>e',
      function()
        -- The command to toggle neo-tree.
        -- It will open it if it's closed, and close it if it's open.
        require('neo-tree.command').execute { toggle = true }
      end,
      desc = 'Toggle file [E]xplorer',
    },
  },
  -- We no longer need the mapping inside opts, so it has been removed.
  opts = {
    filesystem = {
      window = {
        mappings = {
          -- Previous mapping removed from here
        },
      },
    },
  },
}

-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
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
    { '<leader>e', ':Neotree toggle<CR>', desc = '[e] NeoTree', silent = true },
    { '<leader>E', ':Neotree toggle dir=%:p:h<CR>', desc = '[E] NeoTree (relative to buf)', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}

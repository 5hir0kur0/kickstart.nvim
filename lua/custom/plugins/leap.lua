return {
  'ggandor/leap.nvim',
  config = function()
    vim.keymap.set({ 'n', 'x', 'o' }, 'gw', '<Plug>(leap)', { desc = '[G]oto [W]ord' })
  end,
}

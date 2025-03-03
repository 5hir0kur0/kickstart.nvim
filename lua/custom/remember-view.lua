-- Automatically save the view (cursor position, folds, etc.), except for blacklisted filetypes/buftypes
local filetype_blacklist = { gitcommit = true, man = true }
local buftype_blacklist = { terminal = true, help = true }

local function should_save_view()
  local ft = vim.bo.filetype
  local bt = vim.bo.buftype
  return not filetype_blacklist[ft] and not buftype_blacklist[bt] and vim.fn.expand '%' ~= ''
end

local group = vim.api.nvim_create_augroup('AutoSaveFolds', { clear = true })

vim.api.nvim_create_autocmd('BufWinLeave', {
  group = group,
  pattern = '*',
  callback = function()
    if should_save_view() then
      vim.cmd 'mkview'
    end
  end,
})

vim.api.nvim_create_autocmd('BufWinEnter', {
  group = group,
  pattern = '*',
  callback = function()
    if should_save_view() then
      vim.cmd 'silent! loadview'
    end
  end,
})

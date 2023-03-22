require('base')

vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = {"*.sql"},
  callback = function () vim.opt.expandtab = true end
})
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = {"*.go"},
  callback = function () vim.opt.expandtab = false end
})
vim.api.nvim_create_autocmd({'BufEnter', 'BufWinEnter'}, {
  pattern = {"*.ts", "*.tsx", "*.vue", "*.lua"},
  command = 'set shiftwidth=2',
})
vim.api.nvim_create_autocmd({ 'TermOpen' }, {
  pattern = '*',
  command = 'startinsert',
})

local init_fern = function()
  vim.opt.number = false
  vim.api.nvim_buf_set_keymap(0, 'n', '<C-h>', '<Plug>(fern-action-hidden:toggle)', {})
end
local fern_id = vim.api.nvim_create_augroup('fern-custom', {})
vim.api.nvim_create_autocmd({'FileType'}, {
  pattern = 'fern',
  callback = init_fern,
  group = fern_id,
})

require('plugins')

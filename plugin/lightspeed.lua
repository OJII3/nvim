local status, lightspeed = pcall(require, 'lightspeed')
if not status then
  return
end

local keymap = vim.keymap

keymap.set('n', 's', '<Plug>Lightspeed_s', { noremap = true, silent = true })

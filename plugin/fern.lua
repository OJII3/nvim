local keymap = vim.keymap

keymap.set('n', '<Space>e', "<cmd>Fern . -drawer -toggle<CR>", { noremap = true, silent = true })

-- show hidden files by default
a = [[let g:fern#default_hidden = 1]]
vim.cmd(a)

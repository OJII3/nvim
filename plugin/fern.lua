local keymap = vim.keymap

keymap.set('n', '<Space>e', "<cmd>Fern . -drawer -toggle<CR>", { noremap = true, silent = true })

-- show hidden files by default
vim.cmd [[let g:fern#default_hidden = 1]]

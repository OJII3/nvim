local keymap = vim.keymap

keymap.set('n', '<C-n>', "<cmd>Fern . -drawer -toggle<CR>", { noremap = true, silent = true })

-- set show hidden files by default
vim.cmd [[let g:fern#default_hidden = 1]]

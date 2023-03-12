local keymap = vim.keymap

keymap.set('n', '<C-n>', "<cmd>Fern . -drawer -toggle<CR>", { noremap = true, silent = true })

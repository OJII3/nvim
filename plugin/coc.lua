--
-- trigger completion
vim.keymap.set('i', '<C-Space>', 'coc#refresh()', { expr = true, silent = true })
-- trigger snippet
vim.keymap.set('i', '<C-e>', '<Plug>(coc-snippet-expand-jump)')
-- rename
vim.keymap.set('n', 'rn', '<Plug>(coc-rename)', { silent = true })

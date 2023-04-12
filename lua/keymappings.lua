local keymap = vim.keymap

keymap.set('n', '<Space>e', "<cmd>Fern . -drawer -toggle<CR>", { noremap = true, silent = true })

keymap.set('n', '<Space>g', '<cmd>Telescope git_files<CR>', { noremap = true, silent = true })
keymap.set('n', '<Space>fd', '<cmd>Telescope find_files<CR>', { noremap = true, silent = true })
keymap.set('n', '<Space>h', '<cmd>Telescope oldfiles<CR>', { noremap = true, silent = true })
keymap.set('n', '<Space>r', '<cmd>Telescope live_grep<CR>', { noremap = true, silent = true })

keymap.set('n', 's', '<Plug>Lightspeed_s', { noremap = true, silent = true })


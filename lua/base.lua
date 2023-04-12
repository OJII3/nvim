vim.cmd("autocmd!")

local opt = vim.opt

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'
opt.fileformat = 'unix'
opt.number = true
opt.relativenumber = false
opt.mouse = 'a'
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.breakindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 2
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'bash'
opt.inccommand = 'split'
opt.ignorecase = true
opt.smarttab = true
opt.shiftwidth = 2
opt.tabstop = 2
opt.wrap = false
opt.helplang = 'en'
opt.updatetime = 300
opt.showtabline = 2
opt.clipboard = 'unnamedplus'
opt.termguicolors = true
opt.signcolumn = 'yes'
opt.hidden = true
opt.swapfile = false
opt.wrap = true
opt.pumblend = 7

-- Python3
-- vim.cmd([[
--     let g:python3_host_prog = '/usr/bin/python3'
-- ]])
-- 不可視文字を非表示(colorscheme用)
opt.list = false


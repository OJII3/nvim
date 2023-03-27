-- auto bootstrap lazy.nvim ======================================================

local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- setup lazy.nivm ==========================================================

vim.g.mapleader = ' ' -- make sure to set `mapleader` before lazy so your mappings are correct

require('lazy').setup({
  'folke/which-key.nvim',
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
  'folke/neodev.nvim',
  'nvim-lua/plenary.nvim',
  {
    'EdenEast/nightfox.nvim',
    init = function() vim.cmd[[colorscheme dayfox]] end,
  },
  'kyazdani42/nvim-web-devicons',
  'nvim-lualine/lualine.nvim', -- Statusline
  'lambdalisue/fern.vim',
  'lambdalisue/nerdfont.vim',
  -- lsp
  {
    'neoclide/coc.nvim',
    branch = 'release',
  },
  'neovim/nvim-lspconfig',
  'onsails/lspkind-nvim',
  'L3MON4D3/LuaSnip',
  'hrsh7th/nvim-cmp',
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-vsnip',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/cmp-nvim-lsp-signature-help',
  'onsails/lspkind.nvim',
  {
    'windwp/nvim-autopairs',
    init = function() require('nvim-autopairs').setup() end,
  },
  -- 'windwp/nvim-ts-autotag',
  'terrortylor/nvim-comment',
  'kylechui/nvim-surround',
  'lewis6991/gitsigns.nvim',
  'nvim-telescope/telescope.nvim',
  -- 'andymass/vim-matchup',
  'ggandor/lightspeed.nvim',
  {
    'glepnir/lspsaga.nvim',
    branch = 'main',
  },
  {
    'nvim-treesitter/nvim-treesitter',
    init = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  },
  'github/Copilot.vim',
  'ryicoh/deepl.vim',
  'haya14busa/vim-edgemotion',
  'tpope/vim-commentary',
})

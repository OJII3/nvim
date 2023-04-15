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
  { 'folke/which-key.nvim' },
  { 'folke/neoconf.nvim', cmd = 'Neoconf' },
  { 'nvim-lua/plenary.nvim' },
  -- colorscheme
  { 'folke/tokyonight.nvim' },
  { 'EdenEast/nightfox.nvim' },
  { 'kyazdani42/nvim-web-devicons'},
  { 'nvim-lualine/lualine.nvim' },
  { 'lambdalisue/nerdfont.vim' },
  { 'lambdalisue/fern.vim' },
  { 'lambdalisue/fern-git-status.vim' },
  { 'neoclide/coc.nvim', branch = 'release' },
  -- lsp
  -- { 'neovim/nvim-lspconfig' },
  -- { 'jose-elias-alvarez/null-ls.nvim' },
  -- { 'williamboman/mason-lspconfig.nvim' },
  -- { 'onsails/lspkind-nvim' },
  -- { 'hrsh7th/nvim-cmp' },
  -- { 'hrsh7th/cmp-nvim-lsp' },
  -- { 'hrsh7th/cmp-vsnip' },
  -- { 'hrsh7th/cmp-buffer' },
  -- { 'hrsh7th/cmp-path' },
  -- { 'hrsh7th/cmp-cmdline' },
  -- { 'hrsh7th/cmp-nvim-lsp-signature-help' },
  -- { 'onsails/lspkind.nvim' },
  -- { 'williamboman/mason.nvim', build = ":MasonUpdate" },
  { 'L3MON4D3/LuaSnip' },
  { 'windwp/nvim-autopairs', init = function() require('nvim-autopairs').setup() end },
  { 'kylechui/nvim-surround' },
  { 'lewis6991/gitsigns.nvim' },
  { 'nvim-telescope/telescope.nvim' },
  { 'windwp/nvim-ts-autotag' },
  { 'ggandor/lightspeed.nvim' },
  { 'glepnir/lspsaga.nvim', branch = 'main' },
  { 'nvim-treesitter/nvim-treesitter', init = function() require('nvim-treesitter.install').update({ with_sync = true }) end },
  { 'github/Copilot.vim', init = function() vim.cmd([[ let g:copilot_filetypes = { 'markdown': v:true }]]) end },
  { 'ryicoh/deepl.vim' },
  { 'haya14busa/vim-edgemotion' },
  { 'tpope/vim-commentary' },
  { 'johngrib/vim-game-code-break' }
})

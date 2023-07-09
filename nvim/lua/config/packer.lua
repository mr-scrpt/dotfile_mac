-- )This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  use {
    'nvim-telescope/telescope.nvim', tag = '0.1.1',
    requires = { { 'nvim-lua/plenary.nvim', "nvim-telescope/telescope-live-grep-args.nvim" } },
    config = function()
      require("telescope").load_extension("live_grep_args")
    end
  }
  use { "nvim-telescope/telescope-file-browser.nvim" }
  use 'nvim-tree/nvim-web-devicons'
  -- use { "kyazdani42/nvim-web-devicons" }
  use {"christoomey/vim-tmux-navigator"}
  use({ 'nvim-telescope/telescope-fzf-native.nvim', run = 'make' })
  -- use({
  --   'Mofiqul/dracula.nvim',
  --   as = 'dracula',
  --   config = function()
  --     require("dracula").setup()
  --     vim.cmd('colorscheme dracula')
  --   end
  -- })
  use { "catppuccin/nvim", as = "catppuccin" }
  -- use 'sbdchd/neoformat' -- Prettier plugi
  -- use 'prettier/vim-prettier'
  -- use({
  --   'prettier/vim-prettier',
  --   run = 'yarn install --frozen-lockfile --production',
  -- })
  -- use 'dense-analysis/ale'
  --  Plug 'tweekmonster/django-plus.vim', { 'for': ['python', 'htmldjango', 'html'] }
  -- use 'othree/html5.vim'
  -- use 'lumiliet/vim-twig'
  use('digitaltoad/vim-pug')
  -- use('mattn/emmet-vim')
  use('tpope/vim-commentary')
  use('alvan/vim-closetag')
  use {
	  "windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
  }
  use('ThePrimeagen/harpoon')
  use('AndrewRadev/tagalong.vim')
  use('mbbill/undotree')
  use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
  use('nvim-treesitter/playground')
  use('MattesGroeger/vim-bookmarks')
  use {
    'VonHeikemen/lsp-zero.nvim',
    -- branch = 'v1.x',
    requires = {
      -- LSP Support
      { 'neovim/nvim-lspconfig' },
      { 'williamboman/mason.nvim' },
      { 'williamboman/mason-lspconfig.nvim' },

      -- Autoimport
      -- {'jose-elias-alvarez/nvim-lsp-ts-utils'},

      -- Autocompletion
      { 'hrsh7th/nvim-cmp' },
      { 'hrsh7th/cmp-buffer' },
      { 'hrsh7th/cmp-path' },
      {'saadparwaiz1/cmp_luasnip'},
      { 'hrsh7th/cmp-nvim-lsp' },
      { 'hrsh7th/cmp-nvim-lua' },
      -- { 'mattn/emmet-vim' },
      -- { 'dcampos/cmp-emmet-vim' },

      -- Snippets
      { 'L3MON4D3/LuaSnip' },
      -- {
      --   "L3MON4D3/LuaSnip",
      -- -- follow latest release.
      --   tag = "v1.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
      --   -- install jsregexp (optional!:).
      --   run = "make install_jsregexp"
      -- },
      { 'rafamadriz/friendly-snippets' },
      -- { 'SirVer/ultisnips' },
      -- { 'mlaursen/vim-react-snippets' },
      {'dsznajder/vscode-es7-javascript-react-snippets',
        run = 'yarn install --frozen-lockfile && yarn compile'
      }
    }
  }
  use('dense-analysis/ale')

  -- use('tweekmonster/django-plus.vim')

  -- use({ 'neoclide/coc.nvim', branch = 'release' })
  use('Yggdroot/indentLine')
  use('kdheepak/lazygit.nvim')
  -- use('ptzz/lf.vim')
  -- use({
  --   "ptzz/lf.vim",
  --   requires = { "voldikss/vim-floaterm" },
  -- })
  use('elzr/vim-json')
  -- use('github/copilot.vim')
  use {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua" },
    config = function ()
      require("copilot_cmp").setup()
    end
  }
  use {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    event = "InsertEnter",
          module = "copilot",
    config = function()
      require("copilot").setup({
        suggestion = { enabled = false },
        panel = { enabled = false },
      })
    end,
  }

  -- use('eshion/vim-sftp-sync')
  -- use('eshion/vim-sync')
  use('hesselbom/vim-hsftp')
  use('blueyed/smarty.vim')
  -- use('manzeloth/live-server')


  -- use('skywind3000/asyncrun.vim')
  -- use({
  --   "lmburns/lf.nvim",
  --   requires = { "nvim-lua/plenary.nvim", "akinsho/toggleterm.nvim" },
  -- })
  -- use({ 'yaegassy/coc-htmldjango', run = 'yarn install --frozen-lockfile' })



  -- use({
  --   'prettier/vim-prettier',
  --   run = 'yarn install --frozen-lockfile --production',
  -- })
end)

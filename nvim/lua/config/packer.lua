-- )This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Only required if you have packer configured as `opt`
-- vim.cmd [[packadd packer.nvim]]
return require('packer').startup(function(use)
    -- Packer can manage itself
    use {
        'wbthomason/packer.nvim',
        requires = 'WhoIsSethDaniel/mason-tool-installer.nvim'
    }

    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = {
            {
                'nvim-lua/plenary.nvim',
                "nvim-telescope/telescope-live-grep-args.nvim"
            }
        },
        config = function()
            require("telescope").load_extension("live_grep_args")
        end
    }
    use {"nvim-telescope/telescope-file-browser.nvim"}
    use 'nvim-tree/nvim-web-devicons'
    use {"christoomey/vim-tmux-navigator"}
    use({'nvim-telescope/telescope-fzf-native.nvim', run = 'make'})
    -- use({
    --   'Mofiqul/dracula.nvim',
    --   as = 'dracula',
    --   config = function()
    --     require("dracula").setup()
    --     vim.cmd('colorscheme dracula')
    --   end
    -- })
    use {"catppuccin/nvim", as = "catppuccin"}
    use('digitaltoad/vim-pug')
    -- use('tpope/vim-commentary')
    use {
        'numToStr/Comment.nvim',
        config = function() require('Comment').setup() end
    }
    use('alvan/vim-closetag')
    use {
        "windwp/nvim-autopairs",
        config = function() require("nvim-autopairs").setup {} end
    }
    use('ThePrimeagen/harpoon')
    use('AndrewRadev/tagalong.vim')
    use('mbbill/undotree')
    use({
        'nvim-treesitter/nvim-treesitter',
        requires = {{'JoosepAlviste/nvim-ts-context-commentstring'}},
        run = ':TSUpdate'
    })

    use({'rrethy/vim-hexokinase', run = 'make hexokinase'})

    -- require('packer').use({
    --     'weilbith/nvim-code-action-menu',
    --     cmd = 'CodeActionMenu'
    -- })
    use {
      "aznhe21/actions-preview.nvim",
      -- config = function()
      --   vim.keymap.set({ "v", "n" }, "<M-CR>", require("actions-preview").code_actions)
      -- end,
    }

    use('nvim-treesitter/playground')
    use('MattesGroeger/vim-bookmarks')
    use {
        'VonHeikemen/lsp-zero.nvim',
        requires = {
            -- LSP Support
            {'neovim/nvim-lspconfig'}, {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'}, -- Autoimport
            -- {'jose-elias-alvarez/nvim-lsp-ts-utils'},
            -- Autocompletion
            {'hrsh7th/nvim-cmp'}, {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'},
            {'saadparwaiz1/cmp_luasnip'}, {'hrsh7th/cmp-nvim-lsp'},
            {'hrsh7th/cmp-nvim-lua'}, -- Snippets
            {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'}, {
                'dsznajder/vscode-es7-javascript-react-snippets',
                run = 'yarn install --frozen-lockfile && yarn compile'
            }
        }
    }
    use('jose-elias-alvarez/null-ls.nvim')
    use {
        'prettier/vim-prettier',
        run = 'yarn install --frozen-lockfile --production'
    }
    -- use('dense-analysis/ale')

    -- use('tweekmonster/django-plus.vim')

    -- use({ 'neoclide/coc.nvim', branch = 'release' })
    use('Yggdroot/indentLine')
    use('kdheepak/lazygit.nvim')
    use('elzr/vim-json')
    use('github/copilot.vim')
    use {
        "zbirenbaum/copilot-cmp",
        after = {"copilot.lua"},
        config = function() require("copilot_cmp").setup() end
    }
    use {
        "zbirenbaum/copilot.lua",
        cmd = "Copilot",
        event = "InsertEnter",
        module = "copilot",
        config = function()
            require("copilot").setup({
                suggestion = {enabled = false},
                panel = {enabled = false}
            })
        end
    }

    use('hesselbom/vim-hsftp')
    use('blueyed/smarty.vim')

    use('namadnuno/neoi18n')
end)

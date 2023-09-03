local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    {"catppuccin/nvim", as = "catppuccin"}, {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.1",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, -- {"cooperuser/glowbeam.nvim"},
    -- {"joshdick/onedark.vim"},
    -- {"rebelot/kanagawa.nvim"},
    {'rcarriga/nvim-notify'},
    {'VonHeikemen/fine-cmdline.nvim', dependencies = {{'MunifTanjim/nui.nvim'}}},
    {
        "aznhe21/actions-preview.nvim"
        -- config = function()
        --   vim.keymap.set({ "v", "n" }, "<M-CR>", require("actions-preview").code_actions)
        -- end,
    }, {
        "nvim-treesitter/nvim-treesitter",
        dependencies = {"JoosepAlviste/nvim-ts-context-commentstring"}
    }, {"neovim/nvim-lspconfig"}, {"hrsh7th/cmp-nvim-lsp"},
    {"hrsh7th/cmp-buffer"}, {"hrsh7th/cmp-path"}, {"hrsh7th/cmp-cmdline"},
    {"hrsh7th/nvim-cmp"}, {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lua'}, -- Snippets
    {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'}, {
        'dsznajder/vscode-es7-javascript-react-snippets',
        run = 'yarn install --frozen-lockfile && yarn compile'
    }, {"lewis6991/gitsigns.nvim"}, -- {'simrat39/symbols-outline.nvim'},
    -- {'onsails/lspkind.nvim'},
    {
        "nvim-lualine/lualine.nvim",
        dependencies = {
            "nvim-tree/nvim-web-devicons", "linrongbin16/lsp-progress.nvim"
        }
    }, {"nvim-tree/nvim-web-devicons"},
    {"williamboman/mason.nvim", build = ":MasonUpdate"},
    -- {"Djancyp/outline"},
    {"akinsho/toggleterm.nvim", version = "*", config = true},
    {"jose-elias-alvarez/null-ls.nvim"}, {"windwp/nvim-autopairs"},
    {
        "numToStr/Comment.nvim",
        config = function() require("Comment").setup() end
    }, {"windwp/nvim-ts-autotag"}, {
        "nvim-neo-tree/neo-tree.nvim",
        branch = "v2.x",
        dependencies = {
            "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons",
            "MunifTanjim/nui.nvim", "s1n7ax/nvim-window-picker"
        }
    },
    -- {"akinsho/bufferline.nvim", dependencies = {"nvim-tree/nvim-web-devicons"}},
    {"hrsh7th/cmp-nvim-lsp-signature-help"}, {
        "linrongbin16/lsp-progress.nvim",
        event = {"VimEnter"},
        dependencies = {"nvim-tree/nvim-web-devicons"},
        config = function() require("lsp-progress").setup() end
    }, {
        "glepnir/dashboard-nvim",
        event = "VimEnter",
        dependencies = {{"nvim-tree/nvim-web-devicons"}}
    }, {"folke/which-key.nvim"}, -- {"hrsh7th/vim-vsnip"},
    {"ThePrimeagen/harpoon"}, -- {"github/copilot.vim"},
    -- {'saadparwaiz1/cmp_luasnip'},
    -- {'L3MON4D3/LuaSnip'}, {'rafamadriz/friendly-snippets'},
    -- {"hrsh7th/vim-vsnip-integ"},
    {
        "folke/flash.nvim",
        event = "VeryLazy"
        -- @type Flash.Config
    }, {
        "kdheepak/lazygit.nvim",
        -- optional for floating window border decoration
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"mbbill/undotree"}
})

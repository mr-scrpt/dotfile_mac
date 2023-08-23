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

    {"catppuccin/nvim", as = "catppuccin"}, {'neovim/nvim-lspconfig'},
    {
        "jose-elias-alvarez/null-ls.nvim",
        dependencies = {"nvim-lua/plenary.nvim"}
    }, {"williamboman/mason.nvim"}, {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-buffer'}, {'hrsh7th/cmp-path'}, {'hrsh7th/cmp-cmdline'},
    {'hrsh7th/nvim-cmp'}, {"hrsh7th/cmp-nvim-lsp"},
    {"aznhe21/actions-preview.nvim"}
})

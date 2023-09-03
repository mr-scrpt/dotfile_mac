-- Basic config
require("core.plugin")
require("core.mapping")
require("core.color")
require("core.config")

-- Plugins config
require("plugin.telescope")
require("plugin.lsp")

-- require("plugin.symbols-outline")
-- require("plugin.lsp-kind")

require("plugin.mason")
require("plugin.luasnip")
require("plugin.cmp")
require("plugin.emmet")

-- require("plugin.copilot")
require("plugin.harpoon")
require("plugin.null-ls")
require("plugin.lualine")
require("plugin.gitsigns")
require("plugin.treesitter")
require("plugin.toggle-term")

-- require("plugin.outline")

require("plugin.autopairs")
require("plugin.comment-vim")
require("plugin.autotag")
require("plugin.buffer-line")
require("plugin.neotree")
require("plugin.dashboard")
require("plugin.which-key")
require("plugin.flash")
require("plugin.lazygit")
require("plugin.undotree")
require("plugin.notify")
require("plugin.cmd")

-- Theme
require("theme.catppuccin")
require("theme.color")

local augroup = vim.api.nvim_create_augroup
local mrgroup = augroup('mr', {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup('HighlightYank', {})

function R(name) require("plenary.reload").reload_module(name) end

autocmd('TextYankPost', {
    group = yank_group,
    pattern = '*',
    callback = function()
        vim.highlight.on_yank({higroup = 'IncSearch', timeout = 100})
    end
})

autocmd({"BufWritePre"},
        {group = mrgroup, pattern = "*", command = [[%s/\s\+$//e]]})

vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

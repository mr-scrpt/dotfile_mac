-- Basic config
require("core.plugin")
require("core.mapping")
require("core.color")
require("core.config")

-- Plugins config
require("plugin.telescope")
require("plugin.lsp")
require("plugin.mason")
require("plugin.cmp")
require("plugin.copilot")
require("plugin.harpoon")
require("plugin.null-ls")
require("plugin.lualine")
require("plugin.gitsigns")
require("plugin.treesitter")
require("plugin.toggle-term")
require("plugin.outline")

require("plugin.autopairs")
require("plugin.comment-vim")
require("plugin.autotag")
require("plugin.buffer-line")
require("plugin.neotree")
require("plugin.dashboard")
require("plugin.which-key")

-- Theme
require("theme.catppuccin")

local augroup = vim.api.nvim_create_augroup
local mrgroup = augroup("mr", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

function R(name)
	require("plenary.reload").reload_module(name)
end

autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({ higroup = "IncSearch", timeout = 100 })
	end,
})

autocmd({ "BufWritePre" }, { group = mrgroup, pattern = "*", command = [[%s/\s\+$//e]] })

-- require("window-picker").setup({
-- 	autoselect_one = false,
-- 	include_current = false,
-- 	filter_rules = {
-- 		bo = {
-- 			filetype = { "neo-tree", "neo-tree-popup", "notify" },
-- 			buftype = { "terminal", "quickfix" },
-- 		},
-- 	},
-- 	other_win_hl_color = "#e35e4f",
-- })
vim.cmd([[ let g:neo_tree_remove_legacy_commands = 1 ]])

vim.fn.sign_define("DiagnosticSignError", { text = " ", texthl = "DiagnosticSignError" })
vim.fn.sign_define("DiagnosticSignWarn", { text = " ", texthl = "DiagnosticSignWarn" })
vim.fn.sign_define("DiagnosticSignInfo", { text = " ", texthl = "DiagnosticSignInfo" })
vim.fn.sign_define("DiagnosticSignHint", { text = "", texthl = "DiagnosticSignHint" })

require("neo-tree").setup({
	buffers = {
		follow_current_file = {
			enabled = true, -- This will find and focus the file in the active buffer every time
			--              -- the current file is changed while the tree is open.
			leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
		},
	},
})

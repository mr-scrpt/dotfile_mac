return {
	"mbbill/undotree",
	event = { "BufReadPre", "BufNewFile" },

	config = function()
		vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)
		vim.cmd([[
      let g:undotree_SetFocusWhenToggle = 1
    ]])
	end,
}

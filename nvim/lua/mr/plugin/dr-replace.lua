return {
	"chiedo/vim-dr-replace",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		vim.keymap.set("n", "<leader>r", ":Dr ")
		vim.keymap.set("n", "<leader>R", ":DrAll ")
	end,
}

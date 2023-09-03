return {
	"kdheepak/lazygit.nvim",
	-- optional for floating window border decoration
	dependencies = { "nvim-lua/plenary.nvim" },
	event = { "VeryLazy" },
	config = function()
		vim.keymap.set("n", "<leader>gg", ":LazyGit<CR>", { noremap = true, silent = true })
	end,
}

return {
	"ThePrimeagen/harpoon",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	config = function()
		local mark = require("harpoon.mark")
		local ui = require("harpoon.ui")
		-- set keymaps
		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>a", mark.add_file)
		keymap.set("n", "<leader>hl", ui.toggle_quick_menu)

		-- keymap.set(
		--   "n",
		--   "<leader>hm",
		--   "<cmd>lua require('harpoon.mark').add_file()<cr>",
		--   { desc = "Mark file with harpoon" }
		-- )
		-- keymap.set("n", "<leader>hn", "<cmd>lua require('harpoon.ui').nav_next()<cr>", { desc = "Go to next harpoon mark" })
		-- keymap.set(
		--   "n",
		--   "<leader>hp",
		--   "<cmd>lua require('harpoon.ui').nav_prev()<cr>",
		--   { desc = "Go to previous harpoon mark" }
		-- )
	end,
}

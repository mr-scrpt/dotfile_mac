return {
	"NvChad/nvterm",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local terminal = require("nvterm")
		local term = require("nvterm.terminal")
		terminal.setup()

		local key = vim.keymap
		key.set({ "n", "t" }, "<leader>tv", function()
			term.toggle("vertical")
		end)
		key.set({ "n", "t" }, "<leader>th", function()
			term.toggle("horizontal")
		end)
		key.set({ "n", "t" }, "<leader>tf", function()
			term.toggle("float")
		end)
	end,
}

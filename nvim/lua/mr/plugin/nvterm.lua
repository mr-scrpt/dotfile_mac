return {
	"NvChad/nvterm",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local terminal = require("nvterm")
		local term = require("nvterm.terminal")
		terminal.setup({
			terminals = {
				shell = vim.o.shell,
				list = {},
				type_opts = {
					float = {
						relative = "editor",
						row = 0.2,
						col = 0.2,
						width = 0.6,
						height = 0.5,
						border = "single",
					},
					horizontal = { location = "rightbelow", split_ratio = 0.4, border = "single" },
					vertical = { location = "rightbelow", split_ratio = 0.5, border = "single" },
				},
			},
			behavior = {
				autoclose_on_quit = {
					enabled = false,
					confirm = true,
				},
				close_on_exit = true,
				auto_insert = true,
			},
		})

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

		key.set("t", "<C-x>", vim.api.nvim_replace_termcodes("<C-\\><C-N>", true, true, true))
	end,
}

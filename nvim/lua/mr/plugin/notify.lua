return {
	"rcarriga/nvim-notify",
	event = "VeryLazy",
	config = function()
		-- local async = require("plenary.async")
		-- local notify = require("notify").async

		vim.opt.termguicolors = true
		vim.notify = require("notify")

		vim.notify.setup({ background_colour = "#000000" })
		-- local keymap = vim.keymap -- for conciseness
		-- keymap.set(
		-- 	"n",
		-- 	"<leader>cn",
		-- 	async.run(function()
		-- 		notify("Let's wait for this to close").events.close()
		-- 		notify("It closed!")
		-- 	end),
		-- 	{ desc = "Close notifycation" }
		-- )
	end,
}

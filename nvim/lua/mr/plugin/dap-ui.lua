return {
	"rcarriga/nvim-dap-ui",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		require("dapui").setup()

		local dap, dapui = require("dap"), require("dapui")

		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>bu", dapui.toggle)

		dap.listeners.after.event_initialized["dapui_config"] = function()
			dapui.open({})
		end
		dap.listeners.before.event_terminated["dapui_config"] = function()
			dapui.close({})
		end
		dap.listeners.before.event_exited["dapui_config"] = function()
			dapui.close({})
		end
	end,
	dependencies = {
		"mfussenegger/nvim-dap",
	},
}

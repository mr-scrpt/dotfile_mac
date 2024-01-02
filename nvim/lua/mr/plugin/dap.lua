return {
	"mfussenegger/nvim-dap",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local ok, dap = pcall(require, "dap")

		local keymap = vim.keymap -- for conciseness
		keymap.set("n", "<leader>bb", dap.toggle_breakpoint)
		keymap.set("n", "<leader>bs", dap.continue)
		keymap.set("n", "<leader>bn", dap.step_over)
		keymap.set("n", "<leader>bc", dap.clear_breakpoints)

		if not ok then
			return
		end
		dap.configurations.typescript = {
			{
				type = "node2",
				name = "node attach",
				request = "attach",
				program = "${file}",
				cwd = vim.fn.getcwd(),
				sourceMaps = true,
				protocol = "inspector",
			},
		}
		dap.adapters.node2 = {
			type = "executable",
			command = "node-debug2-adapter",
			args = {},
		}
	end,
	dependencies = {
		"mxsdev/nvim-dap-vscode-js",
	},
}

return {
	"windwp/nvim-ts-autotag",
	event = { "InsertEnter" },
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
	},
	config = function()
		-- import nvim-autopairs
		local autotag = require("nvim-ts-autotag")

		-- configure autopairs
		autotag.setup()
	end,
}

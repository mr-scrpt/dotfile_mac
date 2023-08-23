require('catppuccin').setup({
    disable_background = true,
    transparent_background = true,
})


function ColorMyPencils(color)
	color = color or "catppuccin"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
	vim.api.nvim_set_hl(0, "Search", { bg = "none" })
	vim.api.nvim_set_hl(0, "ColorColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
	vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = "#ff79c6" })
	vim.api.nvim_set_hl(0, "TelescopePromptCounter", { fg = "none" })

end

ColorMyPencils()

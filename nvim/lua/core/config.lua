-- vim.g.node_host_prog = "~/.nvm/versions/node/v18.16.0/bin/node"
vim.wo.number = true
vim.wo.relativenumber = true

vim.g.did_load_filetypes = 1
vim.g.formatoptions = "qrn1"
vim.opt.showmode = false
vim.opt.updatetime = 100
vim.wo.signcolumn = "yes"
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.wo.linebreak = true
vim.opt.virtualedit = "block"
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
-- vim.opt.shell = "/bin/zsh"

-- Mouse
vim.opt.mouse = "a"
vim.opt.mousefocus = true

-- Line Numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true
-- Clipboard
vim.opt.clipboard = "unnamedplus"

-- Shorter messages
vim.opt.shortmess:append("c")

-- Indent Settings
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

-- Fillchars
vim.opt.fillchars = {
	vert = "│",
	fold = "⠀",
	eob = " ", -- suppress ~ at EndOfBuffer
	-- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
	msgsep = "‾",
	foldopen = "▾",
	foldsep = "│",
	foldclose = "▸",
}

vim.cmd([[highlight clear LineNr]])
vim.cmd([[highlight clear SignColumn]])

vim.g.lsp_code_action_uis = "float"

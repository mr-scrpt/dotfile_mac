local lsp = require('lsp-zero').preset({})

lsp.set_preferences({
    suggest_lsp_servers = false,
    set_lsp_keymaps = false,
    sign_icons = {
        error = '☢️',
        warn = '⚠️',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client, bufnr)
  lsp.default_keymaps({buffer = bufnr})
  local opts = {buffer = bufnr, remap = false}
  vim.keymap.set("n", "gt", function() vim.lsp.buf.definition() end, opts)
  vim.keymap.set("n", "gk", function() vim.lsp.buf.hover() end, opts)
  vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
  vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
  vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
  vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
  vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
  vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
  vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
  vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
end)

local lspconfig = require('lspconfig')

lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()


local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local luasnip = require("luasnip")
-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippet/" })
require("luasnip.loaders.from_vscode").lazy_load()


--   פּ ﯟ   some other good icons
local kind_icons = {
	Text = "",
	Method = "m",
	Function = "",
	Constructor = "",
	Field = "",
	Variable = "",
	Class = "",
	Interface = "",
	Module = "",
	Property = "",
	Unit = "",
	Value = "",
	Enum = "",
	Keyword = "",
	Snippet = "",
	Color = "",
	File = "",
	Reference = "",
	Folder = "",
	EnumMember = "",
	Constant = "",
	Struct = "",
	Event = "",
	Operator = "",
	TypeParameter = "",
}



cmp.setup({
  snippet = {
		expand = function(args)
			luasnip.lsp_expand(args.body) -- For `luasnip` users.
		end,
	},

  sources = {
    {name = "luasnip"},
    {name = 'path'},
    {name = 'emmet_ls', keyword_length = 1 },
        -- {name = 'emmet-language-server', keyword_length = 4},
    {name = 'nvim_lsp', keyword_length = 1 },
    {name = 'copilot', keyword_length = 1 },
    {name = 'buffer',  keyword_length = 1 },
  },
  window = {
    documentation = {
      border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
    },
    completion = {
      border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
      winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None',
    }
  },

  formatting = {
		fields = { "kind", "abbr", "menu" },
		format = function(entry, vim_item)
			-- Kind icons
			vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
			-- vim_item.kind = string.format('%s %s', kind_icons[vim_item.kind], vim_item.kind) -- This concatonates the icons with the name of the item kind
			vim_item.menu = ({
				copilot = "[Copilot]",
				luasnip = "LuaSnip",
				nvim_lua = "[NVim Lua]",
				nvim_lsp = "[LSP]",
				buffer = "[Buffer]",
				path = "[Path]",
			})[entry.source.name]
			return vim_item
		end,
	},
  mapping = {
    ['<CR>'] = cmp.mapping.confirm({select = true}),
    ['<C-f>'] = cmp_action.luasnip_jump_forward(),
    ['<C-b>'] = cmp_action.luasnip_jump_backward(),
  },
  experimental = {
    ghost_text = true,
  },

  completete = false

})
vim.diagnostic.config({
    virtual_text = true
})

-- lsp.on_attach(function(_, bufnr)
--   local opts = {buffer = bufnr, remap = false}

--   vim.keymap.set("n", "gt", function() vim.lsp.buf.definition() end, opts)
--   vim.keymap.set("n", "gk", function() vim.lsp.buf.hover() end, opts)
--   vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--   vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
--   vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
--   vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)
--   vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, opts)
--   vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, opts)
--   vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, opts)
--   vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, opts)
-- end)

-- lsp.setup()

-- vim.diagnostic.config({
--     virtual_text = true
-- })

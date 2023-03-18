-- local lsp = require("lsp-zero")
-- -- local nvim_lsp = require('lspconfig')
-- -- nvim_lsp.stylelint_lsp.setup {
-- --   settings = {
-- --     stylelintplus = {
-- --       autoFixOnSave = true,
-- --       autoFixOnFormat = true,
-- --       -- other settings...
-- --     }
-- --   },
-- -- }
-- -- local nvim_lsp = require('lspconfig')
-- -- nvim_lsp.stylelint_lsp.setup {
-- --   settings = {
-- --   },
-- --   filetypes = {"njk", "nunjucks"}
-- -- }
-- lsp.preset("recommended")

-- lsp.ensure_installed({
--   'tsserver',
--   -- 'sumneko_lua',
--   -- 'html',
--   -- 'cssls',
--   -- 'cssmodules_ls',
-- })

-- -- Fix Undefined global 'vim'
-- -- lsp.configure('sumneko_lua', {
-- --     settings = {
-- --         Lua = {
-- --             diagnostics = {
-- --                 globals = { 'vim' }
-- --             }
-- --         }
-- --     }
-- -- })


-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
--   ['<C-j>'] = cmp.mapping.select_prev_item(cmp_select),
--   ['<C-k>'] = cmp.mapping.select_next_item(cmp_select),
--   ['<CR>'] = cmp.mapping.confirm({ select = true }),
--   ["<C-Space>"] = cmp.mapping.complete(),
--   -- ['gk'] = vim.lsp.buf.hover(),

-- })
-- lsp.setup_nvim_cmp({
--   mapping = cmp_mappings,
--   sources = {
--     -- { name = 'emmet_vim' },
--     { name = 'nvim_lsp' }
--   },
--   experimental = {
--     ghost_text = true,
--   },


--   completete = false
-- })

-- lsp.set_preferences({
--     suggest_lsp_servers = false,
--     set_lsp_keymaps = false,
--     sign_icons = {
--         error = '☢️',
--         warn = '⚠️',
--         hint = 'H',
--         info = 'I'
--     }
-- })

-- lsp.on_attach(function(_, bufnr)
--   local opts = {buffer = bufnr, remap = false}

--   vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
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

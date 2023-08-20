-- Setup mason so it can manage external tooling
require("mason").setup()

-- vim.lsp.handlers["textDocument/publishDiagnostics"] = vim.lsp.with(
--     vim.lsp.diagnostic.on_publish_diagnostics, {
--         virtual_text = false
--     }
-- )

local lsp = require('lsp-zero').preset({})

lsp.on_attach(function(client, bufnr)
    -- see :help lsp-zero-keybindings
    -- to learn the available actions
    local opts = {buffer = bufnr, remap = false}
    lsp.default_keymaps({buffer = bufnr})

    vim.keymap.set("n", "gt", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gk", function() vim.lsp.buf.hover() end, opts)

    vim.keymap.set("n", "dc", function()
        vim.diagnostic.open_float(0, {scope = "line"})
    end, opts)
    vim.keymap.set("n", "dn", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "dp", function() vim.diagnostic.goto_prev() end, opts)

    vim.keymap.set("n", "gr", require('telescope.builtin').lsp_references, {})
    -- vim.keymap
    --     .set("n", "<M-CR>", function() vim.lsp.buf.code_action() end, opts)
    -- vim.keymap
    --     .set("n", "<M-CR>", function ()
    --      vim.lsp.buf.execute_command('CodeActionMenu')
    --     end , opts)
    vim.keymap.set("n", "<M-CR>", require("actions-preview").code_actions)

    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end,
                   opts)

    vim.keymap.set("n", "<leader>vrn", function()
        vim.lsp.buf.rename()
        vim.cmd('silent! wa')
    end, opts)

    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end,
                   opts)

    vim.keymap.set("n", "<leader>vi", function()
        local params = {
            command = "_typescript.organizeImports",
            arguments = {vim.api.nvim_buf_get_name(0)},
            title = ""
        }
        vim.lsp.buf.execute_command(params)
    end, opts)

end)

-- When you don't have mason.nvim installed
-- You'll need to list the servers installed in your system
-- lsp.setup_servers({'tsserver', 'eslint'})
lsp.setup_servers({'tsserver'})

-- format
lsp.format_on_save({
    format_opts = {async = false, timeout_ms = 10000},
    servers = {
        ['null-ls'] = {
            'javascript', 'typescript', 'typescriptreact', 'javascriptreact',
            'json', 'lua', 'scss', 'html', 'css'
        }
    }
})

-- (Optional) Configure lua language server for neovim
require('lspconfig').lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

vim.diagnostic.config({
  virtual_text = false,
  signs = true,
  update_in_insert = false,
  underline = true,
  severity_sort = false,
  float = { border = "rounded" },
})
vim.o.updatetime = 250
vim.cmd [[autocmd CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
-- You need to setup `cmp` after lsp-zero
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local luasnip = require("luasnip")
-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippet/" })
-- require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load {
    paths = {"~/.config/nvim/user/snippets/"}
}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end
    },
    sources = {
        {name = "luasnip"}, {name = 'nvim_lsp'}, {name = 'path'},
        {name = 'emmet_ls'}
        -- {name = 'emmet-language-server', keyword_length = 4},
        -- {name = 'copilot'}, {name = 'buffer'}
    },
    window = {
        documentation = {
            border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'}
        },
        completion = {
            border = {'╭', '─', '╮', '│', '╯', '─', '╰', '│'},
            winhighlight = 'Normal:CmpPmenu,FloatBorder:CmpPmenuBorder,CursorLine:PmenuSel,Search:None'
        }
    },
    mapping = {
        -- `Enter` key to confirm completion
        ['<CR>'] = cmp.mapping.confirm({select = false}),

        -- Ctrl+Space to trigger completion menu
        ['<C-Space>'] = cmp.mapping.complete(),

        -- Navigate between snippet placeholder
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward()
    },
    diagnostics = {
        -- show source code of the diagnostic
        display = {
            sources = {"nvim_lsp"}
            -- show_code = true,
            -- show_diagnostic_autocmds = true,
            -- ignore_filename = true,
            -- diagnostics_debounce = 500,
            -- virtual_text = {
            --     prefix = "",
            --     spacing = 0,
            --     severity_limit = "Warning"
            -- },
            -- signs = true,
            -- underline = true
        }
    }
})

local null_ls = require("null-ls")

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.prettier,
        null_ls.builtins.formatting.stylelint,
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.diagnostics.eslint,
        null_ls.builtins.diagnostics.stylelint,
        null_ls.builtins.diagnostics.luacheck
    }
})

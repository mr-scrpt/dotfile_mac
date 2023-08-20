local lsp = require('lsp-zero').preset({})

lsp.set_preferences({
    suggest_lsp_servers = false,
    set_lsp_keymaps = false,
    sign_icons = {error = '☢️', warn = '⚠️', hint = 'H', info = 'I'}
})

lsp.ensure_installed({
    'lua_ls', 'tsserver', -- 'eslint',
    -- 'stylelint',
    -- 'html',
    -- 'prettier',
    'emmet_ls'
    -- 'cssls',
    -- 'cssmodules_ls',
})
-- local masontool = require('mason-tool-installer')
-- masontool.setup({
--     ensure_installed = {
--         'emmet-ls', 'eslint-lsp', 'json-lsp', 'lua-language-server',
--         'stylelint-lsp', 'typescript-language-server'
--
--     }
-- })

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({buffer = bufnr})
    local opts = {buffer = bufnr, remap = false}
    vim.keymap.set("n", "gt", function() vim.lsp.buf.definition() end, opts)
    vim.keymap.set("n", "gk", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("n", "<leader>vws",
                   function() vim.lsp.buf.workspace_symbol() end, opts)
    -- vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "dn", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "dp", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap
        .set("n", "<M-CR>", function() vim.lsp.buf.code_action() end, opts)
    -- vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end,
    --                opts)
    vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end,
                   opts)
    vim.keymap.set("n", "<leader>vrn", function()
        vim.lsp.buf.rename()
        vim.cmd('silent! wa')
    end, opts)
    -- vim.keymap.set("i", "<C-i>", function() vim.lsp.buf.signature_help() end,
    --                opts)

    vim.keymap.set("n", "<leader>vi", function()
        local params = {
            command = "_typescript.organizeImports",
            arguments = {vim.api.nvim_buf_get_name(0)},
            title = ""
        }
        vim.lsp.buf.execute_command(params)
    end, opts)

end)

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

local lspconfig = require('lspconfig')

-- emmet
-- local configs = require('lspconfig/configs')
local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities.textDocument.completion.completionItem.snippetSupport = true

lspconfig.emmet_ls.setup({
    -- on_attach = on_attach,
    capabilities = capabilities,
    filetypes = {
        'html', 'typescriptreact', 'javascriptreact', 'css', 'sass', 'scss',
        'less', 'lua'
    },
    init_options = {
        html = {
            options = {
                -- For possible options, see: https://github.com/emmetio/emmet/blob/master/src/config.ts#L79-L267
                ["bem.enabled"] = true
            }
        }
    }
})
lspconfig.lua_ls.setup(lsp.nvim_lua_ls())

lsp.setup()

local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()
local luasnip = require("luasnip")
-- require("luasnip.loaders.from_lua").load({ paths = "~/.config/nvim/snippet/" })
-- require("luasnip.loaders.from_vscode").lazy_load()
require("luasnip.loaders.from_vscode").lazy_load {
    paths = {"~/.config/nvim/user/snippets/"}
}

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
    TypeParameter = ""
}

cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body) -- For `luasnip` users.
        end
    },

    sources = {
        {name = "luasnip"}, {name = 'nvim_lsp'}, {name = 'path'},
        {name = 'emmet_ls'},
        -- {name = 'emmet-language-server', keyword_length = 4},
        {name = 'copilot'}, {name = 'buffer'}
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
        ['<CR>'] = cmp.mapping.confirm({select = true}),
        ['<C-f>'] = cmp_action.luasnip_jump_forward(),
        ['<C-b>'] = cmp_action.luasnip_jump_backward(),
        ["<C-a>"] = cmp.mapping {i = cmp.mapping.complete()}
    }

})

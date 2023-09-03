local builtin = require("telescope.builtin")
vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, {})
-- vim.keymap.set('n', '<Tab>', builtin.buffers, {})
vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
vim.keymap.set("n", "<leader>gb", builtin.git_branches, {})
vim.keymap.set("n", "<leader>gc", builtin.git_commits, {})
vim.keymap.set("n", "<leader>gs", builtin.lsp_document_symbols,
               {noremap = true, silent = true})
-- vim.keymap.set("n", "<leader>gs", builtin.git_status, {})
vim.keymap.set("n", "gr", builtin.lsp_references,
               {noremap = true, silent = true})
vim.keymap.set("n", "gd", builtin.lsp_definitions,
               {noremap = true, silent = true})

-- local fb_actions = require("telescope").extensions.file_browser.actions
require("telescope").setup({
    defaults = {
        file_ignore_patterns = {"node_modules"},
        mappings = {
            n = {["<leader>x"] = require("telescope.actions").delete_buffer},
            i = {
                ["<c-x>"] = "delete_buffer"
                -- ["<C-c>"] = fb_actions.create,
                -- ["<C-r>"] = fb_actions.rename
            }
        }
    }
    -- extensions = {
    -- 	file_browser = {
    -- 		theme = "ivy",
    -- 		-- disables netrw and use telescope-file-browser in its place
    -- 		hijack_netrw = true,
    -- 		grouped = true,
    -- 		git_status = false,
    -- 		hidden = true,
    -- 	},
    -- },
    -- pickers = {
    -- 	find_files = {
    -- 		-- hidden = true
    -- 	},
    -- },
})

-- require("telescope").load_extension("file_browser")
-- require("telescope").load_extension("fzf")
-- vim.api.nvim_set_keymap("n", "<leader>fo", ":Telescope buffers<cr>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>fp", ":Telescope file_browser<cr>", { noremap = true })
-- vim.api.nvim_set_keymap("n", "<leader>fc", ":Telescope file_browser path=%:p:h<cr>", { noremap = true })

-- }

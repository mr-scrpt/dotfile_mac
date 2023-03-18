local fb_actions = require "telescope".extensions.file_browser.actions
require('telescope').setup{
    defaults = {
      file_ignore_patterns = {"node_modules"},
      mappings = {
        n = {
          ['<leader>x'] = require('telescope.actions').delete_buffer,
        },
        i = {
          ["<c-x>"] = "delete_buffer",
          -- ["<C-c>"] = fb_actions.create,
          -- ["<C-r>"] = fb_actions.rename
        }
      }
    },
    extensions = {
      file_browser = {
        theme = "ivy",
        -- disables netrw and use telescope-file-browser in its place
        hijack_netrw = true,
        grouped = true,
        git_status = false,
        hidden = true
      },
    },
    pickers = {
      find_files = {
        -- hidden = true
      }
    }
  }



require("telescope").load_extension "file_browser"
require('telescope').load_extension('fzf')
vim.api.nvim_set_keymap(
  "n",
  "<leader>fo",
  ":Telescope buffers<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
  "n",
  "<leader>fp",
  ":Telescope file_browser<cr>",
  { noremap = true }
)
vim.api.nvim_set_keymap(
   "n",
   "<leader>fc",
  ":Telescope file_browser path=%:p:h<cr>",
   { noremap = true }
 )

-- vim.api.nvim_set_keymap(
--   "i",
--   "<c-d>",
--   ":Telescope delete_buffer",
--    { noremap = true }
-- )
-- require("telescope").setup {
--   pickers = {
--     buffers = {
--       show_all_buffers = true,
--       sort_lastused = true,
--       theme = "dropdown",
--       previewer = false,
--       mappings = {
--         i = {
--           ["<c-d>"] = "delete_buffer",
--         }
--       }
--     }
--   }
-- }

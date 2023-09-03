return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    -- "JoosepAlviste/nvim-ts-context-commentstring"
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
    {
      's1n7ax/nvim-window-picker',
      --tag = "v1.*",
      config = function()
        require'window-picker'.setup({
          autoselect_one = true,
          include_current = false,
          filter_rules = {
            -- filter using buffer options
            bo = {
              -- if the file type is one of following, the window will be ignored
              filetype = { 'neo-tree', "neo-tree-popup", "notify" },

              -- if the buffer type is one of following, the window will be ignored
              buftype = { 'terminal', "quickfix" },
            },
          },
          other_win_hl_color = '#e35e4f',
        })
      end,
    }
  },

  config = function()
    local neotree = require("neo-tree")
    neotree.setup({
      popup_border_style = "rounded",
      -- enable_git_status = true,
      -- enable_diagnostics = true,
      sources = { "filesystem", "buffers", "git_status" },
      source_selector = {
        winbar = true,
        content_layout = "center",
        sources = {
          { source = "filesystem"},
          { source = "buffers"},
          { source = "git_status"},
          -- { source = "document_symbols"},
        },
      },

      buffers = {
        follow_current_file = {
          enabled = true, -- This will find and focus the file in the active buffer every time
          --              -- the current file is changed while the tree is open.
          leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
        },
      },

    })
    local keymap = vim.keymap
    keymap.set("n", "<leader>e", ":Neotree float reveal<CR>")
    keymap.set("n", "<leader>E", ":Neotree right reveal<CR>")
    keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")

  end

}
--vim.keymap.set("n", "<leader>e", ":Neotree float reveal<CR>")
--vim.keymap.set("n", "<leader>E", ":Neotree right reveal<CR>")
--vim.keymap.set("n", "<leader>o", ":Neotree float git_status<CR>")


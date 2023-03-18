vim.cmd.colorscheme "catppuccin"

require("catppuccin").setup({
    flavour = "mocha", -- latte, frappe, macchiato, mocha
    transparent_background = true,
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    -- transparent_background = false,
    show_end_of_buffer = false, -- show the '~' characters after the end of buffers
    term_colors = false,
    dim_inactive = {
        enabled = false,
        shade = "dark",
        percentage = 0.15,
    },
    no_italic = false, -- Force no italic
    no_bold = false, -- Force no bold
    styles = {
        comments = { "italic" },
        conditionals = { "italic" },
        loops = {},
        functions = {},
        keywords = {},
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = {},
        operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
        cmp = true,
        gitsigns = true,
        nvimtree = true,
        telescope = true,
        notify = false,
        mini = false,
        -- For more plugins integrations please scroll down (https://github.com/catppuccin/nvim#integrations)
    },
})

-- setup must be called before loading
vim.cmd.colorscheme "catppuccin"


-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   event = "VeryLazy",
--   opts = {
--     flavour = "mocha", -- latte, frappe, macchiato, or mocha
--     transparent_background = true,
--     color_overrides = {
--       all = {
--         surface0 = "#444444",
--         surface1 = "#666666",
--         surface2 = "#a3a7bc",
--         surface3 = "#a3a7bc",
--       },
--     },
--     integrations = {
--       cmp = true,
--       gitsigns = true,
--       harpoon = true,
--       telescope = true,
--     },
--   },
-- }

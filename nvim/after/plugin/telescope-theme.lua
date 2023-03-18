-- local previewers = require('telescope.previewers')
--   local builtin = require('telescope.builtin')

--   -- Load nvim-web-devicons only when needed
--   local has_devicons, devicons = pcall(require, 'nvim-web-devicons')
--   local setup_devicons = function()
--     if has_devicons then
--       devicons.setup()
--     end
--   end

--   setup_devicons()

--   -- Use nvim-web-devicons as file previewer
--   previewers.new_termopen_previewer {
--     get_command = function(entry)
--       local result = {'bat', '--color=always', '--style=numbers', '--theme=Dracula', entry.path}
--       table.insert(result, 1, 'column')
--       return result
--     end
--   }



-- local colors = require("catppuccin.palettes").get_palette()
-- local TelescopeColor = {
-- 	TelescopeMatching = { fg = colors.flamingo },
-- 	TelescopeSelection = { fg = colors.text, bg = colors.surface0, bold = true },

-- 	TelescopePromptPrefix = { bg = colors.surface0 },
-- 	TelescopePromptNormal = { bg = colors.surface0 },
-- 	TelescopeResultsNormal = { bg = colors.mantle },
-- 	TelescopePreviewNormal = { bg = colors.mantle },
-- 	TelescopePromptBorder = { bg = colors.surface0, fg = colors.surface0 },
-- 	TelescopeResultsBorder = { bg = colors.mantle, fg = colors.mantle },
-- 	TelescopePreviewBorder = { bg = colors.mantle, fg = colors.mantle },
-- 	TelescopePromptTitle = { bg = colors.pink, fg = colors.mantle },
-- 	TelescopeResultsTitle = { fg = colors.mantle },
-- 	TelescopePreviewTitle = { bg = colors.green, fg = colors.mantle },
-- }

-- for hl, col in pairs(TelescopeColor) do
-- 	vim.api.nvim_set_hl(0, hl, col)
-- end
--
--
--
--
-- local M = {}

-- M.map = function(ss, opts)

--   return {
--     TelescopeMatching = { fg = ss.diagnostics.hint },
--     TelescopeSelection = { fg = ss.diagnostics.hint, bg = ss.bg.cursorline },

--     TelescopePromptTitle = { fg = ss.bg.floating, bg = ss.syntax.keyword, bold = true },
--     TelescopePromptPrefix = { fg = ss.diagnostics.hint },
--     TelescopePromptCounter = { fg = ss.diagnostics.hint },
--     TelescopePromptNormal = { bg = ss.bg.cursorline },
--     TelescopePromptBorder = { fg = ss.bg.cursorline, bg = ss.bg.cursorline },

--     TelescopeResultsTitle = { fg = ss.bg.floating, bg = ss.bg.floating, bold = true },
--     TelescopeResultsNormal = { bg = ss.bg.floating },
--     TelescopeResultsBorder = { fg = ss.bg.floating, bg = ss.bg.floating },

--     TelescopePreviewTitle = { fg = ss.bg.floating, bg = ss.syntax.string, bold = true },
--     TelescopePreviewNormal = { bg = ss.bg.floating },
--     TelescopePreviewBorder = { fg = ss.bg.floating, bg = ss.bg.floating },
--   }
-- end

-- return M

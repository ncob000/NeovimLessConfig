vim.opt.termguicolors = true -- Better colors
-- vim.cmd("colorscheme github_dark_high_contrast")
------------------------------------------------------------------------------------------------------
-- ZENBONES CONFIG:
-- The next function is only for configure the zenbones colorscheme
-- This function recived two arguments:
--
--          colorscheme = theme name
--          background  = background color (light, dark)
--
-- the arguments needs to pass in ' ' or " "
--function Colors(colorscheme, background)
--	vim.o.background = background
--	Org = "colorscheme theme"
--	New = string.gsub(Org, "theme", colorscheme) -- Remplacing theme for colorscheme variable content
--	vim.cmd(New) -- theme asignation
--end

-- Function calling (not loaded)
--vim.g.enfocado_style = "neon"
--Colors("enfocado", "dark")
------------------------------------------------------------------------------------------------------

------------------------------------------------------------------------------------------------------
-- KANAGAWA CONFIG:
-- just uncomment all the code block
-- kanagawa has three options the best is dragonr
-- vim.cmd("colorscheme kanagawa-wave")
-- vim.cmd("colorscheme kanagawa-dragon")
-- vim.cmd("colorscheme kanagawa-lotus")

-- overrides = function(colors)
--     local theme = colors.theme
--     return {

--         Pmenu = { fg = theme.ui.shade0, bg = theme.ui.bg_p1 },  -- add `blend = vim.o.pumblend` to enable transparency
--         PmenuSel = { fg = "NONE", bg = theme.ui.bg_p2 },
--         PmenuSbar = { bg = theme.ui.bg_m1 },
--         PmenuThumb = { bg = theme.ui.bg_p2 },
--        TelescopeTitle = { fg = theme.ui.special, bold = true },
--        TelescopePromptNormal = { bg = theme.ui.bg_p1 },
--        TelescopePromptBorder = { fg = theme.ui.bg_p1, bg = theme.ui.bg_p1 },
--        TelescopeResultsNormal = { fg = theme.ui.fg_dim, bg = theme.ui.bg_m1 },
--        TelescopeResultsBorder = { fg = theme.ui.bg_m1, bg = theme.ui.bg_m1 },
--        TelescopePreviewNormal = { bg = theme.ui.bg_dim },
--        TelescopePreviewBorder = { bg = theme.ui.bg_dim, fg = theme.ui.bg_dim },
--    }
--end
-------------------------------------------------------------------------------------------------------

-------------------------------------------------------------------------------------------------------
-- MATERIAL CONFIG:
--require('material').setup({
--    styles = { -- Give comments style such as bold, italic, underline etc.
--        comments = { italic = true },
--        strings = { --[[ bold = true ]] },
--        keywords = { --[[ underline = true ]] },
--        functions = { },
--        variables = { bold = true },
--        operators = {},
--        types = {},
--    },
--    plugins = { -- Uncomment the plugins that you use to highlight them
--        "gitsigns",
--        "illuminate",
--        "indent-blankline",
--        "nvim-cmp",
--        "nvim-web-devicons",
--       "telescope",
--        "trouble",
--    },
--})

--vim.g.material_style = "darker"
--vim.cmd 'colorscheme material'
--
-- Lua:
-- For dark theme (neovim's default)
vim.o.background = "dark"
local c = require("vscode.colors").get_colors()
require("vscode").setup({
	-- Alternatively set style in setup
	-- style = 'light'

	-- Enable transparent background
	transparent = true,

	-- Enable italic comment
	italic_comments = true,

	-- Disable nvim-tree background color
	disable_nvimtree_bg = true,

	-- Override colors (see ./lua/vscode/colors.lua)
	color_overrides = {
		vscLineNumber = "#FFFFFF",
	},

	-- Override highlight groups (see ./lua/vscode/theme.lua)
	group_overrides = {
		-- this supports the same val table as vim.api.nvim_set_hl
		-- use colors from this colorscheme by requiring vscode.colors!
		Cursor = { fg = c.vscDarkBlue, bg = c.vscLightGreen, bold = true },
	},
})
require("vscode").load()

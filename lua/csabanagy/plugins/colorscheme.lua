-- CATPUCCIN
-- return {
--   "catppuccin/nvim",
--   name = "catppuccin",
--   priority = 1000,
--   config = function()
--     require("catppuccin").setup({
--       flavour = "latte",
--       transparent_background = false,
--       custom_highlights = function(colors)
--         return {
--           -- Comment = { fg = colors.flamingo },
--           CursorLine = { bg = colors.mantle },
--         }
--       end,
--       styles = {
--         comments = { "italic" }, -- Change the style of comments
--         conditionals = { "italic" },
--         loops = { "italic" },
--         functions = {},
--         keywords = { "italic", "bold" },
--         strings = { "italic" },
--         variables = {},
--         numbers = {},
--         booleans = { "italic" },
--         properties = {},
--         types = { "bold" },
--         operators = {},
--         -- miscs = {}, -- Uncomment to turn off hard-coded styles,
--       },
--       integrations = {
--         nvimtree = true,
--         cmp = true,
--         treesitter = true,
--         indent_blankline = {
--           enabled = true,
--           -- scope_color = , -- catppuccin color (eg. `lavender`) Default: text
--           colored_indent_levels = false,
--         },
--       },
--     })
--     vim.cmd("colorscheme catppuccin")
--   end,
-- }
--
-- GRUBER_DARKER
--
-- return {
--   "blazkowolf/gruber-darker.nvim",
--   name = "gruber-darker",
--   priority = 1000,
--   config = function()
--     vim.cmd("colorscheme gruber-darker")
--   end,
-- }

-- AYU
--
-- return {
--   "Shatur/neovim-ayu",
--   name = "ayu",
--   priority = 1000,
--   config = function()
--     require("ayu").setup({
--       mirage = true, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
--       terminal = true, -- Set to `false` to let terminal manage its own colors.
--       overrides = {
--         Normal = { bg = "None" },
--         NormalFloat = { bg = "none" },
--         ColorColumn = { bg = "None" },
--         SignColumn = { bg = "None" },
--         Folded = { bg = "None" },
--         FoldColumn = { bg = "None" },
--         CursorLine = { bg = "None" },
--         CursorColumn = { bg = "None" },
--         VertSplit = { bg = "None" },
--       }, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
--     })
--     vim.cmd("colorscheme ayu-mirage")
--   end,
-- }
return {
  "p00f/alabaster.nvim",
  name = "alabaster",
  priority = 1000,
  config = function()
    vim.cmd("colorscheme alabaster")
  end,
}

-- return {
--   "folke/tokyonight.nvim",
--   config = function()
--     require("tokyonight").setup({
--       style = "night",
--       transparent = true,
--       terminal_colors = true,
--       styles = {
--         comments = { italic = true },
--         functions = { italic = true, bold = true },
--         keywords = { italic = true },
--         type = { italic = true, bold = true },
--         sidebars = "transparent",
--         floats = "transparent",
--       },
--       lualine_bold = true,
--     })
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }
--
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",
      transparent_background = false,
      custom_highlights = function(colors)
        return {
          Comment = { fg = colors.flamingo },
          CursorLine = { bg = colors.mantle },
        }
      end,
      styles = {
        comments = { "italic" },
        types = { "bold" },
        integrations = {
          nvimtree = true,
          cmp = true,
          treesitter = true,
          indent_blankline = {
            enabled = true,
            -- scope_color = , -- catppuccin color (eg. `lavender`) Default: text
            colored_indent_levels = false,
          },
        },
      },
    })
    vim.cmd("colorscheme catppuccin")
  end,
}

return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "night",
      transparent = true,
      terminal_colors = true,
      styles = {
        comments = { italic = true },
        functions = { italic = true },
        keywords = { italic = true },
        type = { italic = true, bold = true },
        sidebars = "transparent",
        floats = "transparent",
      },
      lualine_bold = true,
    })

    vim.cmd("colorscheme tokyonight")
  end,
}

-- return {
--   "sainnhe/everforest",
--   config = function()
--     vim.g.everforest_enable_italic = true
--     vim.g.everforest_diagnostic_text_highlight = true
--     vim.g.everforest_diagnostic_line_highlight = true
--     vim.g.everforest_transparent_background = true
--     vim.g.everforest_diagnostic_virtual_text = "colored"
--     vim.g.everforest_background = "hard"
--     vim.g.everforest_ui_contrast = "high"
--     vim.g.everforest_better_performance = true
--
--     vim.cmd("colorscheme everforest")
--   end,
-- }

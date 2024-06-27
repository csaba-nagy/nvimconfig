-- return {
--   "folke/tokyonight.nvim",
--   config = function()
--     require("tokyonight").setup({
--       style = "night",
--       transparent = false,
--       terminal_colors = true,
--       styles = {
--         comments = { italic = true },
--         functions = { italic = true },
--         keywords = { italic = true },
--         type = { italic = true, bold = true },
--       },
--       lualine_bold = true,
--     })
--
--     vim.cmd("colorscheme tokyonight")
--   end,
-- }
--
return {
  "lunarvim/horizon.nvim",
  config = function()
    vim.cmd("colorscheme horizon")
  end,
}

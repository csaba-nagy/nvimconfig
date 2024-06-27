return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 50,
        side = "right",
      },
      renderer = {
        group_empty = true,
      },
      filters = {
        dotfiles = true,
      },
    })

    vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
  end,
}

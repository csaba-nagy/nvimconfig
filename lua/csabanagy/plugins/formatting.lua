return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require("conform")

    conform.setup({
      formatters = {
        --        php = {
        --          command = "php-cs-fixer",
        --          args = {
        --            "fix",
        --            "--rules=@PSR12",
        --            "$FILENAME",
        --          },
        --          stdin = false,
        --        },
      },
      formatters_by_ft = {
        lua = { "stylua" },
        php = { "easy-coding-standard" },
        go = { "gofumpt" },
        html = { "prettier" },
      },
      format_on_save = {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      },
      log_level = vim.log.levels.WARN,
    })

    vim.keymap.set({ "n", "v" }, "<leader>mp", function()
      conform.format({
        lsp_fallback = true,
        async = false,
        timeout_ms = 1000,
      })
    end, { desc = "Format file or range (in visual mode)" })
  end,
}

local options = {
  formatters = {
    gofumpt = {
      command = vim.fn.expand("$HOME/go/bin/gofumpt"),     -- Adjust if needed
      args = { "-s" }
    },
    goimports = {
      command = vim.fn.expand("$HOME/go/bin/goimports"),   -- Adjust if needed
    },
    prettier = {
      command = "npx",
      args = { "prettier", "--stdin-filepath", "$FILENAME" },
      cwd = function(fname)
        return vim.fn.getcwd()  -- Run from project root
      end,    },
  },
  formatters_by_ft = {
    lua = { "stylua" },
    go = { "gofumpt", "goimports" },
    html = { "prettier" },
    css = { "prettier" },
    javascript = { "prettier" },
    -- css = { "prettier" },
    -- html = { "prettier" },
  },

  format_on_save = {
    --  These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options

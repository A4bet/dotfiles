require "nvchad.options"

-- add yours here!
vim.api.nvim_create_autocmd("BufWritePre", {
  pattern = {"*.go", "*.html", "*.css", "*.js", ".templ"},
  callback = function()
    require("conform").format({async = false})
  end,
})
-- local o = vim.o
-- o.cursorlineopt ='both' -- to enable cursorline!

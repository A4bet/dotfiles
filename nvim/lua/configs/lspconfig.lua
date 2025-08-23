require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "gopls", "htmx-lsp", "html-lsp", "tailwindcss-language-server", "templ", "lua-language-server"}
vim.lsp.enable(servers)

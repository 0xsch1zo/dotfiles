local null_ls = require("null-ls")
null_ls.setup({
    sources = {
        null_ls.builtins.diagnostics.golangci_lint,
        null_ls.builtins.formatting.clang_format,
        null_ls.builtins.formatting.stylua.with({
            extra_args = { "--indent-type Tabs", "--indent-width 4" }
        }),
    }
})

vim.keymap.set('n', '<leader>gf', vim.lsp.buf.format, {})
vim.cmd [[autocmd BufWritePre * lua vim.lsp.buf.format()]]

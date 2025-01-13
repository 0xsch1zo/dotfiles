require("mason").setup()

require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "neocmake", "gopls", "ts_ls"}
})

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require("lspconfig")["lua_ls"].setup({
    capabilities = capabilities,
    on_init = function(client)
        if client.workspace_folders then
            local path = client.workspace_folders[1].name
            if vim.loop.fs_stat(path .. '/.luarc.json') or vim.loop.fs_stat(path .. '/.luarc.jsonc') then
                return
            end
        end

        client.config.settings.Lua = vim.tbl_deep_extend('force', client.config.settings.Lua, {
            runtime = {
                version = 'LuaJIT'
            },
            workspace = {
                checkThirdParty = false,
                library = {
                    vim.env.VIMRUNTIME
                }
            }
        })
    end,
    settings = {
        Lua = {}
    }
})

require("lspconfig")["clangd"].setup({
    capabilities = capabilities,
    cmd = { "clangd", "--background-index", "--clang-tidy" }
})

require 'lspconfig'.neocmake.setup {
    capabilities = capabilities,
}

require 'lspconfig'.gopls.setup {
    capabilities = capabilities,
}

require 'lspconfig'.ts_ls.setup {
    capabilities = capabilities,
}

vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {})

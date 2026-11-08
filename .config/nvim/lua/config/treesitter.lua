require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "cpp", "go", "css", "html", "javascript", "html", "templ", "tsx" },
    highlight = { enable = true },
    indent = { enable = true },
})

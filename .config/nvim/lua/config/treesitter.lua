require("nvim-treesitter.configs").setup({
    ensure_installed = { "c", "lua", "cpp", "go", "css", "html", "javascript", "html" },
    highlight = { enable = true },
    indent = { enable = true },  
})

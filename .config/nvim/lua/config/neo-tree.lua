require("neo-tree").setup({
    filesystem = {
        filtered_items = {
            visible = true,
            hide_dotfiles = false,
            hide_gitignored = true
        }
    }
})
vim.keymap.set('n', '<C-n>', ':Neotree position=current<CR>', {})

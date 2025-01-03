require("tokyonight").setup({
  style = "night",
  transparent = true,
  -- disable italic for functions
  styles = {
    functions = {}
  },
})

vim.cmd[[colorscheme tokyonight]]


return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    flavour = "mocha", -- Catppuccin Mocha for dark theme
    background = { light = "latte", dark = "mocha" },
    transparent_background = false,
    term_colors = true,
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      treesitter = true,
      notify = true,
      mini = { enabled = true },
      telescope = true,
      which_key = true,
      lsp_trouble = true,
      lazygit = true,
    },
  },
}

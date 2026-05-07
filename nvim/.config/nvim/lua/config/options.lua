-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- macOS specific options
-- Removed invalid line: vim.g.mac clipboard

-- Better macOS integration
if vim.fn.has("mac") == 1 then
  -- Use pbcopy/pbpaste for clipboard
  vim.g.clipboard = {
    name = "macOS-clipboard",
    copy = {
      ["+"] = "pbcopy",
      ["*"] = "pbcopy",
    },
    paste = {
      ["+"] = "pbpaste",
      ["*"] = "pbpaste",
    },
    cache_enabled = 0,
  }
end

-- General options
vim.opt.clipboard = "unnamedplus" -- Sync with system clipboard
vim.opt.fixeol = false -- Don't add newline at end of file automatically
vim.opt.backup = false -- Don't create backup files
vim.opt.writebackup = false -- Don't create backup before overwriting
vim.opt.swapfile = false -- Don't use swap files

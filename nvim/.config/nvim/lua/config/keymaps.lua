-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- macOS specific keymaps
if vim.fn.has("mac") == 1 then
  -- Use Cmd+C/V for copy/paste in normal mode (if supported by terminal)
  -- Most terminals don't support this, but some do

  -- Quick access to macOS applications
  vim.keymap.set("n", "<leader>om", function()
    vim.fn.jobstart({ "open", "-a", "Messages" })
  end, { desc = "Open Messages app" })

  vim.keymap.set("n", "<leader>of", function()
    vim.fn.jobstart({ "open", vim.fn.expand("%:p") })
  end, { desc = "Open current file in default app" })

  vim.keymap.set("n", "<leader>od", function()
    vim.fn.jobstart({ "open", vim.fn.getcwd() })
  end, { desc = "Open current directory in Finder" })
end

-- Better navigation with Option key (macOS)
-- These work if your terminal sends the right escape sequences
vim.keymap.set("i", "<A-Left>", "<Esc>b", { desc = "Move word backward" })
vim.keymap.set("i", "<A-Right>", "<Esc>w", { desc = "Move word forward" })

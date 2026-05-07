-- Colorscheme is handled by LazyVim catppuccin extra

-- Line numbers
vim.opt.relativenumber = false
vim.opt.number = true

-- Indentation
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line wrapping
vim.opt.wrap = true
vim.opt.showbreak = "↪ "

-- System clipboard
vim.opt.clipboard = "unnamedplus"

-- Split behavior
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Python provider
vim.g.python3_host_prog = os.getenv("NVIM_PYTHON_PATH") or vim.fn.exepath("python3") or vim.fn.exepath("python")

-- LazyVim prettier config
vim.g.lazyvim_prettier_needs_config = false

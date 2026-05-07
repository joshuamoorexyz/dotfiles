# LazyVim Dotfiles

A personalized [LazyVim](https://www.lazyvim.org/) configuration for Neovim on macOS.

## Features

- Based on LazyVim starter template
- Pre-configured with common plugins and settings
- Lazy plugin management
- Ready-to-use out of the box
- **macOS optimized**:
  - System clipboard integration via pbcopy/pbpaste
  - macOS-specific keymaps and commands
  - Finder and app integration commands

## Installation

Clone this repository and run the install script:

```bash
git clone https://github.com/joshuamoorexyz/lazyvim-dotfiles.git
cd lazyvim-dotfiles
chmod +x install.sh
./install.sh
```

The install script will:
1. Check if Neovim is installed (installs via Homebrew if not)
2. Check if Git is installed (installs via Homebrew if not)
3. Backup your existing `~/.config/nvim` if present
4. Copy the new configuration to `~/.config/nvim`
5. Install lazy.nvim plugin manager if needed

## Post-Installation

After running the install script:

1. Start Neovim: `nvim`
2. Wait for plugins to install automatically
3. Restart Neovim after installation completes

## Structure

```
~/.config/nvim/
├── init.lua              # Entry point
├── lazyvim.json          # LazyVim configuration
├── lua/
│   ├── config/          # General configuration
│   │   ├── autocmds.lua
│   │   ├── keymaps.lua
│   │   ├── lazy.lua
│   │   └── options.lua
│   └── plugins/         # Plugin specifications
│       └── example.lua
└── lazy-lock.json       # Plugin version lockfile
```

## Customization

- Add plugins in `lua/plugins/`
- Modify options in `lua/config/options.lua`
- Add keymaps in `lua/config/keymaps.lua`
- Add autocmds in `lua/config/autocmds.lua`

## Requirements

- macOS
- [Homebrew](https://brew.sh) (for automatic Neovim installation)
- Neovim 0.9.0 or later
- Git

## License

MIT

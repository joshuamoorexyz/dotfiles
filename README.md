# Dotfiles

Unified dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/), riced with **Catppuccin Mocha** theme across all tools.

## Quick Start (New Mac)

```bash
# Install dependencies
brew install stow tmux neovim ghostty fzf ripgrep fd eza bat zoxide starship

# Clone this repo
git clone https://github.com/joshuamoorexyz/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow packages (symlinks configs to ~)
stow tmux
stow nvim
stow ghostty
stow zsh
stow git

# Install tmux plugins (inside tmux)
# Press prefix (Ctrl+a) + I to install TPM plugins

# Set JetBrainsMono Nerd Font in Ghostty preferences
```

## Packages

| Package | Description |
|---------|-------------|
| `tmux`  | tmux + Catppuccin Mocha, vim nav, fzf, session persistence |
| `nvim`  | LazyVim + Catppuccin Mocha, 30+ language extras, AI tools |
| `ghostty` | Ghostty + Catppuccin Mocha, JetBrainsMono Nerd Font, blur |
| `zsh`   | Modern zsh with eza/bat/fd/rg/zoxide aliases, Starship prompt |
| `git`   | Git config with useful aliases, osxkeychain, diff3 merge |

## Features

### Tmux (`Ctrl+a` prefix)
- **Catppuccin Mocha** theme with top status bar
- **Vim-style navigation**: `prefix + h/j/k/l` or `Alt+h/j/k/l` (no prefix)
- **Vim-style splits**: `prefix + |` (horizontal), `prefix + -` (vertical)
- **Session persistence**: Auto-save every 5 min, restores on tmux start
- **FZF integration**: `prefix + Ctrl+Space` for fuzzy tmux commands
- **Clipboard**: macOS pbcopy/pbpaste integration via TPM plugins
- **Resize panes**: `prefix + H/J/K/L` (capital = resize)
- **Swap panes**: `prefix + Ctrl+h/l/j/k`
- **Reload config**: `prefix + r`
- **Plugins**: tmux-resurrect, tmux-continuum, vim-tmux-navigator, tmux-fzf

### Neovim (LazyVim)
- **Catppuccin Mocha** colorscheme
- **30+ LazyVim extras** enabled: AI (Copilot, Sidekick), languages (Python, Go, Rust, TS, etc.), LSP, formatting, treesitter context
- **Seamless tmux navigation**: `Ctrl+h/j/k/l` works across nvim and tmux panes
- **Lazygit integration**: `<leader>gg`
- **Save with Ctrl+s** in all modes
- **Smart line wrapping** with `j/k` moving by visual line
- **Mason LSP manager** for language servers
- **Auto-formatting** with Prettier, Black, clang-format

### Ghostty Terminal
- **Catppuccin Mocha** theme with background blur (0.95 opacity)
- **JetBrainsMono Nerd Font** (14pt)
- **Vim-style split navigation**: `Ctrl+h/j/k/l` (no prefix needed)
- **Split shortcuts**: `Cmd+D` (auto), `Cmd+Shift+h/j/k/l` (directional)
- **Tab management**: `Cmd+Shift+Left/Right` to switch tabs
- **Font size**: `Cmd+=` (increase), `Cmd+-` (decrease), `Cmd+0` (reset)
- **Quick terminal**: `Cmd+Shift+Space` (dropdown terminal)
- **1M line scrollback**, shell integration with zsh
- **Notifications** on long command completion

### Zsh Shell
- **Modern CLI replacements**: `ls` → `eza`, `cat` → `bat`, `grep` → `rg`, `find` → `fd`
- **Smart directory jumping** with `zoxide` (`z` command)
- **FZF integration**: `Ctrl+R` (history), `Ctrl+T` (files)
- **Git aliases**: `gs`, `ga`, `gc`, `gp`, `gl`, `gd`, `gco`, `gnb`
- **Navigation**: `..`, `...`, `....` for quick directory traversal
- **Starship prompt** with git info and exec time (if installed)
- **100K line history** with deduplication

### Git
- **Default branch**: `main`
- **Auto-rebase** on pull
- **Useful aliases**: `git st`, `git graph`, `git lg`, `git amend`
- **osxkeychain** for credential storage
- **diff3** merge conflict style
- **nvimdiff** as merge/conflict tool

## How to Use After Setup

### Daily Tmux Workflow
```bash
tmux new-session -A -s main   # Attach to 'main' session or create it
# Inside tmux:
# Ctrl+a c        - New window
# Ctrl+a ,        - Rename window
# Ctrl+a n/p      - Next/previous window
# Ctrl+a 0-9      - Jump to window number
# Ctrl+a %/|      - Split horizontal
# Ctrl+a "/-      - Split vertical
# Alt+h/j/k/l     - Move between panes (no prefix!)
# Ctrl+a [        - Enter copy mode (vim keys: v=yank, y=copy)
```

### Daily Neovim Workflow
```bash
nvim                    # Open Neovim
:Lazy                   # Manage plugins
:Mason                  # Install language servers
:LazyExtras             # Enable/disable LazyVim extras
:checkhealth            # Verify setup
```

### Daily Ghostty Workflow
```bash
# Cmd shortcuts work globally:
# Cmd+D           - New split (auto direction)
# Cmd+T           - New tab
# Cmd+W           - Close tab/surface
# Cmd+Shift+Space - Toggle quick terminal dropdown
```

## Restowing After Updates

```bash
cd ~/dotfiles
git pull
stow -R tmux    # Restow to update symlinks
stow -R nvim
stow -R ghostty
stow -R zsh
stow -R git
```

## Recommended Additional Tools

```bash
brew install languagetool lazygit yazi atuin
```

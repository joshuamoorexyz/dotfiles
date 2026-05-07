# Dotfiles

Unified dotfiles managed with [GNU Stow](https://www.gnu.org/software/stow/).

## Quick Start

On a new Mac:

```bash
# Install GNU Stow
brew install stow

# Clone this repo
git clone https://github.com/joshua/dotfiles.git ~/dotfiles
cd ~/dotfiles

# Stow desired packages
stow tmux
stow nvim
stow ghostty
stow zsh
stow git
```

## Packages

| Package | Description |
|---------|-------------|
| `tmux`  | tmux config (.config/tmux/.tmux.conf) |
| `nvim`  | LazyVim configuration (.config/nvim/) |
| `ghostty` | Ghostty terminal config (.config/ghostty/) |
| `zsh`   | Zsh config (.zshrc) |
| `git`   | Git config (.gitconfig) |

## How It Works

Stow creates symlinks from the package directories to your home directory. Each package mirrors the target directory structure starting from `$HOME`.

For example, `tmux/.config/tmux/.tmux.conf` gets symlinked to `~/.config/tmux/.tmux.conf`.

## Restowing

After pulling updates:

```bash
cd ~/dotfiles
stow -R <package-name>
```

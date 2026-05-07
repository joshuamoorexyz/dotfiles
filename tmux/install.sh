#!/bin/bash

# Tmux Dotfiles Installer for macOS
# This script installs and applies tmux dotfiles

set -e

echo "========================================="
echo "  Tmux Dotfiles Installer (macOS)"
echo "========================================="
echo ""

# Check if tmux is installed
if ! command -v tmux &> /dev/null; then
    echo "tmux is not installed. Installing via Homebrew..."
    if ! command -v brew &> /dev/null; then
        echo "Error: Homebrew is not installed. Please install Homebrew first."
        echo "Visit https://brew.sh for installation instructions."
        exit 1
    fi
    brew install tmux
else
    echo "tmux is already installed: $(tmux -V)"
fi

# Install reattach-to-user-namespace for macOS clipboard support
if ! command -v reattach-to-user-namespace &> /dev/null; then
    echo "Installing reattach-to-user-namespace for macOS clipboard support..."
    if command -v brew &> /dev/null; then
        brew install reattach-to-user-namespace
    fi
else
    echo "reattach-to-user-namespace is already installed"
fi

# Get the directory where this script is located
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Backup existing tmux config if it exists
if [ -f ~/.tmux.conf ]; then
    echo "Backing up existing ~/.tmux.conf to ~/.tmux.conf.backup"
    cp ~/.tmux.conf ~/.tmux.conf.backup
fi

# Create tmux config directory if it doesn't exist
mkdir -p ~/.config/tmux

# Copy tmux.conf to home directory
echo "Installing tmux configuration..."
cp "$SCRIPT_DIR/.tmux.conf" ~/.tmux.conf

# Also copy to .config/tmux if the directory exists and is used
if [ -d ~/.config/tmux ]; then
    cp "$SCRIPT_DIR/.tmux.conf" ~/.config/tmux/tmux.conf
fi

echo ""
echo "========================================="
echo "  Installation Complete!"
echo "========================================="
echo ""
echo "Your tmux dotfiles have been installed."
echo ""
echo "To start using the new configuration:"
echo "  1. If tmux is running, reload config with: Ctrl+a then r"
echo "  2. Or restart tmux server: tmux kill-server && tmux"
echo ""
echo "Backup of your old config (if any) saved to: ~/.tmux.conf.backup"
echo ""

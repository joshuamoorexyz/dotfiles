# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
# Zsh Configuration - macOS Optimized
# ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

# ─── History ─────────────────────────────────────────────────────────
HISTFILE=~/.zsh_history
HISTSIZE=100000
SAVEHIST=100000
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt INC_APPEND_HISTORY

# ─── Paths ───────────────────────────────────────────────────────────
export PATH="/opt/homebrew/bin:/opt/homebrew/sbin:$PATH"
export PATH="/Applications/Docker.app/Contents/Resources/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"

# ─── Editor ──────────────────────────────────────────────────────────
export EDITOR="nvim"
export VISUAL="nvim"

# ─── Modern CLI Tools ────────────────────────────────────────────────
# Use eza instead of ls if available
if command -v eza &>/dev/null; then
  alias ls='eza --icons'
  alias ll='eza -l --icons'
  alias la='eza -la --icons'
  alias lt='eza --tree --icons'
else
  alias ll='ls -lh'
  alias la='ls -lha'
fi

# Use bat instead of cat if available
if command -v bat &>/dev/null; then
  alias cat='bat --paging=never'
fi

# Use fd instead of find if available
if command -v fd &>/dev/null; then
  alias find='fd'
fi

# Use ripgrep if available
if command -v rg &>/dev/null; then
  alias grep='rg'
fi

# Use zoxide for smart cd if available
if command -v zoxide &>/dev/null; then
  eval "$(zoxide init zsh)"
fi

# ─── Git Aliases ─────────────────────────────────────────────────────
alias gs='git status'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gl='git pull'
alias gd='git diff'
alias gds='git diff --staged'
alias gco='git checkout'
alias gnb='git checkout -b'
alias glog='git log --oneline --graph --decorate'
alias gstash='git stash'
alias gpop='git stash pop'

# ─── Navigation Aliases ─────────────────────────────────────────────
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias -- -='cd -'

# ─── macOS Specific ──────────────────────────────────────────────────
# Open files/dirs in Finder
alias finder='open -a Finder ./'

# Show/hide hidden files in Finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles YES; killall Finder /System/Library/CoreServices/Finder.app'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles NO; killall Finder /System/Library/CoreServices/Finder.app'

# Flush DNS cache
alias flushdns='sudo dscacheutil -flushcache; sudo killall -HUP mDNSResponder'

# ─── Tmux ───────────────────────────────────────────────────────────
# Auto-start tmux on terminal launch (optional - comment out if not wanted)
# if command -v tmux &>/dev/null && [ -z "$TMUX" ] && [ -z "$VSCODE_PID" ]; then
#   tmux new-session -A -s main
# fi

# ─── Starship Prompt ─────────────────────────────────────────────────
if command -v starship &>/dev/null; then
  eval "$(starship init zsh)"
fi

# ─── FZF ─────────────────────────────────────────────────────────────
if command -v fzf &>/dev/null; then
  source <(fzf --zsh)
  export FZF_DEFAULT_COMMAND='fd --type f --hidden --follow --exclude .git'
  export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
  export FZF_ALT_C_COMMAND='fd --type d --hidden --follow --exclude .git'
fi

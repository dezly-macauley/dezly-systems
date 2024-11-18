# SECTION: Configuration editing

# NOTE: Required Packages: neovim

alias edit-zsh="cd $HOME && nvim .zshrc"
alias edit-alacritty="cd $HOME/.config/alacritty && nvim alacritty.toml"
alias edit-neovim="cd $HOME/.config/nvim && nvim ."
#==============================================================================

# SECTION: Screen Brightness

# Controls the brightness of your screen
# WARNING: Do NOT set brightnessctl to 0%

alias bright-lowest="brightnessctl set 1%"
alias bright-low="brightnessctl set 25%"
alias bright-mid="brightnessctl set 50%"
alias bright-high="brightnessctl set 75%"
alias bright-max="brightnessctl set 100%"

#==============================================================================

# SECTION: Internet Management
alias wifi-on="nmcli radio wifi on"
alias flight-mode="nmcli radio all off"
#==============================================================================

# SECTION: Terminal Outputs 

# NOTE: Required Package: tree, acpi

alias date-time='echo "⌚ $(date +"%d %B %Y ( %I:%M:%S %p )")"'

alias ls-tree="tree --gitignore"

alias battery="acpi"
#==============================================================================

# SECTION: Appearance

# NOTE: Required Packages: lsd (and any nerd font), bat, starship

alias ls="lsd"
# Use this setting below if you prefer a single vertical column
# alias ls="lsd --oneline"

alias cat="bat"

alias zellij="zellij --layout disable-status-bar"

# WARNING: The line below should be the last line in this `.zshrc` file
# This is to ensure that environment variables, 
# paths and other configurations have been loaded first

eval "$(starship init zsh)"
#==============================================================================

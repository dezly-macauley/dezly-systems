# SECTION: Configuration editing

# NOTE: Required Packages: neovim

alias edit-zsh="cd $HOME && nvim .zshrc"
alias edit-litecli="cd $HOME/.config/litecli/ && nvim config"
alias edit-alacritty="cd $HOME/.config/alacritty && nvim alacritty.toml"
alias edit-neovim="cd $HOME/.config/nvim && nvim ."
alias edit-hyprland="cd $HOME/.config/hypr/ && nvim hyprland.conf"
alias edit-nixos="cd $HOME/dezly-systems/nixos-system/nixos-config/\
&& nvim configuration.nix"

#==============================================================================
# SECTION: NixOS Maintanance

alias systems="cd /home/dezly-macauley/dezly-systems"

alias nixos-channel-update="sudo nix-channel --update"

alias nixos-tidy="sudo nix-collect-garbage --delete-older-than 3d"

rebuild_nixos_config() {
    latest_nixos_config="$HOME/dezly-systems/nixos-system/nixos-config"

    # Delete the nixos directory
    sudo rm -rf /etc/nixos/*

    # Generate a new nixos directory
    sudo nixos-generate-config

    # Delete the `configuration.nix` file in that directory
    sudo rm /etc/nixos/configuration.nix

    # Copy everything inside the latest_nixos_config to `/etc/nixos`
    sudo cp -r $latest_nixos_config/* /etc/nixos/

    # Rebuild the system
    sudo nixos-rebuild switch
}

rebuild_nixos_config_and_upgrade() {
    latest_nixos_config="$HOME/dezly-systems/nixos-system/nixos-config"

    # Delete the nixos directory
    sudo rm -rf /etc/nixos/*

    # Generate a new nixos directory
    sudo nixos-generate-config

    # Delete the `configuration.nix` file in that directory
    sudo rm /etc/nixos/configuration.nix

    # Copy everything inside the latest_nixos_config to `/etc/nixos`
    sudo cp -r $latest_nixos_config/* /etc/nixos/

    # Rebuild the system
    sudo nixos-rebuild switch --upgrade
}

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
# SECTION: Zsh commands

alias reload-shell="exec zsh"

clear_shell_history() {
    cat /dev/null > ~/.zsh_history && \
    rm -f ~/.zsh_history && \
    touch ~/.zsh_history && \
    exec zsh
}

disable_shell_history() {
    unset HISTFILE
    export HISTSIZE=0
}

#==============================================================================
# SECTION: Terminal Outputs 

# NOTE: Required Package: tree, acpi

# alias date-time='echo "⌚ $(date +"%d %B %Y ( %I:%M:%S %p )")"'
alias date-time='echo "⌚ $(date +"%A, %d %B %Y ( %I:%M:%S %p )")"'

alias ls-tree="tree --gitignore"

alias battery="acpi"
#==============================================================================
# SECTION: Projects

alias current-project="cd /home/dezly-macauley/github-projects/web3py-favs/\
&& source .venv/bin/activate && eval zellij"

alias current-project-codium="cd /home/dezly-macauley/github-projects/web3py-favs/\
&& source .venv/bin/activate && codium ."

#==============================================================================
# SECTION: Dezly Dojo

alias dojos="cd /home/dezly-macauley/dezly-dojos/"

# `eval zellij` is used because I want it to run zellij as if I had typed
# it from the command line and use:
# alias zellij="zellij --layout disable-status-bar"
# instead of just the zellij program.

dezly-dojos() {

    if [[ $# -eq 0 ]]; then
        cd ~/dezly-dojos

    #__________________________________________________________________________
    elif [[ $1 == "--rust" ]]; then
        cd ~/dezly-dojos/rust-dojo && eval zellij
    #__________________________________________________________________________
    elif [[ $1 == "--go" ]]; then
        cd ~/dezly-dojos/go-dojo/ && eval zellij

    elif [[ $1 == "--python" ]]; then
        cd ~/dezly-dojos/python-dojo/\
        && source .venv/bin/activate && eval zellij
    #__________________________________________________________________________
    elif [[ $1 == "--svelte" ]]; then
        cd ~/dezly-dojos/svelte-dojo && eval zellij
    
    elif [[ $1 == "--typescript" ]]; then
        cd ~/dezly-dojos/typescript-dojo && eval zellij
    #__________________________________________________________________________
    elif [[ $1 == "--vyper" ]]; then
        cd ~/dezly-dojos/vyper-dojo && eval zellij
    #__________________________________________________________________________
    elif [[ $1 == "--sqlite" ]]; then
        cd ~/dezly-dojos/sqlite-dojo && eval zellij
    #__________________________________________________________________________
    elif [[ $1 == "--lua" ]]; then
        cd ~/dezly-dojos/lua-dojo && eval zellij
    
    elif [[ $1 == "--bash" ]]; then
        cd ~/dezly-dojos/bash-dojo && eval zellij
    #__________________________________________________________________________

    else
        echo "Error: $1 is not a valid dojo."
        echo "
        Valid dojos:

        Low-Level Systems Programming:
        --rust

        Back-End Development:
        --go
        --python
        
        Web3:
        --vyper
        --solidity
        
        Front-End Development:
        --svelte
        --typescript
        --tailwind-css
        
        Database Management:
        --mysql
        
        Scripting:
        --lua
        --bash
        "
    fi
}

#==============================================================================
# SECTION: Additional Paths

# NOTE: This will allow you to install npm packages locally.
# But first run this command:
# npm set prefix ~/.npm-global

# Now you can use the `npm install -g name_of_package` you want to install.
export PATH=$HOME/.npm-global/bin:$PATH

#______________________________________________________________________________
# NOTE: UV (Python Package Management)

# First run these commands:
# cd ~
# uv venv

# Enable shell auto completion for uv commands
eval "$(uv generate-shell-completion zsh)"

# Enable shell auto completion for uvx commands
eval "$(uvx --generate-shell-completion zsh)"

# Add the Python virtual environment created by uv to your path so that
# you can use packages that were installed by uv (even when your virtual
# environment is not activated)
# export PATH="$HOME/.venv/bin/:$PATH"

# This is for using programs installed by the `uv tool command`
export PATH="/home/dezly-macauley/.local/bin:$PATH"

# To install a program:
# cd ~
# source .venv/bin/activate
# uv pip install name-of-package

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

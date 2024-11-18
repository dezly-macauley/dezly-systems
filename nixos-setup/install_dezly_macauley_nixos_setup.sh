#!/usr/bin/env zsh

#==============================================================================

# ABOUT: A script to install Dezly Macauley's NixOS setup

#==============================================================================

# To make this script executable, first navigate to the location where this 
# script is and then run the following command:
# chmod +x install_dezly_macauley_nixos_setup.sh
# ---------------------------------------------------------------------------
# Then run the file with this command:
# source install_dezly_macauley_nixos_setup

#==============================================================================

# SECTION: Pre-Installation Setup

#______________________________________________________________________________

# SUB_SECTION: Installation PATH

# Leave this the same unless this repo is not in your home directory
# Do not put a `/` after the path name
parent_path="$HOME"

# Leave this the same unless you renamed the repo
repo_name="dezly-system-setups"

full_repo_path="$parent_path/$repo_name/nixos-setup"

#______________________________________________________________________________

# SUB_SECTION: Backup Path for previous configuration 

# This is the time format used when creating a directory 
# to backup your previous configuration files 
# before proceeding with the install
# An example of the format:
# 17-november-2024-10-19-56-am
current_date_and_time=$(date +"%-d-%B-%Y-%I-%M-%S-%p"\
| tr '[:upper:]' '[:lower:]')

# Generate a directory name for the backup based on the current time
backup_path_name="$HOME/backup-of-previous-nixos-setup/$current_date_and_time"

# Store the fixed value of backup_location in another variable,
# so that the file path does not change
backup_location="$backup_path_name"

mkdir -p $backup_location

#==============================================================================

# SECTION: Pre-Installation Message

echo " "
echo "Installing NixOS setup from:"
echo $full_repo_path
echo " "
echo "Current date and time:"
echo $current_date_and_time
echo " "
echo "Your previous nixos-setup will be backed up at this location:"
echo $backup_location
echo " "

#==============================================================================

                            # SECTION: Shell Settings ( ZSH )

# Backup the previous configuration
cd $HOME
sudo cp .zshrc $backup_location

# Delete the current configuration
sudo rm .zshrc 

# Create a sym link of the current configuration
ln -sf "$full_repo_path/shell-configs/zsh/.zshrc" "$HOME/.zshrc"

echo " "
echo "Zsh configuration installed successfully"
echo " "

#==============================================================================

                            # SECTION: Terminal Emulator ( Alacritty )

# The location of the latest Alacritty configuration
source_dir="$full_repo_path/terminal-emulators/alacritty"

# The location where Alacritty expects the configuration to be,
# this is where the sym link will be created
target_dir="$HOME/.config/alacritty"

# Check if the target directory already exists then make a backup 
if [ -d "$target_dir" ]; then

    # Make a backup of the actual configuration, not the symlink
    real_target_dir=$(realpath "$target_dir")
    cp -r "$real_target_dir" "$backup_location"

    # Remove the previous configuration
    rm -rf "$target_dir"

fi

# Create the symlink of the latest configuration
ln -s "$source_dir" "$target_dir"

echo " "
echo "Alacritty configuration installed successfully"
echo " "

#==============================================================================

			    # SECTION: Code Editor (NvChad)

# The location of the latest LazyVim configuration
source_dir="$full_repo_path/code-editors/lazyvim/nvim/"

# The location where Neovim expects the configuration to be.
# This is where the sym link will be created
target_dir="$HOME/.config/nvim"

# Check if the target directory already exists then make a backup 
if [ -d "$target_dir" ]; then

    # Make a backup of the actual configuration, not the symlink
    real_target_dir=$(realpath "$target_dir")
    cp -r "$real_target_dir" "$backup_location"

    # Remove the previous configuration
    rm -rf "$target_dir"
	
    # Clear the local cache (temp files stored in memory), 
    # and uninstall any plugins to ensure that there are no issues
    # and conflicts from a previous installation
    rm -rf $HOME/.local/cache/nvim
    rm -rf $HOME/.local/state/nvim
    rm -rf $HOME/.local/share/nvim

fi

# Create the symlink of the latest configuration
ln -s "$source_dir" "$target_dir"

echo " "
echo "LazyVim configuration installed successfully"
echo " "

#==============================================================================

#!/usr/bin/env bash

#______________________________________________________________________________

# NOTE: How to use this script 
# ---------------------------------------------------------
# 1. Make sure terminal is in the same directory as 
# `install_dezly_nixos_setup.sh`
# ---------------------------------------------------------
# 2. Make this script executable, by running the following
# command in the terminal:
# chmod +x install_dezly_nixos_setup.sh
# ---------------------------------------------------------
# 3. Run the script with this command
# source install_dezly_nixos_setup.sh
# ---------------------------------------------------------

#==============================================================================


#==============================================================================

                                # SECTION: Databases

#______________________________________________________________________________ 

# # SUB_SECTION: Install PostgreSQL
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/database-systems/
#
# sudo mkdir -p /etc/nixos/database-systems \
# && sudo cp postgresql.nix /etc/nixos/database-systems/

#==============================================================================

                                # SECTION: NixOS Configuration

# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/
#
# sudo cp -r * /etc/nixos/

#==============================================================================

                                # SECTION: Programming Languages

#______________________________________________________________________________ 

# # SUB_SECTION: Install Rust
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/programming-languages/
#
# sudo mkdir -p /etc/nixos/programming-languages \
# && sudo cp rust.nix /etc/nixos/programming-languages/
#
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Install Go
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/programming-languages/
#
# sudo mkdir -p /etc/nixos/programming-languages \
# && sudo cp go.nix /etc/nixos/programming-languages/
#
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Install Python
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/programming-languages/
#
# sudo mkdir -p /etc/nixos/programming-languages \
# && sudo cp python.nix /etc/nixos/programming-languages/
#
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Install PHP
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/programming-languages/
#
# sudo mkdir -p /etc/nixos/programming-languages \
# && sudo cp php.nix /etc/nixos/programming-languages/
#
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Install JavaScript
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/programming-languages/
#
# sudo mkdir -p /etc/nixos/programming-languages \
# && sudo cp javascript.nix /etc/nixos/programming-languages/
#
# #==============================================================================
#
#                                 # SECTION: Core Settings
#
# # SUB_SECTION: Load Timezone and Locale
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/core-settings/
#
# sudo mkdir -p /etc/nixos/core-settings \
# && sudo cp time_zone_and_locale.nix /etc/nixos/core-settings/
#
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Power Optimisation
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/core-settings/
#
# sudo mkdir -p /etc/nixos/core-settings \
# && sudo cp power_optimisation.nix /etc/nixos/core-settings/
# #______________________________________________________________________________ 
#
# # SUB_SECTION: Code Editor Setups
#
# cd $HOME/dezly-system-setups/nixos-setup/nixos-config/\
# etc/nixos/core-settings/
#
# sudo mkdir -p /etc/nixos/core-settings \
# && sudo cp code_editor_setups.nix /etc/nixos/core-settings/
#
# #==============================================================================

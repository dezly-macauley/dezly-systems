#!/usr/bin/env bash

#______________________________________________________________________________

# NOTE: How to use this script 
# ---------------------------------------------------------
# 1. Make sure terminal is in the same directory as 
# `install_nixos_setup.sh`
# ---------------------------------------------------------
# 2. Make this script executable, by running the following
# command in the terminal:
# chmod +x install_nixos_setup.sh
# ---------------------------------------------------------
# 3. Run the script with this command
# source install_nixos_setup.sh
# ---------------------------------------------------------

#==============================================================================

                                # SECTION: Databases

#______________________________________________________________________________ 

# SUB_SECTION: Install PostgreSQL

cd ./nixos-config/

sudo cp postgresql.nix /etc/nixos/


#==============================================================================

{ pkgs, ... }:

#______________________________________________________________________________

                        # SECTION: Package Manager Settings
    
    # SUB_SECTION: Enable Unstable Channel

        # NOTE: This line will allow you to install programs that fall into 
        # these two categories:
        # 1. Free software from the NixOS unstable channel
        # 2. Unfree software from the NixOS unstable channel

        # Place a `#` before each of the three lines below if you don't need
        # any packages from the unstable channel
        let
            unstable = import <unstable> { config.allowUnfree = true; };
        in

#______________________________________________________________________________

{

        #======================================================================

        # SUB_SECTION: Enable Unfree Software

        # Allow Unfree Packages from NixOS's stable channel
        nixpkgs.config.allowUnfree = true;
    
        #======================================================================

        # SECTION: Nerd Fonts

        fonts.packages = with pkgs; [
            (nerdfonts.override { fonts = [ "Meslo" ]; })
        ];

        #======================================================================

        environment.systemPackages = with pkgs; [
        #______________________________________________________________________
        
            # SUB_SECTION: Version Control
            
            git

        #______________________________________________________________________
       
            # SUB_SECTION: FHS Workarounds for NixOS

            # An FHS workaround for NixOS""
            # Allows you to run programs within  a pre-packaged 
            # FHS (Filesystem Hierarchy Standard) environment. 
            # Useful for running applications that expect a standard Linux 
            # filesystem layout, and dynamically linked libraries, 
            # which NixOS does not provide by default.
            # E.g. steam-run ./balena-etcher
            steam-run

            direnv      
            # A shell entension that automatically loads environment variables
            # when you enter a directory.
            # Saves you from having to enter source .venv/bin/activate
            # every time you enter your project

            # NOTE: For direnv to work,
            # remember to add this to your .zshrc file:
            # eval "$(direnv hook zsh)" 

        #______________________________________________________________________
            
            # SUB_SECTION: Terminal Emulator
            
            # A fast code editor written in Rust 
		    alacritty
        #______________________________________________________________________

            # SUB_SECTION: VS Code (GUI Code Editor)

            unstable.vscode-fhs 
            
        #______________________________________________________________________

            # SUB_SECTION: Neovim Text / Code Editor

            # A highly customizable text editor that leverages 
            # keyboard shortcuts and plugins to enhance productivity 
            # for programmers and writers
            unstable.neovim 

        #______________________________________________________________________

            # SUB_SECTION: Neovim Requirements
            
            # NOTE: Search tools for `telescope.nvim` to work properly
            ripgrep
            fd

            # NOTE: Build tools for `nvim-treesitter` and other programs
            gcc      
            gnumake
            glibc
            # libstdcxx5

		    gnutar
            curl
            p7zip
            gzip
            unrar
            wget
            unzip

        #______________________________________________________________________

            # SUB_SECTION: Extras that work well with Neovim
            
            # A rust-powered terminal workspace that works well with Neovim
		    unstable.zellij

            # A Graphical User Interface for Neovim
            # For situations where I want quickly open a file in a 
            # GUI file explorer by clicking on the file
            unstable.neovide

        #______________________________________________________________________
       
            # SUB_SECTION: Syntax Highlighting in Neovim

            # Systems Programming Languages
            vimPlugins.nvim-treesitter-parsers.rust
            vimPlugins.nvim-treesitter-parsers.go
	        vimPlugins.nvim-treesitter-parsers.c

            # Make files
            vimPlugins.nvim-treesitter-parsers.make

            # Documentation Languages
            vimPlugins.nvim-treesitter-parsers.markdown
            vimPlugins.nvim-treesitter-parsers.markdown_inline

            # Smart Contract Development
			vimPlugins.nvim-treesitter-parsers.solidity

            # Front-End Development
            vimPlugins.nvim-treesitter-parsers.svelte
            vimPlugins.nvim-treesitter-parsers.typescript
            vimPlugins.nvim-treesitter-parsers.javascript
            vimPlugins.nvim-treesitter-parsers.css
            vimPlugins.nvim-treesitter-parsers.html

			# NixOS Configurations
			vimPlugins.nvim-treesitter-parsers.nix

			# Database Languages
			vimPlugins.nvim-treesitter-parsers.sql

            # Data Serialization Languages
            vimPlugins.nvim-treesitter-parsers.json
            vimPlugins.nvim-treesitter-parsers.yaml
            vimPlugins.nvim-treesitter-parsers.toml
            vimPlugins.nvim-treesitter-parsers.gomod

            # Scripting Languages
            vimPlugins.nvim-treesitter-parsers.python
            vimPlugins.nvim-treesitter-parsers.lua

        #______________________________________________________________________

            # SUB_SECTION: Alternative Shells

            # A cross-platform shell written in Rust
            # It lets you use SQL-like command for querying files in a directory
            nushell

            # Manage AWS service right from the terminal
            awscli2                                 

        #______________________________________________________________________
       
            # SUB_SECTION: Terminal Appearance
           
            # A cross-platform shell prompt written in Rust
            starship
            
            # A prettier version of the `ls` command.
            # It requires you to have a Nerd Font Installed
		    lsd

            # A prettier version of the `cat` command
            bat

        #______________________________________________________________________
       
            # SUB_SECTION: Extra Functionality

            # View the structure of a directory
            tree

            # Insanely fast file search powered by Rust
            skim

        #______________________________________________________________________
       
        ];

}

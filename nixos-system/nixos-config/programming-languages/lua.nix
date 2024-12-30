{ pkgs, ... }:

{

    # ABOUT: Lua

        environment.systemPackages = with pkgs; [
            # Powerful, fast, lightweight, embeddable scripting language
            lua

	    # Language server
	    lua-language-server			
           
            # Syntax highlighting
            vimPlugins.nvim-treesitter-parsers.lua

        ];

}

{ pkgs, ... }:

{

    # ABOUT: Lua

        environment.systemPackages = with pkgs; [

            # A high performance JIT compiler for Lua
            luajit
           
			# The Lua package manager
			luajitPackages.luarocks

			# Language server
			lua-language-server			
           
            # Syntax highlighting
            vimPlugins.nvim-treesitter-parsers.lua

        ];

}

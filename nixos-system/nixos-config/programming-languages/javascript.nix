{ pkgs, ... }:

{

    # ABOUT: JavaScript

        environment.systemPackages = with pkgs; [

            # The most used JavaScript runtime.
            # This also include `npm` (Node package manager)
            nodejs
            
            # A Zig-powered package manager, runtime, and bundler
            bun

            # A Rust-powered runtime for JavaScript, TypeScript, and WebAssembly
            # It is also a language server for JavaScript and TypeScript
            deno

            # NOTE: Syntax Highlighting

            vimPlugins.nvim-treesitter-parsers.javascript
            vimPlugins.nvim-treesitter-parsers.json5

            vimPlugins.nvim-treesitter-parsers.typescript
            
            vimPlugins.nvim-treesitter-parsers.svelte

        ];

}

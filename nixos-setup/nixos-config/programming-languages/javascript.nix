{ pkgs, ... }:

{

    # ABOUT: JavaScript

        environment.systemPackages = with pkgs; [

            # The most used JavaScript runtime.
            # This also include `npm` (Node package manager)
            nodejs_22
            
            # A Zig-powered package manager, runtime, and bundler
            bun

            # A Rust-powered runtime for JavaScript, TypeScript, and WebAssembly
            # It is also a language server for JavaScript and TypeScript
            deno

            # Language support for the Svelte Framework
            nodePackages.svelte-language-server

        ];

}

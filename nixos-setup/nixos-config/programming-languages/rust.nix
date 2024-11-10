{ pkgs, ... }:

{

    # ABOUT: Rust

        environment.systemPackages = with pkgs; [
        
            # The Rust compiler
            rustc

            # The Rust package manager
            cargo

            # Language support for Rust
            rust-analyzer

            # A tool for formatting Rust according to 
            # the official style guide
            rustfmt

        ];

}

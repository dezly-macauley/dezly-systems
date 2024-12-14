{ pkgs, ... }:

{

    # ABOUT: Python

        environment.systemPackages = with pkgs; [

            # The interpreter for the Python programming langauge.
            # This runs your Python Code
            python314
            python312
            
            # The default Python package manager
            # Required for Python programs that need to be installed on a 
            # system wide level
            python312Packages.pip

            # Language support for Python with type checking
            pyright

            # The faster Python package manager written in Rust
            uv

        ];

}

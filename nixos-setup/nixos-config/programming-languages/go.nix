{ pkgs, ... }:

{

    # ABOUT: Go

        environment.systemPackages = with pkgs; [
        
            # A compiler and toolchain for Go
            go

            # The official language server for Go
            gopls
            
            # Creates a server with live reloading 
            # for viewing Go apps in the browser
            air

        ];

}

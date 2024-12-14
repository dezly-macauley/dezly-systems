{ pkgs, ... }:

{

    # ABOUT: SQLite

    environment.systemPackages = with pkgs; [

        #SQLite is a widely-used, fast, 
        # and self-contained SQL database engine, 
        # implemented in C, 
        # that powers countless applications on mobile devices, 
        # computers, and embedded systems globally.

        sqlite

        # An alternative to the built-in SQL cli
        # litecli has quality of life improvements like syntax highlighting,
        # autocompletion, and command history
        litecli

    ];

}

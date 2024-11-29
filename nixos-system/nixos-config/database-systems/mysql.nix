{ pkgs, ... }:

{

    # ABOUT: MySQL

    services.mysql = {

        # This will set the version of MariaDB to version 110
        # MariaDB is a drop-in replacement for MySQL
        package = pkgs.mariadb_110;

        # This will ensure that the service is running in the background
        enable = true;

    };

    # NOTE: Additional Packages

    environment.systemPackages = with pkgs; [

        # A command line interface for interacting 
        # with MySQL databases.
        # Unlike `mysql` (the default cli tool that MySQL comes with),
        # `MyCLI` has autocompletion and syntax highlighting.
        mycli

    ];

}

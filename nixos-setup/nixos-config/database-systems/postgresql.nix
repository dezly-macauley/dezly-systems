{ pkgs, ... }:

{

    # ABOUT: PostgreSQL

    # NOTE: `service.postgresql = {};` 
    # This is a service block that tells NixOs that everything inside
    # the curly braces is a related to PostgreSQL settings 



    services.postgresql = {

        # This will set the version of PostgreSQL to version 16 
        package = pkgs.postgresql_16;

        # This will ensure that PostgreSQL is running in the background
        enable = true;

        # Enable TCIP connections
        enableTCPIP = true;

        # NOTE: PostgreSQL will use `port = 5432;` by default

        # This is a special function in NixOS that lets you override 
        # the default settings of a service with a high priority.
        # The higher the number, the better, but 10 is a reasonable number.
        authentication = pkgs.lib.mkOverride 10 ''
        # This is where you specify what authentication method is
        # required when a user needs to access a database, and what
        # connections, user access, and database access this rule 
        # should apply:
        # ------------------------------------------------------------
        # This will allow "host" based authentification only from other 
        # webservices on the same computer ("127.0.0.1"), 
        # although any DB user will have access to any database.
        # ------------------------------------------------------------
        #   type       database     DBuser  origin-address auth-method
            local      all          all     trust
        # (ipv4 connections)
            host        all         all     127.0.0.1/32   trust
        # (ipv6 connections)
            host        all         all     ::1/128        trust
        '';
        # ------------------------------------------------------------

    };

    # NOTE: Additional Packages

        environment.systemPackages = with pkgs; [

            # A command line interface for interacting 
            # with PostgreSQL databases.
            # Unlike `psql` (the default cli tool that postgreSQL comes with),
            # `pgcli` has autocompletion and syntax highlighting.
            pgcli

            # A cross-platform graphical user interface,
            # that supports most SQL databases
            dbeaver-bin

        ];

}

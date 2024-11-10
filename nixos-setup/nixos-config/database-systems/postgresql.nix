{ pkgs, ... }:

{

    # ABOUT: PostgreSQL

    # NOTE: `service.postgresql = {};` 
    # This is a service block that tells NixOs that everything inside
    # the curly braces is a related to PostgreSQL settings 

    services.postgresql = {

        # This will ensure that PostgreSQL is running in the background
        enable = true;

        # This will make sure that when PostgreSQL is launched, it will
        # start with a database called `ground-zero`
        ensureDatabases = [ "ground-zero" ];

        # This is a special function in NixOS that lets you override 
        # the default settings of a service with a high priority.
        # The higher the number, the better, but 10 is a reasonable number.
        authentication = pkgs.lib.mkOverride 10 ''
            # This is where you specify what authentication method is
            # required when a user needs to access a database, and what
            # connections, user access, and database access this rule 
            # should apply.
            # For a production setup, do NOT leave the auth-method as trust!
            # connection-type   databases  users      auth-method
              local             all        all        trust
        '';
    };

    # NOTE: Additional Packages

        environment.systemPackages = with pkgs; [

            # A cross-platform graphical user interface,
            # that supports most SQL databases
            dbeaver-bin

        ];

}

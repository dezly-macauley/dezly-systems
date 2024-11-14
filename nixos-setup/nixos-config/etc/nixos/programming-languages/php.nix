{ pkgs, ... }:

{

    # ABOUT: PHP

        environment.systemPackages = with pkgs; [

            # The PHP Compiler
            php

            # The Dependency manager for PHP
            php83Packages.composer

            # Language support for PHP
            nodePackages.intelephense

        ];

}

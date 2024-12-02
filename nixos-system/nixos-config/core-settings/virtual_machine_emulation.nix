{ pkgs, ... }:

{
    
        #======================================================================
    
        # SECTION: virt-manager

        # This is a graphical app that lets you create,
        # run and and manage Virtual Machines
        programs.virt-manager.enable = true;
        
        # This is the libvirt-daemon
        # It runs virtualisation in the background
        virtualisation.libvirtd.enable = true;
        
        #======================================================================

        environment.systemPackages = with pkgs; [
        #______________________________________________________________________
        
            # The Emulator
            qemu_full           

            # NOTE: bridge-utils is deprecated in favour of iproute2

            # Collection of utilities for controlling TCP/IP networking 
            # and traffic control in Linux
            iproute2

        ];

}

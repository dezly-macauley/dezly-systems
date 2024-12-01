# Dezly NixOS System Guide

This should tell you what the current stable NixOS channel is:

https://search.nixos.org/packages


How to update the NixOS channel

First make sure that everything on your system is up to date

```
rebuild_nixos_config_and_upgrade
```


Check what channels you have
```
sudo nix-channel --list
```

E.g. let's say I am on `nixos-24.05` which is now deprecated.

`24.11` is the version number of the latest (at the time of this guide)
version of the NixOS stable channel

To update I first remove the 24.05
```
sudo nix-channel --remove nixos
```

Then add the new channel:
```
sudo nix-channel --add https://nixos.org/channels/nixos-24.11 nixos
```

Check that it is correctly listed.
```
sudo nix-channel --list
```

Sync the channel with the NixOS package manager
```
sudo nix-channel --update
```

Rebuild your NixOS configuration
```
rebuild_nixos_config
```

Now that you have rebuilt your NixOS configuration with packages from the
new channel, make sure to update all the channel

_______________________________________________________________________________

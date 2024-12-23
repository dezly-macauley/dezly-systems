# My Debian Setup
_______________________________________________________________________________
### System Update

```
sudo apt update
```

```
sudo apt full-upgrade
```
_______________________________________________________________________________
### First install `ca-certificates`

Without this you won't be able to add the testing and unstable repos

```
sudo apt install ca-cerficates
```
_______________________________________________________________________________
### Add the `testing` and `unstable` repos to the `apt package manager`

Open this file
```
sudo vi /etc/apt/sources.list
```
_______________________________________________________________________________

Add this to the end of the sources.list file to 
add the testing repo as a source
```
deb https://deb.debian.org/debian testing main
```
_______________________________________________________________________________

Add this to the end of the sources.list file to add the unstable 
repo as a source
```
deb https://deb.debian.org/debian unstable main
```
_______________________________________________________________________________

Open the package manager preference tab:

```
cd /etc/apt/
ls
```

Look for a file called preferences, if it's not there, create it:

```
sudo touch preferences
sudo vi /etc/apt/preference
```

Add this:
```
# The default priority for the Stable channel is 500,
so make sure the and unstable and testing are lower

# Testing priority
Package: *
Pin: release a=testing
Pin-Priority: 50

# Unstable priority
Package: *
Pin: release a=unstable
Pin-Priority: 25
```
_______________________________________________________________________________

Update the apt package manager so that it knows about the new sources that
have been added:

```
sudo apt update
```

To check that eveything is set correctly:

```
sudo apt full-upgrade
```
_______________________________________________________________________________

### You can search for Debian packages here:

> https://www.debian.org/distrib/packages#search_packages

How to install a package from the stable branch
`sudo apt install name-of-package`

How to install a package from the testing branch
`sudo apt install -t testing name-of-package`

How to install a package from the unstable branch 
`sudo apt install -t unstable name-of-package`


Note: `-t` stands for target release

_______________________________________________________________________________
### Desktop Environment

```
sudo apt install -t unstable hyprland
```

_______________________________________________________________________________

# First Login Tasks
_______________________________________________________________________________
### Update your package manager

This will let your package manager know about any new packages that have 
been released in the Debian repo. Your current package list will only include
the packages that were available when your ISO image was released.
```
sudo apt update
```
_______________________________________________________________________________
### Update your system

To see what packages are out of date, run the following command:
```
sudo apt list --upgradable
```

To update your system with full dependency resolution (removing packages
and dependencies that your system does not need to avoid conflicts).
```
sudo apt full-upgrade -y
```
_______________________________________________________________________________
### Install Programs

#### Code Editor

#### Configuration Management
```
pip3 install ansible
```


_______________________________________________________________________________

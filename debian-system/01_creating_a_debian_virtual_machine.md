# Creating a Debian Virtual Machine
_______________________________________________________________________________
## Phase 1 - Prepare your system for virtualisation
_______________________________________________________________________________
### Make sure that virtualisation is enabled in your BIOS
Go to your BIOS and ensure that virtualisation is turned on.

This differs from computer to computer, 
but generally you enter the BIOS by switching off you computer,
and then turning it back on and presssing `F12` when booting.

Its usually a setting that says `enable virtualization`

NOTE: It's technically a UEFI but in people still call it BIOS...

_______________________________________________________________________________
### Install the virtualisation software

I use `qemu` because its open source, cross-platform,
and it can run virtual machines in a performant way. 

And `libvirtd` is needed as well.

> https://www.qemu.org/

I also use `virt-manager` as the graphical user interface

_______________________________________________________________________________

### Check if libvirtd is enabled and running after installing it

```
systemctl status libvirtd
```

If it is not enabled:

```
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
```
_______________________________________________________________________________

### Create a directory for your virtual machines
```
mkdir -p ~/virtual-machines/
```
_______________________________________________________________________________
### Create a user password for your virtual machine

Make sure this is a strong password, 
and make sure to store it somewhere safe. 

_______________________________________________________________________________
### Check that your system has virtualisation enabled 

Use this command to check, it will also show you how many processors you 
have on your main machine:
```
egrep -c '(vmx|svm)' /proc/cpuinfo
```

I get 16 when I run this command.

vmx indicates Intel's virtualization technology (VT-x).
svm indicates AMD's virtualization technology (AMD-V).

If the number is 0 then that means that you can't run virtualization
technology OR you can, but you need to enable it in your BIOS

If you get a number like `16`, that means you can run virtual machines
on your system and that you have 16 CPU cores.

_______________________________________________________________________________
### Check the number of processors
```
cat /proc/cpuinfo | grep processor | wc -l
```

I get 8 when I run this command.

This typically means I have 8 threads, 
which could correspond to 4 physical cores with hyper-threading 
if the CPU supports it.

_______________________________________________________________________________
### So in summary:

I have 16 processors on my machine, and 8 cores.

Each of the 8 cores can handle 2 threads, so that's how you get the number 16.

8 cores X 2 threads each = 16 processors

So this means that when creating a virtual machine, you can safely give
your machine `4 cores` without slowing down your main machine.

If you want to be on the safe side, you could use 3. This setting can be
changed after the virtual machine has been created so don't worry

Write the number of cores down.

_______________________________________________________________________________
### Check how much RAM you have available on your main machine

```
free -h
```

Look at the column that says total:
```
total
7.5Gi
```

I usually go with half of this amount, or below half of this amount,
so that I don't slow down my main system.

7.5 / 2 = 3.75

So to be safe, this means that I can give my virtual machine 3.5 GiB of 
RAM while running my main operating system. 

_______________________________________________________________________________
### Convert the number of Gigibytes to Membibytes

1 GiB = 1024 MiB

So 3.5GiB (Gibibytes) = `3584 MiB` (Mebibytes)

Write down the number of Mebibytes.

_______________________________________________________________________________
### Check how much hardrive space you can give the virtual machine

```
df -h
```
Filesystem      Size  Used Avail Use% Mounted on

/dev/dm-0       234G  118G   105G  62% /

I will give the virtual machine `60GB` of hardrive space.

Write this down somewhere.

_______________________________________________________________________________
## Phase 2 - Download and verify the installation image
_______________________________________________________________________________
### Download the latest Debian ISO image and save it in the iso-images directory

> https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/

The file name should look like this:

`debian-12.8.0-amd64-netinst`
_______________________________________________________________________________
### Check the integrity of the file

Make sure that you are in the directory where the iso image is,
then run this command:

You will need the `sha512sum` program installed for this command

Use it on the iso-image
```
sha512sum name-of-iso-image
sha512sum debian-12.8.0-amd64-netinst.iso
```

You will get an output like this:

`f4f7de1665cdcd00b2e526da6876f3e06a
37da3549e9f880602f64407f60298
3a571c142eb0de0eacfc9c1d0f534e9339cdce04eb9dadd
c6ddfa8cf34853beed  debian-12.8.0-amd64-netinst.iso`

It's basically a `long string of letters and numbers`,
followed by the `name of the ISO image you downloaded`

_______________________________________________________________________________
### Check if this hash matches the one on the website

> https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/SHA512SUMS

This confirms that the file was not corrupted during the download.
_______________________________________________________________________________
## Phase 3 - Create the Virtual Machine
_______________________________________________________________________________
### Open Virtual Machine Manager

Enter the password of your current system

You should see `QEMU/KVM` listed

Click `File` then `New Virtual Machine`

_______________________________________________________________________________

Check the option `Local install media (ISO image or CDROM)`

Click `Forward`

_______________________________________________________________________________

Choose ISO or CDROM install media:

Click `Browse`

There is a column on the left that has something called `default
Filesystem Directory`

Below that, click the `blue +` icon at the bottom.
Its the one that says `Add pool`

Click it and you will get a menu that says `Create storage pool`

_______________________________________________________________________________

Enter these options

name: `virtual-machines`

type: `dir: Filesystem Directory`

Target Path: `select the virtual-machines directory that you created`

Then click `Finish`
_______________________________________________________________________________

Now under the `default` option you should see that `virtual-machines`
have been added.
_______________________________________________________________________________

Click `virtual-machines`

You should see `debian-12.8.0-amd64-netinst` listed.

Click `debian-12.8.0-amd64-netinst` and then click
`Choose Volume`
_______________________________________________________________________________

Choose the operating system you are installing:

`Debian 12` should already be selected.

Click `Forward`
_______________________________________________________________________________

Choose Memory and CPU settings:

Memory: `3584` MiB

CPUs: `4`

_______________________________________________________________________________

Make sure to check the option: `Enable storage for this virtual machine`

Then check the option `Select or create custom storage`

Then click `Manage`

Where it says `Volumes` you should see the the debian iso image.

`That is NOT the one you want to select`

_______________________________________________________________________________

Next to `Volumes`, click the `blue +` icon that says `create new volume`

Enter this:

name: `debian`

format: `qcow2`

Capacity: `60` GiB

Click `Finish`

_______________________________________________________________________________

Now under volume you should see the following:

`debian-12.qcow2 60.00 GiB qcow2`

`Select it` and then click `Choose Volume`

Then click `Forward`
_______________________________________________________________________________

Name: `debian-12`
_______________________________________________________________________________
## Phase 4 - Install Debian

Select graphical install
_______________________________________________________________________________
### Select a language:

English

_______________________________________________________________________________
### Select you location:

other >> Europe >> Greece

_______________________________________________________________________________
### Configure locales:

United Kingdom = en_GB.UTF-8

_______________________________________________________________________________
### Config the keyboard

American English

If the `2` and `@` are on one key then that means that you have an American
keyboard.

_______________________________________________________________________________
### Config the network

Hostname = debian

Domain name = just press continue

_______________________________________________________________________________
### Setup users and passwords:

Do not set a root user password. Just press continue.

_______________________________________________________________________________

Full name for the new user: dezly-macauley

Username for you account: dezly-macauley

`Now set a password`

Make sure to use `Show password in clear` to make sure that you create
the password correctly.

_______________________________________________________________________________
### Partition disks:

Choose `Guided use entire disk` 

This is fine because it is a virtual machine so it will only use 
the 60GB I gave it.

> Note: There is also need to encrypt this because my main system is already
encrypted 
_______________________________________________________________________________

Select the virtual disk partition and click `continue`

_______________________________________________________________________________

Select the option `All files in one partition`

_______________________________________________________________________________

`Finish partitioning and write changes to disk` should be selected

Click `Continue`.

_______________________________________________________________________________
### Write changes to disk: 

Select the option: `Yes`

_______________________________________________________________________________
### Configure the package manager

Scan extra installation media? `No`

Debian archive mirror country: `Greece`

Debian archive mirror: `deb.debian.org`
_______________________________________________________________________________

Http proxy: `Leave this blank and hit continue`

_______________________________________________________________________________

Participate in the package usage survey: `No`

_______________________________________________________________________________
### Choose software to install: 

I uncheck everything. I only want the core of the system installed.

_______________________________________________________________________________
### Install GRUB boot loader 

Install Grub bootloader to your primary drive: `Yes`

> Make sure to select that option or you won't be able to boot after 
installing

_______________________________________________________________________________

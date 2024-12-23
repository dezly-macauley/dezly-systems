# Creating a Debian Virtual Machine
_______________________________________________________________________________

Create a directory for your virtual machines
```
mkdir -p ~/virtual-machines/iso-images/
```
_______________________________________________________________________________

Download the latest Debian ISO image and save it in the iso-images directory

https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/

The image should look like this:

debian-12.8.0-amd64-netinst
_______________________________________________________________________________
Download the checksum file and save it in the iso-images directory

Make sure that you are in the iso-images directory and then run this command:

You will need the sha512sum program for this command

```
sha512sum name-of-iso-image
```

You will get an output like this:

sha512sum debian-12.8.0-amd64-netinst.iso

f4f7de1665cdcd00b2e526da6876f3e06a37da3549e9f880602f64407f602983a571c142eb0de0eacfc9c1d0f534e9339cdce04eb9daddc6ddfa8cf34853beed  debian-12.8.0-amd64-netinst.iso

_______________________________________________________________________________

Go back to this site: 

Click this:

https://cdimage.debian.org/debian-cd/current/amd64/iso-cd/SHA512SUMS

Check if it matches:

f4f7de1665cdcd00b2e526da6876f3e06a37da3549e9f880602f64407f602983a571c142eb0de0eacfc9c1d0f534e9339cdce04eb9daddc6ddfa8cf34853beed  debian-12.8.0-amd64-netinst.iso

This confirms the file integrity
_______________________________________________________________________________
Download the signature file and save it in the iso-images directory

Install this

gnupg

_______________________________________________________________________________

### Create a strong password for your virtual machine

_______________________________________________________________________________

### Check how much RAM you have available

```
free -h
```

Look at the column that says total:

```
total
7.5Gi
```

7.5 / 2 = 3.75

So to be safe, this means that I can give my virtual machine 3.5 GB of RAM while running my 
main operating system. Don't use the entire amount

(1 GB = 1024 MiB) 

So 3.5GiB (gibibytes) = 3584 MiB (Mebibytes)

_______________________________________________________________________________

### How to check how many cores you have

```
cat /proc/cpuinfo | grep processor | wc -l
```
You have 8 logical processors. 
This typically means you have 8 threads, 
which could correspond to 4 physical cores with hyper-threading 
(if your CPU supports it).

_______________________________________________________________________________

## Check if you can run virtualization technology

Use this command:
```
egrep -c '(vmx|svm)' /proc/cpuinfo
```
vmx indicates Intel's virtualization technology (VT-x).
svm indicates AMD's virtualization technology (AMD-V).

If the number is 0 then that means that you can't run virtualization
technology OR you can, but you need to enable it in your BIOS

Its usually a setting that says `enable virtualization`

NOTE: It's technically a UEFI but in people still call it BIOS. 
It's that menu that you get when you laptop is starting and you press F12.

If you get a number like `16`, that means you can run virtual machines
on your system and that you have 16 CPU cores.

_______________________________________________________________________________

❯ cat /proc/cpuinfo | grep processor | wc -l

8

~
❯ egrep -c '(vmx|svm)' /proc/cpuinfo
16

So this means I have 16 processors on my machine.

8 cores, and each core can handle 2 threads. So 8 x 2 = 16

So this means that I can give the virtual machine 4 cpus

_______________________________________________________________________________

```
df -h
```

Space I will make the VM 60GB of hardrive space

_______________________________________________________________________________

## Check if libvirtd is enabled after installing it

```
systemctl status libvirtd
```

If it is not enabled:

```
sudo systemctl enable libvirtd
sudo systemctl start libvirtd
```
_______________________________________________________________________________
## Open the Virtual Machine Manager GUI

You should see `QEMU/KVM` listed

File > New Virtual Machine

Local install media (ISO image)

Click Browse

There is a column on the left that has something called `default`

Below that, click the blue plus icon at the bottom.
Its the one that says "Add pool"

You will get a menu that says "Create storage pool"

For the name: virtual-machines

Leave the type as `dir: Filesystem Directory`

Target Path: Select the virtual-machines directory

Then click `Finish`

Now select virtual-machines, and select the kali-linux ISO image

Tip: If you don't see the ISO image, Virtual Machine Manager and try again

Then click `Choose volume`

Arch Linux should be there

_______________________________________________________________________________

Memory:
So 3.5GiB (gibibytes) = 3584 MiB (Mebibytes)

CPUs:
4

_______________________________________________________________________________

Make sure the box `Enable storage for this virtual machine is checked`

Then click `select or create custom storage`

Right next to `Volumes` click the blue `+` button that says

```
create new volume
```

Name: arch-linux
Format: qcow2

Capacity: 60 GB

Make sure to leave `Allocate entire volume now` as unchecked

_______________________________________________________________________________

Click the virtual machine:

```
arch-linux.qcow2
```

Then click `Choose volume`

Name: arch-linux

Network selection:

```
Virtual network 'default': NAT
```
_______________________________________________________________________________

### Installing Debian

Select a language:

English

_______________________________________________________________________________

Select you location:

other >> Europe >> Greece

_______________________________________________________________________________

Configure locales:

United Kingdom = en_GB.UTF-8

_______________________________________________________________________________

Keymap to use:

American English

If the `2` and `@` are on one key then that means that you have an American
keyboard.

_______________________________________________________________________________

Hostname = debian

Domain name = just press continue

_______________________________________________________________________________

Setup users and passwords:

Do not set a root user. Just press continue.

_______________________________________________________________________________

Full name for the new user:

dezly-macauley

______________________________________________________________________________

Username for you account:

dezly-macauley

_______________________________________________________________________________

Partition disks:

Guided use entire disk

All files in one partition

Write changes to disk: Yes

_______________________________________________________________________________

Scan extra installation media? No
_______________________________________________________________________________

Debian mirror: Greece
deb.debian.org
_______________________________________________________________________________

Http proxy: Leave this blank and hit continue

_______________________________________________________________________________

Popularity contest: No

_______________________________________________________________________________

At the moment only the core of the system is installed:

Choose software to install: Uncheck everything

Except for standard system utilities: This contains things like ls, apt, apt

_______________________________________________________________________________

Install Grub bootloader: Yes

_______________________________________________________________________________

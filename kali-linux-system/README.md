# Kali Linux System Guide
_______________________________________________________________________________

## Step 1 - Get Kali Linux

Go to the official Kali Linux website and download the ISO image:

https://www.kali.org/get-kali/#kali-installer-images

It will look like this:

kali-linux-2024.3-installer-amd64.iso

_______________________________________________________________________________

## Step 2 - Verify that the iso image was not corrupted during the download

Go to the kali Linux website, and to the installer image that you downloaded.

There should be something that says `sum`, click on it and it 
will show SHA256sum and a long string that looks like this:

```
2ba1abf570ea0685ca4a97dd9c83a65670ca93043ef951f0cd7bbff914fa724a
```
_______________________________________________________________________________

Next go to the directory where where your downloaded `.iso` file is 
and run this command:

```
sha256sum kali-linux-2024.3-installer-amd64.iso
```

You will get an output like this:

kali-linux-2024.3-installer-amd64.iso

Compare that string with the one from the Kali Linux website.
They should match.

2ba1abf570ea0685ca4a97dd9c83a65670ca93043ef951f0cd7bbff914fa724a

2ba1abf570ea0685ca4a97dd9c83a65670ca93043ef951f0cd7bbff914fa724a 

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

NOTE: It's technically a UEFI but in people still call it BIOS. 
It's that menu that you get when you laptop is starting and you press F12.

If you get a number like `16`, that means you can run virtual machines
on your system and that you have 16 CPU cores.

_______________________________________________________________________________

## Check if libvirtd is enabled after installing it

```
sytemctl status libvirtd
```

_______________________________________________________________________________

## Create this directories

virtual-machines

Put the Kali Linux ISO in this directory

_______________________________________________________________________________

## Open the Virtual Machine Manager GUI

You should see QEMU/KVM listed

File > New Virtual Machine

Local install media (ISO image)

Click Browse

Then click the blue plus icon at the bottom.
Its the one that says "Add pool"

You will get a menu that says "Create storage pool"

For the name: virtual-machines

Leave the type as `dir: Filesystem Directory`

Target Path: Select the virtual-machines directory

Then click `Finish`

Now select virtual-machines, and select the kali-linux ISO image

Tip: If you don't see the ISO image, Virtual Machine Manager and try again

Then click `Choose volume`

Leave it at `automatically detect from the installation media /source`
if it detects Kali Linux. If Kali is not there search for 
it in the drop down list.

If Kali isn't there select the latest Debian as Kali is a Debian-based distro.

I chose `Debian 12` when I did this


_______________________________________________________________________________

Choose Memory and CPU setting

Memory: 3072 Mib
CPUs:   2 CPU

Use:
```
free -h
```

Enable storage for the virtual machine:

Select or create custom storage:

Chose the virtual-machines directory again

Click the + (add new volumes)

Name: kali-linux
Capacity: 50 GB

Choose the volume



_______________________________________________________________________________

You can use the command line

```
virsh -h
```

_______________________________________________________________________________

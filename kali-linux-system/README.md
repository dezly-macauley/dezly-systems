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

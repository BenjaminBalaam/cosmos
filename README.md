# Cosmos

Cambridge Open Source Modern Operating System

## Building

1. Follow all instructions on this webpage: https://wiki.osdev.org/GCC_Cross-Compiler, this tells you how to build your GCC cross-compiler in order to build the kernel.

2. Install GRUB, NASM, make and xorriso.

3. Build the kernel by running the command "make" in the root directory of the project.

## Running on a VM

1. Install a Virtual Machine (would recommend qemu-system-i386).

2. Run your VM with cosmos.iso in the cd drive (for QEMU run qemu-system-i386 -cdrom cosmos.iso).

## Running on Hardware

1. Burn the cosmos.iso file onto a storage drive

2. Boot the device using the storage drive

## Currently Useful Resources

-   https://wiki.osdev.org/Bare_Bones
-   https://wiki.osdev.org/Meaty_Skeleton
-   https://wiki.osdev.org/Going_Further_on_x86
-   https://wiki.osdev.org/What_Order_Should_I_Make_Things_In%3F
-   https://wiki.osdev.org/QEMU
-   https://wiki.osdev.org/Resources

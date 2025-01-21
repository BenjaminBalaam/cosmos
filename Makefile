all:
	nasm -felf32 boot.asm -o boot.o
	$$HOME/opt/cross/bin/i686-elf-gcc -c kernel.c -o kernel.o -std=gnu99 -ffreestanding -O2 -Wall -Wextra
	$$HOME/opt/cross/bin/i686-elf-gcc -T linker.ld -o cosmos.bin -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
	cp cosmos.bin isodir/boot/cosmos.bin
	cp grub.cfg isodir/boot/grub/grub.cfg
	grub-mkrescue -o cosmos.iso isodir
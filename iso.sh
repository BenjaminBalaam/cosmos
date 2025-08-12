#!/bin/sh
set -e
. ./build.sh

mkdir -p isodir
mkdir -p isodir/boot
mkdir -p isodir/boot/grub

cp sysroot/boot/cosmos.kernel isodir/boot/cosmos.kernel
cat > isodir/boot/grub/grub.cfg << EOF
menuentry "cosmos" {
	multiboot /boot/cosmos.kernel
}
EOF
grub-mkrescue -o cosmos.iso isodir

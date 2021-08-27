git pull
as -c kernel/boot.S -o boot.o
gcc -fpic -ffreestanding -std=gnu99 -c kernel/kernel.c -o kernel.o -O2 -Wall -Wextra

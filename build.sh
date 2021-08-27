git pull
as -c kernel/boot.S -o boot.o
gcc -fpic -ffreestanding -std=gnu99 -c kernel/kernel.c -o kernel.o -O2 -Wall -Wextra
-gcc -T linker.ld -o myos.elf -ffreestanding -O2 -nostdlib boot.o kernel.o -lgcc
objcopy myos.elf -O binary kernel7.img
qemu-system-arm -m 256 -M raspi2 -serial stdio -kernel kernel.elf

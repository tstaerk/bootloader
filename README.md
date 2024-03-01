# bootloader
Create your own bootsector. Explore how programming in real mode feels, without any support of the operating system. In fact, start writing your own operating system. See https://www.staerk.de/thorsten/assembler_tutorial

# compiling
In this example I use Ubuntu Linux 22.04.
Compile your bootsector with the command
```
nasm -f bin hello.s
```

Create your virtual 1MB bootdisk with the command
```
dd if=/dev/zero of=bootdisk.img seek=2K count=1
```

Put your bootsector at the beginning of your virtual bootdisk with the command
```
dd if=hello of=bootdisk.img conv=notrunc
```

Manipulate your bootloader, put the magic bytes 55AA at the end. If you do not know how, watch https://www.youtube.com/watch?v=3C3u0eUPxZI

Boot your virtual machine using the command
```
qemu-system-i386 -fda bootdisk.img
```

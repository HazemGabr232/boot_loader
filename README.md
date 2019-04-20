# Simple Bootloader 
a simple bootloader for educational purpose    
 

run the following command to compile the code 

`nasm -f bin boot_sect_main.asm -o boot_sect_main.bin` 

and to try it run the following command 

`qemu-system-x86_64 boot_sect_main.bin -boot c`



# Creadits/Inspirations

- [tuhdo/os01](https://github.com/tuhdo/os01)

- [cfenollosa/os-tutorial](https://github.com/cfenollosa/os-tutorial)

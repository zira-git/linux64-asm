#!/bin/sh

nasm -f elf64 -o hello_world_object.o -l hello_world_lst.lst hello_world.asm
ld -static -o hello_world  hello_world.o

echo "Run it via ./hello_world"

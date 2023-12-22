#!/bin/bash
gcc -c tmp/*.c
ar -rcs liball.a *.o

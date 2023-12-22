#!/bin/bash
gcc -c tmp/*.c
ar -rc liball.a *.o

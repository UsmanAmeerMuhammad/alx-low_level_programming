0x00. C - Hello, World
C

    By: Julien Barbier
    Weight: 1
    Ongoing second chance project - started Jun 15, 2023 6:00 AM, must end by Jun 20, 2023 6:00 AM
    An auto review will be launched at the deadline

In a nutshell…

    Auto QA review: 0.0/41 mandatory & 0.0/12 optional
    Altogether:  0.0%
        Mandatory: 0.0%
        Optional: 0.0%
        Calculation:  0.0% + (0.0% * 0.0%)  == 0.0%

Concepts

For this project, we expect you to look at this concept:

    C programming

Resources

Read or watch:

    Everything you need to know to start with C.pdf (You do not have to learn everything in there yet, but make sure you read it entirely first)
    Dennis Ritchie
    “C” Programming Language: Brian Kernighan
    Why C Programming Is Awesome
    Learning to program in C part 1
    Learning to program in C part 2
    Understanding C program Compilation Process
    Betty Coding Style
    Hash-bang under the hood (Look at only after you finish consuming the other resources)
    Linus Torvalds on C vs. C++ (Look at only after you finish consuming the other resources)

man or help:

    gcc
    printf (3)
    puts
    putchar

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
General

    Why C programming is awesome
    Who invented C
    Who are Dennis Ritchie, Brian Kernighan and Linus Torvalds
    What happens when you type gcc main.c
    What is an entry point
    What is main
    How to print text using printf, puts and putchar
    How to get the size of a specific type using the unary operator sizeof
    How to compile using gcc
    What is the default program name when compiling with gcc
    What is the official C coding style and how to check your code with betty-style
    How to find the right header to include in your source code when using a standard library function
    How does the main function influence the return value of the program

Copyright - Plagiarism

    You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
    You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
    You are not allowed to publish any content of this project.
    Any form of plagiarism is strictly forbidden and will result in removal from the program.

Requirements
C

    Allowed editors: vi, vim, emacs
    All your files will be compiled on Ubuntu 20.04 LTS using gcc, using the options -Wall -Werror -Wextra -pedantic -std=gnu89
    All your files should end with a new line
    A README.md file at the root of the repo, containing a description of the repository
    A README.md file, at the root of the folder of this project, containing a description of the project
    There should be no errors and no warnings during compilation
    You are not allowed to use system
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl

Shell Scripts

    Allowed editors: vi, vim, emacs
    All your scripts will be tested on Ubuntu 20.04 LTS
    All your scripts should be exactly two lines long ($ wc -l file should print 2)
    All your files should end with a new line
    The first line of all your files should be exactly #!/bin/bash

More Info
Betty linter

To run the Betty linter just with command betty <filename>:

    Go to the Betty repository
    Clone the repo to your local machine
    cd into the Betty directory
    Install the linter with sudo ./install.sh
    emacs or vi a new file called betty, and copy the script below:

#!/bin/bash
# Simply a wrapper script to keep you from having to use betty-style
# and betty-doc separately on every item.
# Originally by Tim Britton (@wintermanc3r), multiargument added by
# Larry Madeo (@hillmonkey)

BIN_PATH="/usr/local/bin"
BETTY_STYLE="betty-style"
BETTY_DOC="betty-doc"

if [ "$#" = "0" ]; then
    echo "No arguments passed."
    exit 1
fi

for argument in "$@" ; do
    echo -e "\n========== $argument =========="
    ${BIN_PATH}/${BETTY_STYLE} "$argument"
    ${BIN_PATH}/${BETTY_DOC} "$argument"
done

    Once saved, exit file and change permissions to apply to all users with chmod a+x betty
    Move the betty file into /bin/ directory or somewhere else in your $PATH with sudo mv betty /bin/

You can now type betty <filename> to run the Betty linter!
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Preprocessor
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a script that runs a C file through the preprocessor and save the result into another file.

    The C file name will be saved in the variable $CFILE
    The output should be saved in the file c

julien@ubuntu:~/c/0x00$ cat main.c 
#include <stdio.h>

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    return (0);
}
julien@ubuntu:~/c/0x00$ export CFILE=main.c
julien@ubuntu:~/c/0x00$ ./0-preprocessor 
julien@ubuntu:~/c/0x00$ tail c
# 942 "/usr/include/stdio.h" 3 4

# 2 "main.c" 2


# 3 "main.c"
int main(void)
{
 return (0);
}
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 0-preprocessor

1. Compiler
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a script that compiles a C file but does not link.

    The C file name will be saved in the variable $CFILE
    The output file should be named the same as the C file, but with the extension .o instead of .c.
        Example: if the C file is main.c, the output file should be main.o

julien@ubuntu:~/c/0x00$ export CFILE=main.c
julien@ubuntu:~/c/0x00$ cat main.c
#include <stdio.h>

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    return (0);
}
julien@ubuntu:~/c/0x00$ ./1-compiler 
julien@ubuntu:~/c/0x00$ ls
0-preprocessor  1-compiler   c            main.o
Makefile               100-intel      main.c  main.s
julien@ubuntu:~/c/0x00$ cat -v main.o | head
^?ELF^B^A^A^@^@^@^@^@^@^@^@^@^A^@>^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^P^B^@^@^@^@^@^@^@^@^@^@@^@^@^@^@^@@^@^K^@^H^@UHM-^IM-eM-8^@^@^@^@]M-C^@GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609^@^T^@^@^@^@^@^@^@^AzR^@^Ax^P^A^[^L^G^HM-^P^A^@^@^\^@^@^@^\^@^@^@^@^@^@^@^K^@^@^@^@A^N^PM-^F^BC^M^FF^L^G^H^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^D^@M-qM-^?^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^B^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^C^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^E^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^F^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^C^@^D^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^H^@^@^@^R^@^A^@^@^@^@^@^@^@^@^@^K^@^@^@^@^@^@^@^@main.c^@main^@^@^@^@ ^@^@^@^@^@^@^@^B^@^@^@^B^@^@^@^@^@^@^@^@^@^@^@^@.symtab^@.strtab^@.shstrtab^@.text^@.data^@.bss^@.comment^@.note.GNU-stack^@.rela.eh_frame^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^[^@^@^@^A^@^@^@^F^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@@^@^@^@^@^@^@^@^K^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@!^@^@^@^A^@^@^@^C^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@K^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@'^@^@^@^H^@^@^@^C^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@K^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@,^@^@^@^A^@^@^@0^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@K^@^@^@^@^@^@^@5^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@5^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M-^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@J^@^@^@^A^@^@^@^B^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M-^@^@^@^@^@^@^@^@8^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^H^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@E^@^@^@^D^@^@^@@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M- ^A^@^@^@^@^@^@^X^@^@^@^@^@^@^@    ^@^@^@^F^@^@^@^H^@^@^@^@^@^@^@^X^@^@^@^@^@^@^@^Q^@^@^@^C^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M-8^A^@^@^@^@^@^@T^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^B^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M-8^@^@^@^@^@^@^@M-X^@^@^@^@^@^@^@
^@^@^@^H^@^@^@^H^@^@^@^@^@^@^@^X^@^@^@^@^@^@^@  ^@^@^@^C^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@M-^P^A^@^@^@^@^@^@^M^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@^A^@^@^@^@^@^@^@^@^@^@^@^@^@^@^@julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 1-compiler

2. Assembler
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a script that generates the assembly code of a C code and save it in an output file.

    The C file name will be saved in the variable $CFILE
    The output file should be named the same as the C file, but with the extension .s instead of .c.
        Example: if the C file is main.c, the output file should be main.s

julien@ubuntu:~/c/0x00$ export CFILE=main.c
julien@ubuntu:~/c/0x00$ cat main.c
#include <stdio.h>

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    return (0);
}
julien@ubuntu:~/c/0x00$ ./2-assembler
julien@ubuntu:~/c/0x00$ ls
0-preprocessor  1-compiler  2-assembler c  main.c  main.s  Makefile
julien@ubuntu:~/c/0x00$ cat main.s
    .file   "main.c"
    .text
    .globl  main
    .type   main, @function
main:
.LFB0:
    .cfi_startproc
    pushq   %rbp
    .cfi_def_cfa_offset 16
    .cfi_offset 6, -16
    movq    %rsp, %rbp
    .cfi_def_cfa_register 6
    movl    $0, %eax
    popq    %rbp
    .cfi_def_cfa 7, 8
    ret
    .cfi_endproc
.LFE0:
    .size   main, .-main
    .ident  "GCC: (Ubuntu 5.4.0-6ubuntu1~16.04.2) 5.4.0 20160609"
    .section    .note.GNU-stack,"",@progbits
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 2-assembler

3. Name
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a script that compiles a C file and creates an executable named cisfun.

    The C file name will be saved in the variable $CFILE

julien@ubuntu:~/c/0x00$ export CFILE=main.c
julien@ubuntu:~/c/0x00$ cat main.c
#include <stdio.h>

/**
 * main - Entry point
 *
 * Return: Always 0 (Success)
 */
int main(void)
{
    return (0);
}
julien@ubuntu:~/c/0x00$ ./3-name 
julien@ubuntu:~/c/0x00$ ls
0-preprocessor  1-compiler   3-name  cisfun  main.o  Makefile
100-intel       2-assembler  c       main.c  main.s
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 3-name

4. Hello, puts
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a C program that prints exactly "Programming is like building a multilingual puzzle, followed by a new line.

    Use the function puts
    You are not allowed to use printf
    Your program should end with the value 0

julien@ubuntu:~/c/0x00$ gcc -Wall -Werror -Wextra -pedantic -std=gnu89 4-puts.c && ./a.out
"Programming is like building a multilingual puzzle
julien@ubuntu:~/c/0x00$ echo $?
0
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 4-puts.c

5. Hello, printf
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a C program that prints exactly with proper grammar, but the outcome is a piece of art,, followed by a new line.

    Use the function printf
    You are not allowed to use the function puts
    Your program should return 0
    Your program should compile without warning when using the -Wall gcc option

julien@ubuntu:~/c/0x00$ gcc -Wall -Werror -Wextra -pedantic -std=gnu89 5-printf.c
julien@ubuntu:~/c/0x00$ ./a.out 
with proper grammar, but the outcome is a piece of art,
julien@ubuntu:~/c/0x00$ echo $?
0
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 5-printf.c

6. Size is not grandeur, and territory does not make a nation
mandatory
Score: 0.0% (Checks completed: 0.0%)

Write a C program that prints the size of various types on the computer it is compiled and run on.

    You should produce the exact same output as in the example
    Warnings are allowed
    Your program should return 0
    You might have to install the package libc6-dev-i386 on your Linux to test the -m32 gcc option

julien@ubuntu:~/c/0x00$ gcc 6-size.c -m32 -o size32 2> /tmp/32
julien@ubuntu:~/c/0x00$ gcc 6-size.c -m64 -o size64 2> /tmp/64
julien@ubuntu:~/c/0x00$ ./size32
Size of a char: 1 byte(s)
Size of an int: 4 byte(s)
Size of a long int: 4 byte(s)
Size of a long long int: 8 byte(s)
Size of a float: 4 byte(s)
julien@ubuntu:~/c/0x00$ ./size64
Size of a char: 1 byte(s)
Size of an int: 4 byte(s)
Size of a long int: 8 byte(s)
Size of a long long int: 8 byte(s)
Size of a float: 4 byte(s)
julien@ubuntu:~/c/0x00$ echo $?
0
julien@ubuntu:~/c/0x00$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x00-hello_world
    File: 6-size.c


0x01. C - Variables, if, else, while
C

    By: Julien Barbier
    Weight: 1
    Project over - took place from Jun 16, 2023 6:00 AM to Jun 17, 2023 6:00 AM
    An auto review will be launched at the deadline

In a nutshell…

    Auto QA review: 31.5/70 mandatory & 10.5/21 optional
    Altogether:  67.5%
        Mandatory: 45.0%
        Optional: 50.0%
        Calculation:  45.0% + (45.0% * 50.0%)  == 67.5%

Resources

Read or watch:

    Everything you need to know to start with C.pdf (You do not have to learn everything in there yet, but make sure you read it entirely first and make sure you understand the slides: “comments”, “Data types | Integer types”, “Declaration”, “Characters”, “Arithmetic operators”, “Variables assignments”, “Comparisons”, “Logical operators”, “if, if…else”, “while loops”.)
    Keywords and identifiers
    integers
    Arithmetic Operators in C
    If statements in C
    if…else statement
    Relational operators
    Logical operators
    while loop in C
    While loop

man or help:

    ascii (You do not need to learn about scanf, getc, getchar, EOF, EXIT_SUCCESS, time, rand, srand, RAND_MAX, for loops, do...while loops, functions.)

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
General

    What are the arithmetic operators and how to use them
    What are the logical operators (sometimes called boolean operators) and how to use them
    What the the relational operators and how to use them
    What values are considered TRUE and FALSE in C
    What are the boolean operators and how to use them
    How to use the if, if ... else statements
    How to use comments
    How to declare variables of types char, int, unsigned int
    How to assign values to variables
    How to print the values of variables of type char, int, unsigned int with printf
    How to use the while loop
    How to use variables with the while loop
    How to print variables using printf
    What is the ASCII character set
    What are the purpose of the gcc flags -m32 and -m64

Copyright - Plagiarism

    You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
    You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
    You are not allowed to publish any content of this project.
    Any form of plagiarism is strictly forbidden and will result in removal from the program.

Requirements
General

    Allowed editors: vi, vim, emacs
    All your files will be compiled on Ubuntu 20.04 LTS using gcc, using the options -Wall -Werror -Wextra -pedantic -std=gnu89
    All your files should end with a new line
    A README.md file, at the root of the folder of the project
    There should be no errors and no warnings during compilation
    You are not allowed to use system
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Positive anything is better than negative nothing
mandatory
Score: 50.0% (Checks completed: 100.0%)

This program will assign a random number to the variable n each time it is executed. Complete the source code in order to print whether the number stored in the variable n is positive or negative.

    You can find the source code here
    The variable n will store a different value every time you will run this program
    You don’t have to understand what rand, srand, RAND_MAX do. Please do not touch this code
    The output of the program should be:
        The number, followed by
            if the number is greater than 0: is positive
            if the number is 0: is zero
            if the number is less than 0: is negative
        followed by a new line

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 0-positive_or_negative.c -o 0-positive_or_negative
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
-520693284 is negative
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
-973398895 is negative
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
-199220452 is negative
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
561319348 is positive
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
561319348 is positive
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
266853958 is positive
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
-48147767 is negative
julien@ubuntu:~/0x01$ ./0-positive_or_negative 
0 is zero
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 0-positive_or_negative.c

1. The last digit
mandatory
Score: 50.0% (Checks completed: 100.0%)

This program will assign a random number to the variable n each time it is executed. Complete the source code in order to print the last digit of the number stored in the variable n.

    You can find the source code here
    The variable n will store a different value every time you run this program
    You don’t have to understand what rand, srand, and RAND_MAX do. Please do not touch this code
    The output of the program should be:
        The string Last digit of, followed by
        n, followed by
        the string is, followed by
            if the last digit of n is greater than 5: the string and is greater than 5
            if the last digit of n is 0: the string and is 0
            if the last digit of n is less than 6 and not 0: the string and is less than 6 and not 0
        followed by a new line

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 1-last_digit.c -o 1-last_digit
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 629438752 is 2 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -748255693 is -3 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -1052791662 is -2 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -284805734 is -4 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -284805734 is -4 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 491506926 is 6 and is greater than 5
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 954249937 is 7 and is greater than 5
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 652334952 is 2 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -729688197 is -7 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of -729688197 is -7 and is less than 6 and not 0
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 45528266 is 6 and is greater than 5
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 45528266 is 6 and is greater than 5
julien@ubuntu:~/0x01$ ./1-last_digit 
Last digit of 809065140 is 0 and is 0
julien@ubuntu:~/0x01$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 1-last_digit.c

2. I sometimes suffer from insomnia. And when I can't fall asleep, I play what I call the alphabet game
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints the alphabet in lowercase, followed by a new line.

    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar twice in your code

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 2-print_alphabet.c -o 2-print_alphabet
julien@ubuntu:~/0x01$ ./2-print_alphabet 
abcdefghijklmnopqrstuvwxyz
julien@ubuntu:~/0x01$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 2-print_alphabet.c

3. alphABET
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints the alphabet in lowercase, and then in uppercase, followed by a new line.

    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar three times in your code

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 3-print_alphabets.c -o 3-print_alphabets
julien@ubuntu:~/0x01$ ./3-print_alphabets | cat -e
abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ$
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 3-print_alphabets.c

4. When I was having that alphabet soup, I never thought that it would pay off
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints the alphabet in lowercase, followed by a new line.

    Print all the letters except q and e
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar twice in your code

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 4-print_alphabt.c -o 4-print_alphabt
julien@ubuntu:~/0x01$ ./4-print_alphabt 
abcdfghijklmnoprstuvwxyz
julien@ubuntu:~/0x01$ ./4-print_alphabt | grep [eq]
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 4-print_alphabt.c

5. Numbers
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all single digit numbers of base 10 starting from 0, followed by a new line.

    All your code should be in the main function

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 5-print_numbers.c -o 5-print_numbers
julien@ubuntu:~/0x01$ ./5-print_numbers 
0123456789
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 5-print_numbers.c

6. Numberz
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all single digit numbers of base 10 starting from 0, followed by a new line.

    You are not allowed to use any variable of type char
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    You can only use putchar twice in your code
    All your code should be in the main function

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 6-print_numberz.c -o 6-print_numberz
julien@ubuntu:~/0x01$ ./6-print_numberz 
0123456789
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 6-print_numberz.c

7. Smile in the mirror
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints the lowercase alphabet in reverse, followed by a new line.

    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar twice in your code

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 7-print_tebahpla.c -o 7-print_tebahpla
julien@ubuntu:~/0x01$ ./7-print_tebahpla
zyxwvutsrqponmlkjihgfedcba
julien@ubuntu:~/0x01$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 7-print_tebahpla.c

8. Hexadecimal
mandatory
Score: 0.00% (Checks completed: 0.00%)

Write a program that prints all the numbers of base 16 in lowercase, followed by a new line.

    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar three times in your code

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 8-print_base16.c -o 8-print_base16
julien@ubuntu:~/0x01$ ./8-print_base16
0123456789abcdef
julien@ubuntu:~/0x01$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 8-print_base16.c

9. Patience, persistence and perspiration make an unbeatable combination for success
mandatory
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all possible combinations of single-digit numbers.

    Numbers must be separated by ,, followed by a space
    Numbers should be printed in ascending order
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    All your code should be in the main function
    You can only use putchar four times maximum in your code
    You are not allowed to use any variable of type char

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 9-print_comb.c -o 9-print_comb
julien@ubuntu:~/0x01$ ./9-print_comb | cat -e
0, 1, 2, 3, 4, 5, 6, 7, 8, 9$
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 9-print_comb.c

10. Inventing is a combination of brains and materials. The more brains you use, the less material you need
#advanced
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all possible different combinations of two digits.

    Numbers must be separated by ,, followed by a space
    The two digits must be different
    01 and 10 are considered the same combination of the two digits 0 and 1
    Print only the smallest combination of two digits
    Numbers should be printed in ascending order, with two digits
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    You can only use putchar five times maximum in your code
    You are not allowed to use any variable of type char
    All your code should be in the main function

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 100-print_comb3.c -o 100-print_comb3
julien@ubuntu:~/0x01$ ./100-print_comb3
01, 02, 03, 04, 05, 06, 07, 08, 09, 12, 13, 14, 15, 16, 17, 18, 19, 23, 24, 25, 26, 27, 28, 29, 34, 35, 36, 37, 38, 39, 45, 46, 47, 48, 49, 56, 57, 58, 59, 67, 68, 69, 78, 79, 89
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 100-print_comb3.c

11. The success combination in business is: Do what you do better... and: do more of what you do...
#advanced
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all possible different combinations of three digits.

    Numbers must be separated by ,, followed by a space
    The three digits must be different
    012, 120, 102, 021, 201, 210 are considered the same combination of the three digits 0, 1 and 2
    Print only the smallest combination of three digits
    Numbers should be printed in ascending order, with three digits
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    You can only use putchar six times maximum in your code
    You are not allowed to use any variable of type char
    All your code should be in the main function

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 101-print_comb4.c -o 101-print_comb4
julien@ubuntu:~/0x01$ ./101-print_comb4
012, 013, 014, 015, 016, 017, 018, 019, 023, 024, 025, 026, 027, 028, 029, 034, 035, 036, 037, 038, 039, 045, 046, 047, 048, 049, 056, 057, 058, 059, 067, 068, 069, 078, 079, 089, 123, 124, 125, 126, 127, 128, 129, 134, 135, 136, 137, 138, 139, 145, 146, 147, 148, 149, 156, 157, 158, 159, 167, 168, 169, 178, 179, 189, 234, 235, 236, 237, 238, 239, 245, 246, 247, 248, 249, 256, 257, 258, 259, 267, 268, 269, 278, 279, 289, 345, 346, 347, 348, 349, 356, 357, 358, 359, 367, 368, 369, 378, 379, 389, 456, 457, 458, 459, 467, 468, 469, 478, 479, 489, 567, 568, 569, 578, 579, 589, 678, 679, 689, 789
julien@ubuntu:~/0x01$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 101-print_comb4.c

12. Software is eating the World
#advanced
Score: 50.0% (Checks completed: 100.0%)

Write a program that prints all possible combinations of two two-digit numbers.

    The numbers should range from 0 to 99
    The two numbers should be separated by a space
    All numbers should be printed with two digits. 1 should be printed as 01
    The combination of numbers must be separated by comma, followed by a space
    The combinations of numbers should be printed in ascending order
    00 01 and 01 00 are considered as the same combination of the numbers 0 and 1
    You can only use the putchar function (every other function (printf, puts, etc…) is forbidden)
    You can only use putchar eight times maximum in your code
    You are not allowed to use any variable of type char
    All your code should be in the main function

julien@ubuntu:~/0x01$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 102-print_comb5.c -o 102-print_comb5
julien@ubuntu:~/0x01$ ./102-print_comb5
00 01, 00 02, 00 03, 00 04, 00 05, 00 06, 00 07, 00 08, 00 09, 00 10, 00 11, [...] 40 91, 40 92, 40 93, 40 94, 40 95, 40 96, 40 97, 40 98, 40 99, 41 42, 41 43, 41 44, 41 45, 41 46, 41 47, 41 48, 41 49, 41 50, 41 51, 41 52, 41 53 [...] 93 95, 93 96, 93 97, 93 98, 93 99, 94 95, 94 96, 94 97, 94 98, 94 99, 95 96, 95 97, 95 98, 95 99, 96 97, 96 98, 96 99, 97 98, 97 99, 98 99

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x01-variables_if_else_while
    File: 102-print_comb5.c


0x02. C - Functions, nested loops
C

    By: Julien Barbier
    Weight: 1
    Project over - took place from Jun 20, 2023 6:00 AM to Jun 21, 2023 6:00 AM
    An auto review will be launched at the deadline

In a nutshell…

    Auto QA review: 68.25/106 mandatory & 0.0/36 optional
    Altogether:  64.39%
        Mandatory: 64.39%
        Optional: 0.0%
        Calculation:  64.39% + (64.39% * 0.0%)  == 64.39%

Resources

Read or watch:

    Nested while loops
    C - Functions
    Learning to Program in C (Part 06) (stop at 14:00)
    What is the purpose of a function prototype?
    C - Header Files (stop before the “Once-Only Headers” paragraph)

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
General

    What are nested loops and how to use them
    What is a function and how do you use functions
    What is the difference between a declaration and a definition of a function
    What is a prototype
    Scope of variables
    What are the gcc flags -Wall -Werror -pedantic -Wextra -std=gnu89
    What are header files and how to to use them with #include

Requirements
General

    Allowed editors: vi, vim, emacs
    All your files will be compiled on Ubuntu 20.04 LTS using gcc, using the options -Wall -Werror -Wextra -pedantic -std=gnu89
    All your files should end with a new line
    A README.md file, at the root of the folder of the project is mandatory
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
    You are not allowed to use global variables
    No more than 5 functions per file
    You are not allowed to use the standard library. Any use of functions like printf, puts, etc… is forbidden
    You are allowed to use _putchar
    You don’t have to push _putchar.c, we will use our file. If you do it won’t be taken into account
    In the following examples, the main.c files are shown as examples. You can use them to test your functions, but you don’t have to push them to your repo (if you do we won’t take them into account). We will use our own main.c files at compilation. Our main.c files might be different from the one shown in the examples
    The prototypes of all your functions and the prototype of the function _putchar should be included in your header file called main.h
    Don’t forget to push your header file

Copyright - Plagiarism

    You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
    You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
    You are not allowed to publish any content of this project.
    Any form of plagiarism is strictly forbidden and will result in removal from the program.

More Info

You do not have to understand the call by reference (address), stack, static variables, recursions or arrays, yet.
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. _putchar
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a program that prints _putchar, followed by a new line.

    The program should return 0

julien@ubuntu:~/0x02$  gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 0-putchar.c -o 0-putchar
julien@ubuntu:~/0x02$ ./0-putchar 
_putchar
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 0-putchar.c

1. I sometimes suffer from insomnia. And when I can't fall asleep, I play what I call the alphabet game
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints the alphabet, in lowercase, followed by a new line.

    Prototype: void print_alphabet(void);
    You can only use _putchar twice in your code

julien@ubuntu:~/0x02$ cat 1-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_alphabet();
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 1-main.c 1-alphabet.c -o 1-alphabet
julien@ubuntu:~/0x02$ ./1-alphabet 
abcdefghijklmnopqrstuvwxyz
julien@ubuntu:~/0x02$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 1-alphabet.c

2. 10 x alphabet
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints 10 times the alphabet, in lowercase, followed by a new line.

    Prototype: void print_alphabet_x10(void);
    You can only use _putchar twice in your code

julien@ubuntu:~/0x02$ cat 2-main.c
#include "main.h"

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    print_alphabet_x10();
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 2-main.c 2-print_alphabet_x10.c -o 2-alphabet_x10
julien@ubuntu:~/0x02$ ./2-alphabet_x10 
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
abcdefghijklmnopqrstuvwxyz
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 2-print_alphabet_x10.c

3. islower
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that checks for lowercase character.

    Prototype: int _islower(int c);
    Returns 1 if c is lowercase
    Returns 0 otherwise

FYI: The standard library provides a similar function: islower. Run man islower to learn more.

julien@ubuntu:~/0x02$ cat 3-main.c 
#include "main.h"

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    int r;

    r = _islower('H');
    _putchar(r + '0');
    r = _islower('o');
    _putchar(r + '0');
    r = _islower(108);
    _putchar(r + '0');
    _putchar('\n');
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 3-main.c 3-islower.c -o 3-islower
julien@ubuntu:~/0x02$ ./3-islower 
011
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 3-islower.c

4. isalpha
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that checks for alphabetic character.

    Prototype: int _isalpha(int c);
    Returns 1 if c is a letter, lowercase or uppercase
    Returns 0 otherwise

FYI: The standard library provides a similar function: isalpha. Run man isalpha to learn more.

julien@ubuntu:~/0x02$ cat 4-main.c 
#include "main.h"

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    int r;

    r = _isalpha('H');
    _putchar(r + '0');
    r = _isalpha('o');
    _putchar(r + '0');
    r = _isalpha(108);
    _putchar(r + '0');
    r = _isalpha(';');
    _putchar(r + '0');
    _putchar('\n');
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 4-main.c 4-isalpha.c -o 4-isalpha
julien@ubuntu:~/0x02$ ./4-isalpha 
1110
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 4-isalpha.c

5. Sign
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints the sign of a number.

    Prototype: int print_sign(int n);
    Returns 1 and prints + if n is greater than zero
    Returns 0 and prints 0 if n is zero
    Returns -1 and prints - if n is less than zero

julien@ubuntu:~/0x02$ cat 5-main.c
#include "main.h"

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    int r;

    r = print_sign(98);
    _putchar(',');
    _putchar(' ');
    _putchar(r + '0');
    _putchar('\n');
    r = print_sign(0);
    _putchar(',');
    _putchar(' ');
    _putchar(r + '0');
    _putchar('\n');
    r = print_sign(0xff);
    _putchar(',');
    _putchar(' ');
    _putchar(r + '0');
    _putchar('\n');
    r = print_sign(-1);
    _putchar(',');
    _putchar(' ');
    _putchar(r + '0');
    _putchar('\n');
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 5-main.c 5-sign.c -o 5-sign
julien@ubuntu:~/0x02$ ./5-sign 
+, 1
0, 0
+, 1
-, /
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 5-sign.c

6. There is no such thing as absolute value in this world. You can only estimate what a thing is worth to you
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that computes the absolute value of an integer.

    Prototype: int _abs(int);

FYI: The standard library provides a similar function: abs. Run man abs to learn more.

julien@ubuntu:~/0x02$ cat 6-main.c
#include "main.h"
#include <stdio.h>

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    int r;

    r = _abs(-1);
    printf("%d\n", r);
    r = _abs(0);
    printf("%d\n", r);
    r = _abs(1);
    printf("%d\n", r);
    r = _abs(-98);
    printf("%d\n", r);
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 6-main.c 6-abs.c -o 6-abs
julien@ubuntu:~/0x02$ ./6-abs 
1
0
1
98
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 6-abs.c

7. There are only 3 colors, 10 digits, and 7 notes; it's what we do with them that's important
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints the last digit of a number.

    Prototype: int print_last_digit(int);
    Returns the value of the last digit

julien@ubuntu:~/0x02$ cat 7-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    int r;

    print_last_digit(98);
    print_last_digit(0);
    r = print_last_digit(-1024);
    _putchar('0' + r);
    _putchar('\n');
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 7-main.c 7-print_last_digit.c -o 7-last_digit
julien@ubuntu:~/0x02$ ./7-last_digit 
8044
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 7-print_last_digit.c

8. I'm federal agent Jack Bauer, and today is the longest day of my life
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints every minute of the day of Jack Bauer, starting from 00:00 to 23:59.

    Prototype: void jack_bauer(void);
    You can listen to this soundtrack while coding :)

julien@ubuntu:~/0x02$ cat 8-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    jack_bauer();
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 8-main.c 8-24_hours.c -o 8-24
julien@ubuntu:~/0x02$ ./8-24 | head
00:00
00:01
00:02
00:03
00:04
00:05
00:06
00:07
00:08
00:09
julien@ubuntu:~/0x02$ ./8-24 | tail
23:50
23:51
23:52
23:53
23:54
23:55
23:56
23:57
23:58
23:59
julien@ubuntu:~/0x02$ ./8-24 | wc -l
1440
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 8-24_hours.c

9. Learn your times table
mandatory
Score: 54.17% (Checks completed: 83.33%)

Write a function that prints the 9 times table, starting with 0.

    Prototype: void times_table(void);
    Format: see example

julien@ubuntu:~/0x02$ cat 9-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    times_table();
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 9-main.c 9-times_table.c -o 9-times_table
ulien@ubuntu:~/0x02$ ./9-times_table | cat -e
0,  0,  0,  0,  0,  0,  0,  0,  0,  0$
0,  1,  2,  3,  4,  5,  6,  7,  8,  9$
0,  2,  4,  6,  8, 10, 12, 14, 16, 18$
0,  3,  6,  9, 12, 15, 18, 21, 24, 27$
0,  4,  8, 12, 16, 20, 24, 28, 32, 36$
0,  5, 10, 15, 20, 25, 30, 35, 40, 45$
0,  6, 12, 18, 24, 30, 36, 42, 48, 54$
0,  7, 14, 21, 28, 35, 42, 49, 56, 63$
0,  8, 16, 24, 32, 40, 48, 56, 64, 72$
0,  9, 18, 27, 36, 45, 54, 63, 72, 81$
julien@ubuntu:~/0x02$ ./9-times_table | tr ' ' . | cat -e
0,..0,..0,..0,..0,..0,..0,..0,..0,..0$
0,..1,..2,..3,..4,..5,..6,..7,..8,..9$
0,..2,..4,..6,..8,.10,.12,.14,.16,.18$
0,..3,..6,..9,.12,.15,.18,.21,.24,.27$
0,..4,..8,.12,.16,.20,.24,.28,.32,.36$
0,..5,.10,.15,.20,.25,.30,.35,.40,.45$
0,..6,.12,.18,.24,.30,.36,.42,.48,.54$
0,..7,.14,.21,.28,.35,.42,.49,.56,.63$
0,..8,.16,.24,.32,.40,.48,.56,.64,.72$
0,..9,.18,.27,.36,.45,.54,.63,.72,.81$
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 9-times_table.c

10. a + b
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that adds two integers and returns the result.

    Prototype: int add(int, int);

julien@ubuntu:~/$ cat 10-main.c
#include "main.h"
#include <stdio.h>

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    int n;

    n = add(89, 9);
    printf("%d\n", n);
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 10-main.c 10-add.c -o 10-add
julien@ubuntu:~/0x02$ ./10-add 
98
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 10-add.c

11. 98 Battery Street, the OG
mandatory
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints all natural numbers from n to 98, followed by a new line.

    Prototype: void print_to_98(int n);
    Numbers must be separated by a comma, followed by a space
    Numbers should be printed in order
    The first printed number should be the number passed to your function
    The last printed number should be 98
    You are allowed to use the standard library

julien@ubuntu:~/0x02$ cat 11-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_to_98(0);
    print_to_98(98);
    print_to_98(111);
    print_to_98(81);
    print_to_98(-10);
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 11-main.c 11-print_to_98.c -o 11-98
julien@ubuntu:~/0x02$ ./11-98 
0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98
98
111, 110, 109, 108, 107, 106, 105, 104, 103, 102, 101, 100, 99, 98
81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98
-10, -9, -8, -7, -6, -5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, 63, 64, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 91, 92, 93, 94, 95, 96, 97, 98
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 11-print_to_98.c

12. The World looks like a multiplication-table, or a mathematical equation, which, turn it how you will, balances itself
#advanced
Score: 0.0% (Checks completed: 0.0%)

Write a function that prints the n times table, starting with 0.

    Prototype: void print_times_table(int n);
    If n is greater than 15 or less than 0 the function should not print anything
    Format: see example

julien@ubuntu:~/0x02$ cat 100-main.c
#include "main.h"

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    print_times_table(3);
    _putchar('\n');
    print_times_table(5);
    _putchar('\n');
    print_times_table(98);
    _putchar('\n');
    print_times_table(12);  
    return (0);
}
julien@ubuntu:~/0x02$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 100-main.c 100-times_table.c -o 100-times_table
julien@ubuntu:~/0x02$ ./100-times_table 
0,   0,   0,   0
0,   1,   2,   3
0,   2,   4,   6
0,   3,   6,   9

0,   0,   0,   0,   0,   0
0,   1,   2,   3,   4,   5
0,   2,   4,   6,   8,  10
0,   3,   6,   9,  12,  15
0,   4,   8,  12,  16,  20
0,   5,  10,  15,  20,  25


0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0,   0
0,   1,   2,   3,   4,   5,   6,   7,   8,   9,  10,  11,  12
0,   2,   4,   6,   8,  10,  12,  14,  16,  18,  20,  22,  24
0,   3,   6,   9,  12,  15,  18,  21,  24,  27,  30,  33,  36
0,   4,   8,  12,  16,  20,  24,  28,  32,  36,  40,  44,  48
0,   5,  10,  15,  20,  25,  30,  35,  40,  45,  50,  55,  60
0,   6,  12,  18,  24,  30,  36,  42,  48,  54,  60,  66,  72
0,   7,  14,  21,  28,  35,  42,  49,  56,  63,  70,  77,  84
0,   8,  16,  24,  32,  40,  48,  56,  64,  72,  80,  88,  96
0,   9,  18,  27,  36,  45,  54,  63,  72,  81,  90,  99, 108
0,  10,  20,  30,  40,  50,  60,  70,  80,  90, 100, 110, 120
0,  11,  22,  33,  44,  55,  66,  77,  88,  99, 110, 121, 132
0,  12,  24,  36,  48,  60,  72,  84,  96, 108, 120, 132, 144
julien@ubuntu:~/0x02$ ./100-times_table | tr ' ' . | cat -e
0,...0,...0,...0$
0,...1,...2,...3$
0,...2,...4,...6$
0,...3,...6,...9$
$
0,...0,...0,...0,...0,...0$
0,...1,...2,...3,...4,...5$
0,...2,...4,...6,...8,..10$
0,...3,...6,...9,..12,..15$
0,...4,...8,..12,..16,..20$
0,...5,..10,..15,..20,..25$
$
$
0,...0,...0,...0,...0,...0,...0,...0,...0,...0,...0,...0,...0$
0,...1,...2,...3,...4,...5,...6,...7,...8,...9,..10,..11,..12$
0,...2,...4,...6,...8,..10,..12,..14,..16,..18,..20,..22,..24$
0,...3,...6,...9,..12,..15,..18,..21,..24,..27,..30,..33,..36$
0,...4,...8,..12,..16,..20,..24,..28,..32,..36,..40,..44,..48$
0,...5,..10,..15,..20,..25,..30,..35,..40,..45,..50,..55,..60$
0,...6,..12,..18,..24,..30,..36,..42,..48,..54,..60,..66,..72$
0,...7,..14,..21,..28,..35,..42,..49,..56,..63,..70,..77,..84$
0,...8,..16,..24,..32,..40,..48,..56,..64,..72,..80,..88,..96$
0,...9,..18,..27,..36,..45,..54,..63,..72,..81,..90,..99,.108$
0,..10,..20,..30,..40,..50,..60,..70,..80,..90,.100,.110,.120$
0,..11,..22,..33,..44,..55,..66,..77,..88,..99,.110,.121,.132$
0,..12,..24,..36,..48,..60,..72,..84,..96,.108,.120,.132,.144$
julien@ubuntu:~/0x02$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 100-times_table.c

13. Nature made the natural numbers; All else is the work of women
#advanced
Score: 0.0% (Checks completed: 0.0%)

If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23. Write a program that computes and prints the sum of all the multiples of 3 or 5 below 1024 (excluded), followed by a new line.

    You are allowed to use the standard library

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 101-natural.c

14. In computer class, the first assignment was to write a program to print the first 100 Fibonacci numbers. Instead, I wrote a program that would steal passwords of students. My teacher gave me an A
#advanced
Score: 0.0% (Checks completed: 0.0%)

Write a program that prints the first 50 Fibonacci numbers, starting with 1 and 2, followed by a new line.

    The numbers must be separated by comma, followed by a space , 
    You are allowed to use the standard library

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 102-fibonacci.c

15. Even Liber Abbaci
#advanced
Score: 0.0% (Checks completed: 0.0%)

Each new term in the Fibonacci sequence is generated by adding the previous two terms. By starting with 1 and 2, the first 10 terms will be: 1, 2, 3, 5, 8, 13, 21, 34, 55, 89. By considering the terms in the Fibonacci sequence whose values do not exceed 4,000,000, write a program that finds and prints the sum of the even-valued terms, followed by a new line.

    You are allowed to use the standard library

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 103-fibonacci.c

16. In computer class, the first assignment was to write a program to print the first 100 Fibonacci numbers. Instead, I wrote a program that would steal passwords of students. My teacher gave me an A+
#advanced
Score: 0.0% (Checks completed: 0.0%)

Write a program that finds and prints the first 98 Fibonacci numbers, starting with 1 and 2, followed by a new line.

    The numbers should be separated by comma, followed by a space ,
    You are allowed to use the standard library
    You are not allowed to use any other library (You can’t use GMP etc…)
    You are not allowed to use long long, malloc, pointers, arrays/tables, or structures
    You are not allowed to hard code any Fibonacci number (except for 1 and 2)

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x02-functions_nested_loops
    File: 104-fibonacci.c


0x03. C - Debugging
CDebugging

    By: Carrie Ybay
    Weight: 1
    Project over - took place from Jun 20, 2023 6:00 AM to Jun 23, 2023 6:00 AM
    An auto review will be launched at the deadline

In a nutshell…

    Auto QA review: 0.0/40 mandatory
    Altogether:  0.0%
        Mandatory: 0.0%
        Optional: no optional tasks

Resources

Read or watch:

    Debugging
    Rubber Duck Debugging

Debugging is the process of finding and fixing errors in software that prevents it from running correctly. As you become a more advanced programmer and an industry engineer, you will learn how to use debugging tools such as gdb or built-in tools that IDEs have. However, it’s important to understand the concepts and processes of debugging manually.

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
General

    What is debugging
    What are some methods of debugging manually
    How to read the error messages

Copyright - Plagiarism

    You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
    You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
    You are not allowed to publish any content of this project.
    Any form of plagiarism is strictly forbidden and will result in removal from the program.

Requirements
General

    Allowed editors: vi, vim, emacs
    All your files will be compiled on Ubuntu 20.04 LTS using gcc, using the options -Wall -Werror -Wextra -pedantic -std=gnu89
    All your files should end with a new line
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
    A README.md file at the root of the repo, containing a description of the repository
    A README.md file, at the root of the folder of this project (i.e. 0x03-debugging), describing what this project is about

Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. Multiple mains
mandatory
Score: 0.0% (Checks completed: 0.0%)

In most projects, we often give you only one main file to test with. For example, this main file is a test for a postitive_or_negative() function similar to the one you worked with in an earlier C project:

carrie@ubuntu:/debugging$ cat main.c
#include "main.h"

/**
* main - tests function that prints if integer is positive or negative
* Return: 0
*/

int main(void)
{
        int i;

        i = 98;
        positive_or_negative(i);

        return (0);
}
carrie@ubuntu:/debugging$

carrie@ubuntu:/debugging$ cat main.h
#ifndef MAIN_H
#define MAIN_H

#include <stdio.h>

void positive_or_negative(int i);

#endif /* MAIN_H */
carrie@ubuntu:/debugging$ 

carrie@ubuntu:/debugging$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 positive_or_negative.c main.c
carrie@ubuntu:/debugging$ ./a.out
98 is positive
carrie@ubuntu:/debugging$

Based on the main.c file above, create a file named 0-main.c. This file must test that the function positive_or_negative() gives the correct output when given a case of 0.

You are not coding the solution / function, you’re just testing it! However, you can adapt your function from 0x01. C - Variables, if, else, while - Task #0 to compile with this main file to test locally.

    You only need to upload 0-main.c and main.h for this task. We will provide our own positive_or_negative() function.
    You are not allowed to add or remove lines of code, you may change only one line in this task.

carrie@ubuntu:/debugging$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 positive_or_negative.c 0-main.c -o 0-main
carrie@ubuntu:/debugging$ ./0-main
0 is zero
carrie@ubuntu:/debugging$ wc -l 0-main.c
16 1-main.c
carrie@ubuntu:/debugging$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x03-debugging
    File: 0-main.c, main.h

1. Like, comment, subscribe
mandatory
Score: 0.0% (Checks completed: 0.0%)

Copy this main file. Comment out (don’t delete it!) the part of the code that is causing the output to go into an infinite loop.

    Don’t add or remove any lines of code, as we will be checking your line count. You are only allowed to comment out existing code.
    You do not have to compile with -Wall -Werror -Wextra -pedantic for this task.

carrie@ubuntu:/debugging$ cat 1-main.c
#include <stdio.h>

/**
* main - causes an infinite loop
* Return: 0
*/

int main(void)
{
        int i;

        printf("Infinite loop incoming :(\n");

        i = 0;

        while (i < 10)
        {
                putchar(i);
        }

        printf("Infinite loop avoided! \\o/\n");

        return (0);
}
carrie@ubuntu:/debugging$

Your output should look like this:

carrie@ubuntu:/debugging$ gcc -std=gnu89 1-main.c -o 1-main
carrie@ubuntu:/debugging$ ./1-main
Infinite loop incoming :(
Infinite loop avoided! \o/
carrie@ubuntu:/debugging$ wc -l 1-main.c
24 1-main.c
carrie@ubuntu:/debugging$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x03-debugging
    File: 1-main.c

2. 0 > 972?
mandatory
Score: 0.0% (Checks completed: 0.0%)

This program prints the largest of three integers.

carrie@ubuntu:/debugging$ cat 2-main.c
#include <stdio.h>
#include "main.h"

/**
* main - prints the largest of 3 integers
* Return: 0
*/

int main(void)
{
        int a, b, c;
        int largest;

        a = 972;
        b = -98;
        c = 0;

        largest = largest_number(a, b, c);

        printf("%d is the largest number\n", largest);

        return (0);
}
carrie@ubuntu:/debugging$

carrie@ubuntu:/debugging$ cat 2-largest_number.c
#include "main.h"

/**
 * largest_number - returns the largest of 3 numbers
 * @a: first integer
 * @b: second integer
 * @c: third integer
 * Return: largest number
 */

int largest_number(int a, int b, int c)
{
    int largest;

    if (a > b && b > c)
    {
        largest = a;
    }
    else if (b > a && a > c)
    {
        largest = b;
    }
    else
    {
        largest = c;
    }

    return (largest);
}

carrie@ubuntu:/debugging$

carrie@ubuntu:/debugging$ gcc -Wall -Werror -Wextra -pedantic -std=gnu89 2-largest_number.c 2-main.c -o 2-main
carrie@ubuntu:/debugging$ ./2-main
0 is the largest number
carrie@ubuntu:/debugging$

? That’s definitely not right.

Fix the code in 2-largest_number.c so that it correctly prints out the largest of three numbers, no matter the case.

    Line count will not be checked for this task.

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x03-debugging
    File: 2-largest_number.c, main.h

3. Leap year
mandatory
Score: 0.0% (Checks completed: 0.0%)

This program converts a date to the day of year and determines how many days are left in the year, taking leap year into consideration.

carrie@ubuntu:/debugging$ cat 3-main_a.c
#include <stdio.h>
#include "main.h"

/**
* main - takes a date and prints how many days are left in the year, taking
* leap years into account
* Return: 0
*/

int main(void)
{
    int month;
    int day;
    int year;

    month = 4;
    day = 01;
    year = 1997;

    printf("Date: %02d/%02d/%04d\n", month, day, year);

    day = convert_day(month, day);

    print_remaining_days(month, day, year);

    return (0);
}

carrie@ubuntu:/debugging$

carrie@ubuntu:/debugging$ cat 3-convert_day.c
#include "main.h"

/**
* convert_day - converts day of month to day of year, without accounting
* for leap year
* @month: month in number format
* @day: day of month
* Return: day of year
*/

int convert_day(int month, int day)
{
    switch (month)
    {
        case 2:
            day = 31 + day;
            break;
        case 3:
            day = 59 + day;
            break;
        case 4:
            day = 90 + day;
            break;
        case 5:
            day = 120 + day;
            break;
        case 6:
            day = 151 + day;
            break;
        case 7:
            day = 181 + day;
            break;
        case 8:
            day = 212 + day;
            break;
        case 9:
            day = 243 + day;
            break;
        case 10:
            day = 273 + day;
            break;
        case 11:
            day = 304 + day;
            break;
        case 12:
            day = 334 + day;
            break;
        default:
            break;
    }
    return (day);
}

carrie@ubuntu:/debugging$

carrie@ubuntu:/debugging$ cat 3-print_remaining_days.c
#include <stdio.h>
#include "main.h"

/**
* print_remaining_days - takes a date and prints how many days are
* left in the year, taking leap years into account
* @month: month in number format
* @day: day of month
* @year: year
* Return: void
*/

void print_remaining_days(int month, int day, int year)
{
    if ((year % 4 == 0 || year % 400 == 0) && !(year % 100 == 0))
    {
        if (month >= 2 && day >= 60)
        {
            day++;
        }

        printf("Day of the year: %d\n", day);
        printf("Remaining days: %d\n", 366 - day);
    }
    else
    {
        if (month == 2 && day == 60)
        {
            printf("Invalid date: %02d/%02d/%04d\n", month, day - 31, year);
        }
        else
        {
            printf("Day of the year: %d\n", day);
            printf("Remaining days: %d\n", 365 - day);
        }
    }
}

carrie@ubuntu:/debugging$ 

carrie@ubuntu:/debugging$ gcc -Wall -Werror -Wextra -pedantic -std=gnu89 3-convert_day.c 3-print_remaining_days.c 3-main_a.c -o 3-main_a 
carrie@ubuntu:/debugging$ ./3-main_a
Date: 04/01/1997
Day of the year: 91
Remaining days: 274
carrie@ubuntu:/debugging$

Output looks good for 04/01/1997! Let’s make a new main file 3-main_b.c to try a case that is a leap year: 02/29/2000.

carrie@ubuntu:/debugging$ gcc -Wall -Werror -Wextra -pedantic -std=gnu89 3-convert_day.c 3-print_remaining_days.c 3-main_b.c -o 3-main_b 
carrie@ubuntu:/debugging$ ./3-main_b
Date: 02/29/2000
Invalid date: 02/29/2000
carrie@ubuntu:/debugging$

? That doesn’t seem right.

Fix the print_remaining_days() function so that the output works correctly for all dates and all leap years.

    Line count will not be checked for this task.
    You can assume that all test cases have valid months (i.e. the value of month will never be less than 1 or greater than 12) and valid days (i.e. the value of day will never be less than 1 or greater than 31).
    You can assume that all test cases have valid month/day combinations (i.e. there will never be a June 31st or November 31st, etc.), but not all month/day/year combinations are valid (i.e. February 29, 1991 or February 29, 2427).

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x03-debugging
    File: 3-print_remaining_days.c, main.h


0x04. C - More functions, more nested loops
C

    By: Julien Barbier
    Weight: 1
    Project over - took place from Jun 22, 2023 6:00 AM to Jun 23, 2023 6:00 AM
    An auto review will be launched at the deadline

In a nutshell…

    Auto QA review: 70.0/70 mandatory & 14.8/19 optional
    Altogether:  177.89%
        Mandatory: 100.0%
        Optional: 77.89%
        Calculation:  100.0% + (100.0% * 77.89%)  == 177.89%

Resources

Read or watch:

    Nested while loops
    C - Functions
    Learning to Program in C (Part 06) (stop at 14:00)
    What is the purpose of a function prototype?
    C - Header Files (stop before the “Once-Only Headers” paragraph)

Learning Objectives

At the end of this project, you are expected to be able to explain to anyone, without the help of Google:
General

    What are nested loops and how to use them
    What is a function and how do you use functions
    What is the difference between a declaration and a definition of a function
    What is a prototype
    Scope of variables
    What are the gcc flags -Wall -Werror -pedantic -Wextra -std=gnu89
    What are header files and how to to use them with #include

Copyright - Plagiarism

    You are tasked to come up with solutions for the tasks below yourself to meet with the above learning objectives.
    You will not be able to meet the objectives of this or any following project by copying and pasting someone else’s work.
    You are not allowed to publish any content of this project.
    Any form of plagiarism is strictly forbidden and will result in removal from the program.

Requirements
General

    Allowed editors: vi, vim, emacs
    All your files will be compiled on Ubuntu 20.04 LTS using gcc, using the options -Wall -Werror -Wextra -pedantic -std=gnu89
    All your files should end with a new line
    A README.md file, at the root of the folder of the project is mandatory
    Your code should use the Betty style. It will be checked using betty-style.pl and betty-doc.pl
    You are not allowed to use global variables
    No more than 5 functions per file
    You are not allowed to use the standard library. Any use of functions like printf, puts, etc… is forbidden
    You are allowed to use _putchar
    You don’t have to push _putchar.c, we will use our file. If you do it won’t be taken into account
    In the following examples, the main.c files are shown as examples. You can use them to test your functions, but you don’t have to push them to your repo (if you do we won’t take them into account). We will use our own main.c files at compilation. Our main.c files might be different from the one shown in the examples
    The prototypes of all your functions and the prototype of the function _putchar should be included in your header file called main.h
    Don’t forget to push your header file

More Info

You do not have to understand the call by reference (address), stack, static variables, recursions or arrays, yet.
Quiz questions
Great! You've completed the quiz successfully! Keep going! (Show quiz)
Tasks
0. isupper
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that checks for uppercase character.

    Prototype: int _isupper(int c);
    Returns 1 if c is uppercase
    Returns 0 otherwise

FYI: The standard library provides a similar function: isupper. Run man isupper to learn more.

julien@ubuntu:~/0x04$ cat 0-main.c
#include "main.h"
#include <stdio.h>

/**
 * main - check the code.
 *
 * Return: Always 0.
 */
int main(void)
{
    char c;

    c = 'A';
    printf("%c: %d\n", c, _isupper(c));
    c = 'a';
    printf("%c: %d\n", c, _isupper(c));
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 0-main.c 0-isupper.c -o 0-isuper
julien@ubuntu:~/0x04$ ./0-isuper 
A: 1
a: 0
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 0-isupper.c

1. isdigit
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that checks for a digit (0 through 9).

    Prototype: int _isdigit(int c);
    Returns 1 if c is a digit
    Returns 0 otherwise

FYI: The standard library provides a similar function: isdigit. Run man isdigit to learn more.

julien@ubuntu:~/0x04$ cat 1-main.c 
#include "main.h"
#include <stdio.h>

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    char c;

    c = '0';
    printf("%c: %d\n", c, _isdigit(c));
    c = 'a';
    printf("%c: %d\n", c, _isdigit(c));
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 1-main.c 1-isdigit.c -o 1-isdigit
julien@ubuntu:~/0x04$ ./1-isdigit 
0: 1
a: 0
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 1-isdigit.c

2. Collaboration is multiplication
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that multiplies two integers.

    Prototype: int mul(int a, int b);

julien@ubuntu:~/0x04$ cat 2-main.c
#include "main.h"
#include <stdio.h>

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    printf("%d\n", mul(98, 1024));
    printf("%d\n", mul(-402, 4096));
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 2-main.c 2-mul.c -o 2-mul
julien@ubuntu:~/0x04$ ./2-mul 
100352
-1646592
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 2-mul.c

3. The numbers speak for themselves
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that prints the numbers, from 0 to 9, followed by a new line.

    Prototype: void print_numbers(void);
    You can only use _putchar twice in your code

julien@ubuntu:~/0x04$ cat 3-main.c 
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_numbers();
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 3-main.c 3-print_numbers.c -o 3-print_numbers
julien@ubuntu:~/0x04$ ./3-print_numbers | cat -e
0123456789$
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 3-print_numbers.c

4. I believe in numbers and signs
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that prints the numbers, from 0 to 9, followed by a new line.

    Prototype: void print_most_numbers(void);
    Do not print 2 and 4
    You can only use _putchar twice in your code

julien@ubuntu:~/0x04$ cat 4-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_most_numbers();
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 4-main.c 4-print_most_numbers.c -o 4-print_most_numbers
julien@ubuntu:~/0x04$ ./4-print_most_numbers 
01356789
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 4-print_most_numbers.c

5. Numbers constitute the only universal language
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that prints 10 times the numbers, from 0 to 14, followed by a new line.

    Prototype: void more_numbers(void);
    You can only use _putchar three times in your code

julien@ubuntu:~/0x04$ cat 5-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    more_numbers();
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 5-main.c 5-more_numbers.c -o 5-more_numbers
julien@ubuntu:~/0x04$ ./5-more_numbers 
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
01234567891011121314
julien@ubuntu:~/0x04

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 5-more_numbers.c

6. The shortest distance between two points is a straight line
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that draws a straight line in the terminal.

    Prototype: void print_line(int n);
    You can only use _putchar function to print
    Where n is the number of times the character _ should be printed
    The line should end with a \n
    If n is 0 or less, the function should only print \n

julien@ubuntu:~/0x04$ cat 6-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_line(0);
    print_line(2);
    print_line(10);
    print_line(-4);
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 6-main.c 6-print_line.c -o 6-lines
julien@ubuntu:~/0x04$ ./6-lines | cat -e
$
__$
__________$
$
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 6-print_line.c

7. I feel like I am diagonally parked in a parallel universe
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that draws a diagonal line on the terminal.

    Prototype: void print_diagonal(int n);
    You can only use _putchar function to print
    Where n is the number of times the character \ should be printed
    The diagonal should end with a \n
    If n is 0 or less, the function should only print a \n

julien@ubuntu:~/0x04$ cat 7-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_diagonal(0);
    print_diagonal(2);
    print_diagonal(10);
    print_diagonal(-4);
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 7-main.c 7-print_diagonal.c -o 7-diagonals
julien@ubuntu:~/0x04$ ./7-diagonals | cat -e
$
\$
 \$
\$
 \$
  \$
   \$
    \$
     \$
      \$
       \$
        \$
         \$
$
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 7-print_diagonal.c

8. You are so much sunshine in every square inch
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that prints a square, followed by a new line.

    Prototype: void print_square(int size);
    You can only use _putchar function to print
    Where size is the size of the square
    If size is 0 or less, the function should print only a new line
    Use the character # to print the square

julien@ubuntu:~/0x04$ cat 8-main.c 
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_square(2);
    print_square(10);
    print_square(0);
    return (0);
}

julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 8-main.c 8-print_square.c -o 8-squares
julien@ubuntu:~/0x04$ ./8-squares 
##
##
##########
##########
##########
##########
##########
##########
##########
##########
##########
##########

julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 8-print_square.c

9. Fizz-Buzz
mandatory
Score: 100.0% (Checks completed: 100.0%)

The “Fizz-Buzz test” is an interview question designed to help filter out the 99.5% of programming job candidates who can’t seem to program their way out of a wet paper bag.

Write a program that prints the numbers from 1 to 100, followed by a new line. But for multiples of three print Fizz instead of the number and for the multiples of five print Buzz. For numbers which are multiples of both three and five print FizzBuzz.

    Each number or word should be separated by a space
    You are allowed to use the standard library

julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 9-fizz_buzz.c -o 9-fizz_buzz
julien@ubuntu:~/0x04$ ./9-fizz_buzz 
1 2 Fizz 4 Buzz Fizz 7 8 Fizz Buzz 11 Fizz 13 14 FizzBuzz 16 17 Fizz 19 Buzz Fizz 22 23 Fizz Buzz 26 Fizz 28 29 FizzBuzz 31 32 Fizz 34 Buzz Fizz 37 38 Fizz Buzz 41 Fizz 43 44 FizzBuzz 46 47 Fizz 49 Buzz Fizz 52 53 Fizz Buzz 56 Fizz 58 59 FizzBuzz 61 62 Fizz 64 Buzz Fizz 67 68 Fizz Buzz 71 Fizz 73 74 FizzBuzz 76 77 Fizz 79 Buzz Fizz 82 83 Fizz Buzz 86 Fizz 88 89 FizzBuzz 91 92 Fizz 94 Buzz Fizz 97 98 Fizz Buzz
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 9-fizz_buzz.c

10. Triangles
mandatory
Score: 100.0% (Checks completed: 100.0%)

Write a function that prints a triangle, followed by a new line.

    Prototype: void print_triangle(int size);
    You can only use _putchar function to print
    Where size is the size of the triangle
    If size is 0 or less, the function should print only a new line
    Use the character # to print the triangle

julien@ubuntu:~/0x04$ cat 10-main.c 
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_triangle(2);
    print_triangle(10);
    print_triangle(1);
    print_triangle(0);
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 10-main.c 10-print_triangle.c -o 10-triangles
julien@ubuntu:~/0x04$ ./10-triangles 
 #
##
         #
        ##
       ###
      ####
     #####
    ######
   #######
  ########
 #########
##########
#

julien@ubuntu:~/0x04$ ./10-triangles | tr ' ' . | cat -e
.#$
##$
.........#$
........##$
.......###$
......####$
.....#####$
....######$
...#######$
..########$
.#########$
##########$
#$
$
julien@ubuntu:~/0x04$

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 10-print_triangle.c

11. The problem of distinguishing prime numbers from composite numbers and of resolving the latter into their prime factors is known to be one of the most important and useful in arithmetic
#advanced
Score: 100.0% (Checks completed: 100.0%)

The prime factors of 1231952 are 2, 2, 2, 2, 37 and 2081.

Write a program that finds and prints the largest prime factor of the number 612852475143, followed by a new line.

    You are allowed to use the standard library
    Your program will be compiled with this command: gcc -Wall -pedantic -Werror -Wextra -std=gnu89 100-prime_factor.c -o 100-prime_factor -lm

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 100-prime_factor.c

12. Numbers have life; they're not just symbols on paper
#advanced
Score: 65.0% (Checks completed: 100.0%)

Write a function that prints an integer.

    Prototype: void print_number(int n);
    You can only use _putchar function to print
    You are not allowed to use long
    You are not allowed to use arrays or pointers
    You are not allowed to hard-code special values

julien@ubuntu:~/0x04$ cat 101-main.c
#include "main.h"

/**
 * main - check the code
 *
 * Return: Always 0.
 */
int main(void)
{
    print_number(98);
    _putchar('\n');
    print_number(402);
    _putchar('\n');
    print_number(1024);
    _putchar('\n');
    print_number(0);
    _putchar('\n');
    print_number(-98);
    _putchar('\n');
    return (0);
}
julien@ubuntu:~/0x04$ gcc -Wall -pedantic -Werror -Wextra -std=gnu89 _putchar.c 101-main.c 101-print_number.c -o 101-print_numbers
julien@ubuntu:~/0x04$ ./101-print_numbers 
98
402
1024
0
-98
julien@ubuntu:~/0x04$ 

Repo:

    GitHub repository: alx-low_level_programming
    Directory: 0x04-more_functions_nested_loops
    File: 101-print_number.c



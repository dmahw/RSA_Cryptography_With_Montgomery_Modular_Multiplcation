RSA Cryptography with Montgomery Modular Multiplication
=======================================================

## Authors
* Adam Leung
* David Mah

## Description
This project was develop to understand software optimization techniques and how code translate to assembly language. RSA Cryptography without using montgomery modular multiplcation can be extremely expensive in resources, thus with montgomery modular multiplcation greatly reduces the cost of encrypting and decryption data. In addition many software optimization techniques has been implemented to maximize its performance.

To view the full software development history of this project, please contact the author.

## Notes:
Inside this zip file contains the project report, optimized c code, optimized assembly code, and associated .mdj files for the StarUML diagrams. If you do not have a program to open the associated .mdj files, an image has been provided of each of the diagrams used for this project.

## Instructions:

To run the optimized C code:
1. Compile with `gcc rsaCryptography.c -lm`
2. Run with `./a.out`
3. Output will print the original, encrypted, and decrypted version of the predefined input

To run the optimized assembly code:
1. Compile with `gcc rsaCryptography.s -o assembly.out`
2. Run with `./assembly.out`
3. Output will print the original, encrypted, and decrypted version of the predefined input

//
//  main.c
//  Addresses
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{


    
/*  Challenge: how much memory? Write a program that shows you how much memory a float consumes.
     
    Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1740-1741). Pearson Education. Kindle Edition.
   
     
     
    Challenge: how much range? On a Mac, a short is a 2-byte integer, and one bit is used to hold the sign (positive or negative). What is the smallest number that a short can store? What is the largest? An unsigned short only holds non-negative numbers. What is the largest number that an unsigned short can store?
     
    Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1742-1748). Pearson Education. Kindle Edition.
 */
    
    printf("a float is %zu bytes\n", sizeof(float));
    printf("a short is %zu bytes\n", sizeof(short));
    
    //1 byte = 8 bits
    int bits = 8;
    int shortBits = sizeof(short)*bits;
    int signBit = 1;
    double signedShort = pow(2,(shortBits - signBit));
    double unsignedShort = pow(2,shortBits);
    printf("range of signed short is from %.f to %.f\n",-signedShort,signedShort);
    printf("largest unsigned short is %.f\n",unsignedShort);
    
   
    
    
    return 0;
}


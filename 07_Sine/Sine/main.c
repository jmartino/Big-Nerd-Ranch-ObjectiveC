//
//  main.c
//  Sine
//
//  Created by jm on 12/21/13.
//  Copyright (c) 2013 jm. All rights reserved.
//

#include <stdio.h>
#include <math.h>

int main(int argc, const char * argv[])
{

   /* Challenge Use the math library! Add code to main.c that displays the sine of 1 radian. Show the number rounded to three decimal points. It should be 0.841. The sine function is declared like this: double sin( double x);
    
    Hillegass, Aaron (2013-11-20). Objective-C Programming: The Big Nerd Ranch Guide (2nd Edition) (Big Nerd Ranch Guides) (Kindle Locations 1432-1436). Pearson Education. Kindle Edition.
    */
    printf("the sine of 1 radian rounded to three decimal points is %.3f\n",sin(1));
    return 0;
}

